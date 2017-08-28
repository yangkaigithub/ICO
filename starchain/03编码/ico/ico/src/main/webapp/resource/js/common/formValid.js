/**
 * 表单验证器
 * Created by wanming on 2017/8/15.
 */
var FormValid = function () {
        this.CONSTANT = {
            ALL: "all_xxxxxxxxx",
            ORDER: "order_xxxxxxxxxx",
            DEFAULT_MESSAGE: "defaultMessage_xxxxxxxxxxx"
        };

        /* 存放所有配置的字段ID */
        this.FormValid_IDS = [];

        /*表单验证结果*/
        this.validate_result;

        /*初始化表单*/
        this.initForm = function (formValidConfig) {
            var formId = formValidConfig.formId;
            // 解析配置，循环所有字段
            for (var i = 0; i < formValidConfig.rules.length; i++) {
                var rule = formValidConfig.rules[i];
                // 解析一个rule,通过$.each()遍历json的key和value
                for (var id in rule) {
                    this.FormValid_IDS.push(id);
                    // 遍历配置的验证器
                    var validations = this.parseValidations(rule[id]);
                    // 元素添加onblur事件
                    var thisObj = this;
                    $("#" + id).blur([id, validations, thisObj], function (data) {
                            var id = data.data[0];
                            var value = $("#" + id).val();
                            var validations = data.data[1];
                            for (var j = 0; j < validations.length; j++) {
                                var result = validations[j].validate(value, validations[j].param);
                                validations[j].showMessage(result, validations[j].message);
                                if (result == false) {
                                    thisObj.validate_result = false;
                                    break;
                                }
                            }
                        }
                    )
                }
            }
            //添加onSubmit事件
            if (formValidConfig.onSubmitHandler != undefined) {
                $("#" + formId).submit(function () {
                    return formValidConfig.onSubmitHandler();
                });
            } else {
                FormValid.validate();
            }
        };

        /*
         * 解析字段配置的验证器
         * @return 解析器函数数组
         * */
        this.parseValidations = function (validations) {
            var result = [];//解析的结果数组
            for (var validate in  validations) {// key为内置验证方法名
                var fn = {
                    validate: function () {
                    },
                    param: [],
                    showMessage: function () {
                    },
                    message: {id: '', message: ''}
                };
                if (validate.indexOf("(") != -1) {
                    var param = validate.substring(validate.indexOf("(") + 1, validate.length - 1);
                    fn.param = param.split(",");
                    fn.validate = this.validFN[validate.substring(0, validate.indexOf("("))];
                } else {
                    fn.validate = this.validFN[validate];
                }
                if (typeof validations[validate] == "object") { // 解析内置的消息显示器
                    fn.showMessage = this.defaultShowMethod;
                    for (var id in validations[validate]) {
                        message = validations[validate][id];
                        if (message == this.CONSTANT.DEFAULT_MESSAGE) {// 如果自定义消息内容为空，查找对应的默认消息内容
                            if (validate.indexOf("(") != -1) {
                                message = this.validMessage[validate.substring(0, validate.indexOf("("))];
                            } else {
                                message = this.validMessage[validate];
                            }
                        }
                        if (message != undefined && fn.param.length > 0) {
                            for (var k = 0; k < fn.param.length; k++) {
                                message = message.replace("${" + k + "}", fn.param[k]);
                            }
                        }
                        fn.message = {id: id, message: message};
                        var message = validations[validate][id]; // 自定义的消息内容
                    }
                } else if (typeof validations[validate] == "function") { // 使用自定义的消息显示器
                    fn.showMessage = validations[validate];
                }
                result.push(fn);
            }
            return result;
        };

        /*
         * 主动调用验证方法对表单进行全局验证
         * @param type 验证方式：ALL表示验证所有，ORDER表示顺序验证，只要验证不通过，就终止验证
         * */
        this.validate = function (type) {
            this.validate_result = true;
            if (type == this.CONSTANT.ORDER) {
                for (var i = 0; i < this.FormValid_IDS.length; i++) {
                    $("#" + this.FormValid_IDS[i]).blur();
                    if (this.validate_result == false) {
                        break;
                    }
                }
            } else {
                for (var i = 0; i < this.FormValid_IDS.length; i++) {
                    $("#" + this.FormValid_IDS[i]).blur();
                }
            }
            return this.validate_result;
        };

        /*
         * 拼接表单参数列表
         */
        this.formatData = function () {
            var data = "";
            for (var i = 0; i < this.FormValid_IDS.length; i++) {
                var value = $("#" + this.FormValid_IDS[i]).val();
                var name = $("#" + this.FormValid_IDS[i]).attr("name");
                data += (name + "=" + value);
                if (i < this.FormValid_IDS.length - 1) {
                    data += "&";
                }
            }
            return data;
        };

        /**
         * 验证函数
         */
        this.validFN = {
            /*不能为空验证*/
            required: function (value) {
                if (value == undefined || value == null || value == "") {
                    return false;
                }
                return true;
            },
            /*邮箱验证*/
            // email: function (value) {
            //     return /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(value);
            // },
            /*手机号*/
            phone: function (value) {
                return /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value);
            },
            /*链接*/
            url: function (value) {
                return /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(value);
            },
            /*有效数值验证*/
            number: function (value) {
                return /^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(value);
            },
            /*数字字符验证*/
            digits: function (value) {
                return /^\d+$/.test(value);
            },
            /*信用卡验证*/
            creditcard: function (value) {
                if (/[^0-9-]+/.test(value))
                    return false;
                var nCheck = 0,
                    nDigit = 0,
                    bEven = false;
                value = value.replace(/\D/g, "");
                for (n = value.length - 1; n >= 0; n--) {
                    var cDigit = value.charAt(n);
                    var nDigit = parseInt(cDigit, 10);
                    if (bEven) {
                        if ((nDigit *= 2) > 9)
                            nDigit -= 9;
                    }
                    nCheck += nDigit;
                    bEven = !bEven;
                }
                return (nCheck % 10) == 0;
            },
            /*元素等值验证*/
            equalTo: function (value, param) {
                return (value == $("#" + param[0]).val());
            },
            /*值区间*/
            range: function (value, param) {
                console.log(value >= param[0] && value <= param[1]);
                return ( value >= param[0] && value <= param[1] );
            },
            /*最大值*/
            max: function (value, param) {
                return value <= param[0];
            },
            /*最小值*/
            min: function (value, param) {
                return value >= param[0];
            },
            /*最大长度*/
            maxlength: function (value, param) {
                return ($.trim(value)).length <= param[0];
            },
            /*最小长度*/
            minlength: function (value, param) {
                return ($.trim(value)).length >= param[0];
            },
            /*长度区间*/
            rangelength: function (value, param) {
                var length = ($.trim(value)).length;
                return ( length >= param[0] && length <= param[1] );
            },
            /*身份证验证*/
            idcard: function (value) {
                var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1];// 加权因子;
                var ValideCode = [1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2];// 身份证验证位值，10代表X;
                if (value.length == 15) {
                    return isValidityBrithBy15IdCard(value);
                } else if (value.length == 18) {
                    var a_idCard = value.split("");// 得到身份证数组
                    if (isValidityBrithBy18IdCard(value) && isTrueValidateCodeBy18IdCard(a_idCard)) {
                        return true;
                    }
                    return false;
                }
                return false;

                function isTrueValidateCodeBy18IdCard(a_idCard) {
                    var sum = 0; // 声明加权求和变量
                    if (a_idCard[17].toLowerCase() == 'x') {
                        a_idCard[17] = 10;// 将最后位为x的验证码替换为10方便后续操作
                    }
                    for (var i = 0; i < 17; i++) {
                        sum += Wi[i] * a_idCard[i];// 加权求和
                    }
                    valCodePosition = sum % 11;// 得到验证码所位置
                    if (a_idCard[17] == ValideCode[valCodePosition]) {
                        return true;
                    }
                    return false;
                }

                function isValidityBrithBy18IdCard(idCard18) {
                    var year = idCard18.substring(6, 10);
                    var month = idCard18.substring(10, 12);
                    var day = idCard18.substring(12, 14);
                    var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
                    // 这里用getFullYear()获取年份，避免千年虫问题
                    if (temp_date.getFullYear() != parseFloat(year) || temp_date.getMonth() != parseFloat(month) - 1 || temp_date.getDate() != parseFloat(day)) {
                        return false;
                    }
                    return true;
                }

                function isValidityBrithBy15IdCard(idCard15) {
                    var year = idCard15.substring(6, 8);
                    var month = idCard15.substring(8, 10);
                    var day = idCard15.substring(10, 12);
                    var temp_date = new Date(year, parseFloat(month) - 1, parseFloat(day));
                    // 对于老身份证中的你年龄则不需考虑千年虫问题而使用getYear()方法
                    if (temp_date.getYear() != parseFloat(year) || temp_date.getMonth() != parseFloat(month) - 1 || temp_date.getDate() != parseFloat(day)) {
                        return false;
                    }
                    return true;
                }
            }
        };
        /*
         * 验证函数对应的默认提示信息
         * */
        this.validMessage = {
            required: "必填项",
            // email: "填入正确的邮箱地址",
            phone: "输入正确的手机号",
            url: "输入正确格式的网址",
            number: "输入有效数值",
            digits: "内容只允许数字",
            creditcard: "输入合法的银行卡号",
            equalTo: "输入不同，请重新确认",
            range: "输入值必须介于 ${0} 和 ${1} 之间",
            max: "输入值不能大于${0}",
            min: "输入值不能小于${0}",
            maxlength: "输入长度最多是${0}",
            minlength: "输入长度最小是${0}",
            rangelength: "输入长度必须介于${0}和 ${0} 之间",
            idcard: "请输入正确的身份证号码"
        };

        /*
         * 默认的显示器
         * @param result 验证器返回的结果
         * @param message 需要显示消息内容，格式为json: {id:'',message:''}
         * */
        this.defaultShowMethod = function (result, message) {
            if (result) {
                $("#" + message.id).html("");
            } else {
                $("#" + message.id).html(message.message + "");
            }
        };

        /*
        *扩展验证器
        * @param name   验证器别名
        * @param fn     验证器方法
        * @param message 默认提示信息
        * */
        this.extend = function (name,fn,message) {
            this.validFN[name]=fn;
            this.validMessage[name]=message;
        };
    }
;


