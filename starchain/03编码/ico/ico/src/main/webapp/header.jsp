<%@page pageEncoding="utf-8" %>
<%--
  Created by IntelliJ IDEA.
  User: Harry
  Date: 2017/8/1
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>