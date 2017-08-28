<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>注册用户</title>
    <meta name="description" content="Star Chain">
    <%@include file="/header.html" %>
    <link rel="stylesheet" href="resource/css/base.css">
    <link rel="stylesheet" href="resource/font/iconfont.css">
    <script src="resource/js/jquery-3.2.1.min.js"></script>
    <script src="resource/js/common/formValid.js"></script>
    <script>
        function main() {
            var formValid = new FormValid();
            var formValidConfig = {
                formId: "form0",
                rules: [
                    {
                        "userId": {
                            //配置多个验证器
                            "email": function (validResult) {
                                //自定义验证结果的处理
                                $("#userIdSpan").html(validResult + "");
                            }
                        },
                        "accountMail": {
                            "email": {"accountMailSpan": formValid.CONSTANT.DEFAULT_MESSAGE}
                        }
                    }
                ],
                onSubmitHandler: function () {
                    var result = formValid.validate(formValid.CONSTANT.ALL);// 可选值还有FormValid.CONSTANT.ORDER，默认就是FormValid.CONSTANT.ALL
                    if (result) {
                        alert("提交");
                    } else {
                        alert("不提交");
                    }
                    alert(formValid.formatData());
                    return false;
                }
            };
            formValid.initForm(formValidConfig);// 初始化表单配置

            var formValid1 = new FormValid();
            var formValidConfig1 = {
                formId: "form1",
                rules: [
                    {
                        "userId1": {
                            //配置多个验证器
                            "email": function (validResult) {
                                //自定义验证结果的处理
                                $("#userIdSpan1").html(validResult + "");
                            }
                        },
                        "accountMail1": {
                            "email": {"accountMailSpan1": formValid1.CONSTANT.DEFAULT_MESSAGE}
                        }
                    }
                ],
                onSubmitHandler: function () {
                    var result = formValid1.validate(formValid1.CONSTANT.ORDER);// 可选值还有FormValid.CONSTANT.ORDER，默认就是FormValid.CONSTANT.ALL
                    if (result) {
                        alert("提交1");
                    } else {
                        alert("不提交1");
                    }
                    alert(formValid1.formatData());
                    return false;
                }
            };
            formValid1.initForm(formValidConfig1);// 初始化表单配置
        }

    </script>
</head>
<body onload="main()">
<form id="form0" method="post" action="/usermanager/userLogin.action">
    <input type="text" name="userId" id="userId"/><br/><span id="userIdSpan">1</span><br/>
    <input type="text" name="accountMail" id="accountMail"/><br/><span id="accountMailSpan">2</span><br/>
    <input type="submit"/>
</form>

<form id="form1" method="post" action="/usermanager/userLogin.action">
    <input type="text" name="userId" id="userId1"/><br/><span id="userIdSpan1">1</span><br/>
    <input type="text" name="accountMail" id="accountMail1"/><br/><span id="accountMailSpan1">2</span><br/>
    <input type="submit"/>
</form>

<form id="form2">
    <input type="text" name="userId" id="test1"/><span id="test1_"></span><br/>
    <input type="text" name="userId" id="test2"/><span id="test2_"></span><br/>
    <input type="text" name="userId" id="test3"/><span id="test3_"></span><br/>
    <input type="text" name="userId" id="test4"/><span id="test4_"></span><br/>
    <input type="text" name="userId" id="test5"/><span id="test5_"></span><br/>
    <input type="text" name="userId" id="test6"/><span id="test6_"></span><br/>
    <input type="text" name="userId" id="test7"/><span id="test7_"></span><br/>
    <input type="text" name="userId" id="test8"/><span id="test8_"></span><br/>
    <input type="text" name="userId" id="test9"/><span id="test9_"></span><br/>
    <input type="text" name="userId" id="test10"/><span id="test10_"></span><br/>
    <input type="text" name="userId" id="test11"/><span id="test11_"></span><br/>
    <input type="text" name="userId" id="test12"/><span id="test12_"></span><br/>
    <input type="text" name="userId" id="test13"/><span id="test13_"></span><br/>
    <input type="text" name="userId" id="test14"/><span id="test14_"></span><br/>
    <input type="text" name="userId" id="test15"/><span id="test15_"></span><br/>
    <input type="submit"/>
</form>

</body>
<script>
    var myFormValid = new FormValid();
    myFormValid.extend("email",function (value) {
        return /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(value);
    },"填入正确的邮箱地址");

    var formValidConfig = {
        formId: "form2",
        rules: [
            {
                "test1": {
                    "required": {"test1_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "email": {"test1_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test2": {
                    "required": {"test2_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "phone": {"test2_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test3": {
                    "required": {"test3_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "url": {"test3_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test4": {
                    "required": {"test4_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "number": {"test4_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test5": {
                    "required": {"test5_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "digits": {"test5_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test6": {
                    "required": {"test6_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "creditcard": {"test6_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test7": {
                    "required": {"test7_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "equalTo(test6)": {"test7_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test8": {
                    "required": {"test8_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "range(1,5)": {"test8_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test9": {
                    "required": {"test9_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "max(5)": {"test9_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test10": {
                    "required": {"test10_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "min(2)": {"test10_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test11": {
                    "required": {"test11_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "maxlength(5)": {"test11_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test12": {
                    "required": {"test12_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "minlength(2)": {"test12_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test13": {
                    "required": {"test13_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "rangelength(1,5)": {"test13_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                },
                "test14": {
                    "required": {"test14_": myFormValid.CONSTANT.DEFAULT_MESSAGE},
                    "idcard": {"test14_": myFormValid.CONSTANT.DEFAULT_MESSAGE}
                }
            }
        ],
        onSubmitHandler: function () {
            var result = myFormValid.validate(myFormValid.CONSTANT.ALL);// 可选值还有FormValid.CONSTANT.ORDER，默认就是FormValid.CONSTANT.ALL
            if (result) {
                alert("提交");
            } else {
                alert("不提交");
            }
            alert(myFormValid.formatData());
            return false;
        }
    };
    myFormValid.initForm(formValidConfig);// 初始化表单配置
</script>
</html>
