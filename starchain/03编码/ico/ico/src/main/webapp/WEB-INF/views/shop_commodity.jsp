<%@page pageEncoding="utf-8" %>
<%@include file="/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>物品详情</title>
    <meta name="description" content="Star Chain">
    <%@include file="/header.html"%>

    <link rel="stylesheet" href="resource/css/mall.css">
    <link rel="stylesheet" href="resource/font/iconfont.css">
    <script src="resource/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<div id="header">
    <div class="header">
        <div id="logo">
            <img src="resource/img/logo_head2.png" alt="">
            <h1>链贤艺人商城</h1>
        </div>

        <div id="header_r">
            <div id="seach">
                <span class="iconfont icon-seach"></span>
                <input type="search" name="seach">
            </div>
            <div id="shoppingCar">
                <span class="iconfont icon-gouwuchekong"></span>
                <i id="shopNub">0</i>
            </div>

            <div id="center">
                <span class="iconfont icon-yonghu"></span>
                <span class="iconfont icon-xiajiantou"></span>
                <div>
                    <span class="iconfont icon-shangjiantou"></span>
                    <ul>
                        <li><a href="">个人中心</a></li>
                        <li><a href="">我的订单</a></li>
                        <li><a href="">我的收货地址</a></li>
                        <li><a href="">退出</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
<div id="auction">
    <div class="auction">
        <div class="auction_top">
            <div class="auction_top_img">
                <ul>
                    <li class="li"><img src="resource/img/erji1.png" alt=""></li>
                    <li><img src="resource/img/erji2.png" alt=""></li>
                    <li><img src="resource/img/erji3.png" alt=""></li>
                    <li><img src="resource/img/erji4.png" alt=""></li>
                </ul>
                <img src="resource/img/ej.png" alt="">
            </div>
            <div class="auction_top_txt">
                <div class="auction_top_txt_top">
                    <h1>FIIL Diva 智能蓝牙无线降噪耳机</h1>
                    <p>手势触控、智能启停，李易峰签名款</p>
                    <div>
                        <p>当前价格<b class="bigFont">￥159</b><span><i></i>加价单位：100元</span></p>
                        <p>出价次数<b>40次</b></p>
                    </div>
                </div>
                <div class="auction_top_txt_bot">
                    <div class="color">
                        <p>颜色</p>
                        <ul>
                            <li>蓝色</li>
                            <li>黄色</li>
                            <li>黑色</li>
                            <li>灰色</li>
                        </ul>
                    </div>
                    <div>
                        <p>数量</p>
                        <div id="shop_nub">
                            <i class="shop_nub_j">-</i>
                            <input type="number" min="1" value="1" class="shop_nub_input">
                            <i class="shop_nub_a">+</i>
                        </div>
                    </div>

                    <div class="cj">
                        <a href="" class="a_hover"><span class="iconfont icon-shoudonghongfa"></span>手动出价</a>
                        <a href=""><span class="iconfont"></span>预约出价</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="auction_bot">
            <h4>商品详情</h4>
            <img src="resource/img/js.jpg" alt="">
        </div>
    </div>
</div>
<div id="footer">
    <div class="footer">
        <div class="footer_top">
            <img src="resource/img/foot.png" alt="">
        </div>
        <div class="footer_bot">
            <ul>
                <li><a href="">关于我们</a></li>
                <li><a href="">帮助中心</a></li>
                <li><a href="">售后服务</a></li>
                <li><a href="">配送与验收</a></li>
                <li><a href="">商务合作</a></li>
                <li><a href="">企业采购</a></li>
                <li><a href="">开放平台</a></li>
                <li><a href="">搜索推荐</a></li>
                <li><a href="">友情链接</a></li>
            </ul>
            <p>上海链贤科技有限公司版权所有 &copy; 2017 浙ICP备13007554号-17</p>
        </div>
    </div>
</div>
</body>
<script src="resource/js/mall.js"></script>
</html>
