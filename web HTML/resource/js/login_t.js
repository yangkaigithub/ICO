(function () {

    var Login_t = function () {
        this.login_t_div = '<div id="login_t">' +
            '<form action="">' +
            '<div>' +
            '<div class="input_100">' +
            '<span class="iconfont icon-yonghu"></span>' +
            '<input type="tel" id="tel" placeholder="请输入您的手机号">' +
            '<div class="ts">123</div>' +
            '</div>' +
            '</div> ' +
            '<div>' +
            '<div class="input_100">' +
            '<span class="iconfont icon-mima"></span>' +
            '<input type="password" id="password" placeholder="请输入密码"> ' +
            '<div class="ts"></div> ' +
            '</div>' +
            '</div>' +
            '<div class="zc"> ' +
            '<a href="">忘记密码</a> ' +
            '<p>没有账号？<a href="">立即注册</a></p> ' +
            '</div> ' +
            '<input type="submit" id="login_sub" value="登 录">' +
            '</form>' +
            '<div class="dsf">' +
            '<div>' +
            '<i></i>' +
            '<p>使用第三方账号登录</p>' +
            '<i></i>' +
            '</div>' +
            '<a href=""><img src="resource/img/wx.png" alt=""></a>' +
            '<a href=""><img src="resource/img/qq.png" alt=""></a>' +
            '<a href=""><img src="resource/img/wb.png" alt=""></a>' +
            '</div>' +
            '</div>'
    }

    Login_t.prototype.add = function () {

        $("body").append(this.login_t_div)
    }
    Login_t.prototype.re = function () {
        $("body").remove(this.login_t_div)
    }

    window.login_t=Login_t;
})()