$(function () {
    /**
     * 设置全局jquery ajax 设置，
     * error 根据后台返回的不同的错误码的错误提示。
     * complete 后台登陆session失效后根据response header 中的信息跳转到登陆页面。
     *
     */
    $.ajaxSetup({
        type : 'POST',
        error : function (jqXHR, textStatus, errorThrown) {
            switch (jqXHR.status) {
                case (500):
                    $.messager.alert('提示', "服务器系统内部错误");
                    break;
                case (401):
                    $.messager.alert('提示', "未登录");
                    break;
                case (403):
                    $.messager.alert('提示', "无权限执行此操作");
                    break;
                case (408):
                    $.messager.alert('提示', "请求超时");
                    break;
                case (404):
                    $.messager.alert('提示', "未请求到相关资源 404");
                    break;
                case (425):
                    $.messager.alert('提示', "无法打开数据连接。");
                    break;
                case (700):
                    $.messager.alert('提示', "不要重复提交。");
                    break;
                case (425):
                    $.messager.alert('提示', "系统维护中。");
                    break;
                default:
                    $.messager.alert('提示', "未知错误");
            }
        },
        contentType : "application/x-www-form-urlencoded;charset=utf-8",
        complete : function (XMLHttpRequest, textStatus) {
            //通过XMLHttpRequest取得响应头，sessionstatus
            var sessionstatus = XMLHttpRequest.getResponseHeader("sessionstatus");
            if (sessionstatus == "timeout") {
                //ajax请求时session失效跳转到登陆页面
                window.location.href = path;
            }
        }
    });
});