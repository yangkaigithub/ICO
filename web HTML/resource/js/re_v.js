(function () {

//tel
    var tel = $("#tel")

    function checkMobile(str) {
        var te = /^1\d{10}$/;
        if (te.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    //password
    var password = $("#password");

    function checkPassword(str) {

        var ps = /^(?![^a-zA-Z]+$)(?!\D+$)/;

        if (ps.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    //email
    var email = $("#email");

    function checkemail(str) {

        var em = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;

        if (em.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    tel.blur(function (e) {
        if (!tel.val()) {
            e.preventDefault()
            tel.next(".ts").text("手机号码不能为空")
            tel.next(".ts").fadeIn()
            return
        } else {
            if (!checkMobile(tel.val())) {
                e.preventDefault()
                tel.next(".ts").text("请输入正确的手机号码")
                tel.next(".ts").fadeIn()
                return
            } else {
                tel.next(".ts").fadeOut()
            }


        }
    })

    password.blur(function (e) {
        if (!password.val()) {
            e.preventDefault()
            password.next(".ts").text("密码不能为空")
            password.next(".ts").fadeIn()
            return
        } else {
            if (!checkPassword(password.val()) || password.val().length < 8) {
                e.preventDefault()
                password.next(".ts").text("密码为8位以上英文数字组合")
                password.next(".ts").fadeIn()
                return
            } else {
                password.next(".ts").fadeOut()
            }
        }
    })

    $("#confirm_password").blur(function (e) {
        if ($("#confirm_password").val() != password.val()) {
            e.preventDefault()
            $("#confirm_password").next(".ts").text("两次密码不一致")
            $("#confirm_password").next(".ts").fadeIn()
            return
        } else {
            $("#confirm_password").next(".ts").fadeOut()
        }
    })

    email.blur(function (e) {
        if (!email.val()) {
            e.preventDefault()
            email.next(".ts").text("邮箱不能为空")
            email.next(".ts").fadeIn()
            return
        } else {
            if (!checkemail(email.val()) || email.val().length < 8) {
                e.preventDefault()
                email.next(".ts").text("请输入正确的邮箱")
                email.next(".ts").fadeIn()
                return
            } else {
                email.next(".ts").fadeOut()
            }
        }
    })
    $("#imgV").blur(function (e) {
        if (!$("#imgV").val()) {
            e.preventDefault()
            $("#imgV").next(".ts").text("验证码不能为空")
            $("#imgV").next(".ts").fadeIn()
            return
        } else {
            $("#imgV").next(".ts").fadeOut()
        }
    })

    $("#messageV").blur(function (e) {
        if (!$("#messageV").val()) {
            e.preventDefault()
            $("#messageV").next(".ts").text("验证码不能为空")
            $("#messageV").next(".ts").fadeIn()
            return
        } else {
            $("#messageV").next(".ts").fadeOut()
        }
    })


    $("#login_sub").click(function (e) {
        e.preventDefault()
        // $(".ts").animate({"right": "-1000 "})
        //tel
        if (!tel.val()) {
            e.preventDefault()
            tel.next(".ts").text("手机号码不能为空")
            tel.next(".ts").fadeIn()
            return
        } else {
            if (!checkMobile(tel.val())) {
                e.preventDefault()
                tel.next(".ts").text("请输入正确的手机号码")
                tel.next(".ts").fadeIn()
                return
            } else {
                tel.next(".ts").fadeOut()
            }


        }

        //password
        if (!password.val()) {
            e.preventDefault()
            password.next(".ts").text("密码不能为空")
            password.next(".ts").fadeIn()
            return
        } else {
            if (!checkPassword(password.val()) || password.val().length < 8) {
                e.preventDefault()
                password.next(".ts").text("密码为8位以上英文数字组合")
                password.next(".ts").fadeIn()
                return
            } else {
                password.next(".ts").fadeOut()
            }
        }

        if ($("#confirm_password").val() != password.val()) {
            e.preventDefault()
            $("#confirm_password").next(".ts").text("两次密码不一致")
            $("#confirm_password").next(".ts").fadeIn()
            return
        } else {
            $("#confirm_password").next(".ts").fadeOut()
        }

        //email
        if (!email.val()) {
            e.preventDefault()
            email.next(".ts").text("邮箱不能为空")
            email.next(".ts").fadeIn()
            return
        } else {
            if (!checkemail(email.val()) || email.val().length < 8) {
                e.preventDefault()
                email.next(".ts").text("请输入正确的邮箱")
                email.next(".ts").fadeIn()
                return
            } else {
                email.next(".ts").fadeOut()
            }
        }


        //    img
        if (!$("#imgV").val()) {
            e.preventDefault()
            $("#imgV").next(".ts").text("验证码不能为空")
            $("#imgV").next(".ts").fadeIn()
            return
        } else {
            $("#imgV").next(".ts").fadeOut()
        }
//    message
        if (!$("#messageV").val()) {
            e.preventDefault()
            $("#messageV").next(".ts").text("验证码不能为空")
            $("#messageV").next(".ts").fadeIn()
            return
        } else {
            $("#messageV").next(".ts").fadeOut()
        }


        location.href="../../login.html"
    })


})()