(function () {

//tel
    var tel=$("#tel")
    function checkMobile(str) {
        var te = /^1\d{10}$/;
        if (te.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    //password
    var password=$("#password")
    function checkPassword(str) {
        var ps = /^[a-zA-Z0-9]+$/;
        if (ps.test(str)) {
            return true;
        } else {
            return false;
        }
    }

    tel.blur(function (e) {
        if(!tel.val()){
            e.preventDefault()
            tel.next(".ts").text("手机号码不能为空")
            tel.next(".ts").fadeIn()
            return
        }else {

            if(!checkMobile(tel.val())){
                e.preventDefault()
                tel.next(".ts").text("请输入正确的手机号码")
                tel.next(".ts").fadeIn()
                return
            }else {
                tel.next(".ts").fadeOut()
            }


        }
    })

    password.blur(function (e) {
        if(!password.val()){
            e.preventDefault()
            password.next(".ts").text("密码不能为空")
            password.next(".ts").fadeIn()
            return
        }else {
            if(!checkPassword(password.val())){
                e.preventDefault()
                password.next(".ts").text("请输入正确的密码")
                password.next(".ts").fadeIn()
                return
            }else {
                password.next(".ts").fadeOut()
            }
        }
    })


    $("#login_sub").click(function (e) {
        e.preventDefault()
        // $("form").find(".ts").animate({"right":"-1000"})
        //tel
        if(!tel.val()){
            e.preventDefault()
            tel.next(".ts").text("手机号码不能为空")
            tel.next(".ts").fadeIn()
            return
        }else {

            if(!checkMobile(tel.val())){
                e.preventDefault()
                tel.next(".ts").text("请输入正确的手机号码")
                tel.next(".ts").fadeIn()
                return
            }else {
                tel.next(".ts").fadeOut()
            }


        }

        //password
        if(!password.val()){
            e.preventDefault()
            password.next(".ts").text("密码不能为空")
            password.next(".ts").fadeIn()
            return
        }else {
            if(!checkPassword(password.val())){
                e.preventDefault()
                password.next(".ts").text("请输入正确的密码")
                password.next(".ts").fadeIn()
                return
            }else {
                password.next(".ts").fadeOut()
            }
        }

        location.href="../../member.html"
    })

})()