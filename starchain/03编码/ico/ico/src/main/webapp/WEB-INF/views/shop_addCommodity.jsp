<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/31
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 输入框组的大小</title>
    <link rel="stylesheet" href="/resource/css/bootstrap/css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="/resource/css/bootstrap/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
</head>
<body>

<div ng-app="myApp" ng-controller="formCtrl">
    <form novalidate>
        UserName:<input type="text" ng-model="commodityName"><br>
        PassWord:<input type="text" ng-model="commodityInfo">
        <br>
        <button ng-click="login()">登录</button>
    </form>
</div>
<script>
    var app = angular.module('myApp', []);
    app.controller('formCtrl', function($scope,$http) {
        $scope.login = function() {
            $http({
                url:'/mall/addCommodity',
                method: 'POST',
                data: {commodityName:$scope.commodityName,commodityInfo:$scope.commodityInfo}
            }).success(function(){
                    console.log("success!");
            }).error(function(){
                console.log("error");
            })
        };
    });
</script>
</body>
</html>