<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <title>星链</title>
    <meta name="description" content="Star Chain">
    <%@include file="/header.html"%>
    <link rel="stylesheet" href="resource/css/base.css">
    <link rel="stylesheet" href="resource/font/iconfont.css">
    <script src="resource/js/jquery-3.2.1.min.js"></script>
    <script>
        var df;
        alert(df==null);

       var json = function(){
           this.t=123111;
           var t=this.t;
           this.t1=function(){
               return t;
           }
           this.f=function(){
              var t=1111;
               return s();
           }
           var s = function(){
               return w();
           }
           var w = function(){
               return this.t;
           }
           return 1234;
       }
       var x = new json();
       x.t="132";
       alert(x.t1());
       alert(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test("wming@qq.com"));

       var json1={
           a:11,
           b:null
       }
       $.each(json1, function(i) {
           alert(json1[i]);
       });
       function tt(){
           console.log($("#form1").serialize());
           $("#results").html(  $("#form1").serialize() );
           $("#test").blur(function(){
               alert(1);
           });
           $("#test").blur(function(){
               alert(4);
           });
       }
       function select(){
            alert($("#se").val());
       }
    </script>
</head>
<body onload="tt()">
    <img src="resource/img/timg.gif"/>
    <form method="post" action="/usermanager/userLogin.action">
        <input id="test"/>
        <select id="se" name="se" onchange="select()">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
        <input type="submit"/>
    </form>
<a href="usermanager/reg">注册</a>

    <p id="results"><b>Results: </b> </p>
    <form id="form1">
        <select name="single">
            <option>Single</option>
            <option>Single2</option>
        </select>
        <select name="multiple" multiple="multiple">
            <option selected="selected">Multiple</option>
            <option>Multiple2</option>
            <option selected="selected">Multiple3</option>
        </select><br/>
        <input type="checkbox" name="check" value="check1"/> check1
        <input type="checkbox" name="check" value="check2" checked="checked"/> check2
        <input type="radio" name="radio" value="radio1" checked="checked"/> radio1
        <input type="radio" name="radio" value="radio2"/> radio2
    </form>
</body>
</html>
