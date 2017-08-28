<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>注册用户</title>
    <meta name="description" content="Star Chain">
    <%@include file="/header.html" %>

    <link rel="stylesheet" href="resource/css/base.css">
    <link rel="stylesheet" href="resource/css/style.css">
    <link rel="stylesheet" href="resource/font/iconfont.css">
    <script src="resource/js/jquery-3.2.1.min.js"></script>

</head>
<body>

<div id="header_login">
    <div class="header">
        <a id="logo" href="/">
            <img src="resource/img/f_logo.png" alt="">
        </a>
        <ul>
            <li><a href="../../../index.jsp">首页 <i></i></a></li>
            <li><a href="">ICO中<i></i></a></li>
            <li><a href="">ICO预热<i></i></a></li>
            <li><a href="">ICO项目库<i></i></a></li>
            <li><a href="">交易中心<i></i></a></li>
            <li><a href="../information_disclosure.html">信息披露<i></i></a></li>
            <li><a href="">我要ICO<i></i></a></li>
        </ul>

        <div id="loginAndR">
            <a href="../login.html" style="margin-right: 10px;">登录</a>
            <a href="registration.jsp" style="border: 1px solid #fff;">注册</a>
        </div>
    </div>
</div>


<div id="login_main">
    <img src="resource/img/login_bg.jpg" class="login_bg" alt="">
    <div id="login_left">
        <img src="resource/img/login_bg_logo.png" class="login_bg_logo" alt="">
        <div>
            <h1><img src="resource/img/login_h1.png" alt=""></h1>
            <p>
                运用区块链技术，颠覆传统耗时耗力的艺人培养模式<br>
                经济公司委托艺人成长，平台搜集投资人eth并发代币<br>
                粉丝分享艺人成长收益，享受艺人产品与服务，实现代币二级流转
            </p>
        </div>

    </div>
    <div id="login_right">
        <h2>会员注册</h2>
        <form action="">
            <div>
                <div class="input_100">
                    <span class="iconfont icon-yonghu"></span>
                    <input type="tel" id="tel" placeholder="请输入您的手机号">
                    <div class="ts"></div>
                </div>

            </div>
            <div>

                <div class="input_100">
                    <span class="iconfont icon-mima"></span>
                    <input type="password" id="password" placeholder="请输入密码，至少8位以上英文数字组合">
                    <div class="ts"></div>
                </div>
            </div>
            <div>
                <div class="input_100">
                    <span class="iconfont icon-mima"></span>
                    <input type="password" id="confirm_password" placeholder="请输入再次输入密码">
                    <div class="ts"></div>
                </div>
            </div>
            <div>
                <div class="input_100">
                    <span class="iconfont icon-mima"></span>
                    <input type="email" id="email" placeholder="请输入您的邮箱">
                    <div class="ts"></div>
                </div>
            </div>
            <div>

                <div class="input_70">
                    <span class="iconfont icon-yanzheng"></span>
                    <input type="text" id="imgV" placeholder="请输入图形验证码">
                    <div class="ts"></div>
                </div>
                <img src="resource/img/yzm.png" alt="">
            </div>
            <div>

                <div class="input_70">
                    <span class="iconfont icon-yanzheng"></span>
                    <input type="text" id="messageV" placeholder="请输入短信验证码">
                    <div class="ts">123</div>
                </div>
                <button id="get_message">获取验证码</button>
            </div>
            <div class="tk">
                <i></i>
                <p>注册即表示同意 <a href="">ICO使用条款</a></p>
                <i></i>
            </div>
            <input type="submit" id="login_sub" value="注册">
        </form>
        <p class="go_login">已有账号，去<a href="">登录</a></p>
    </div>
</div>

<div id="login_footer">
    <div class="footer">
        <!--<img src="img/f_logo.png" alt="">-->
        <p>版权所有 Copyright &copy; 2017 上海链贤信息科技有限公司 浙ICP备13007554号-17</p>
    </div>
</div>
</body>
<script src="resource/js/main.js"></script>
<script src="resource/js/re_v.js"></script>
</html>