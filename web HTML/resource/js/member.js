(function () {

$.ajax({
    url:"resource/js/bankName.json",
    success:function (data) {
       for (var i=0;i<data.bankName.length;i++){
           $("#bank_name").append("<option value='"+data.bankName[i]+"'>"+data.bankName[i]+"</option>")

       }

    },
    error:function () {
        $("#bank_name").append("<option>网络差，请刷新重试</option>")
    }
})

})()