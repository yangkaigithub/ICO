(function () {
    $("button").click(function (e) {
        e.preventDefault();
        $(this).parent().siblings("input[type=file]").click()
    })


    $("input[type=file]").on("change",function () {
        var r= new FileReader();
        var inputSelf=$(this)
        f=this.files[0];
        r.readAsDataURL(f);
        r.onload=function  (e) {
            console.log(inputSelf.find("img"))
            inputSelf.siblings(".img_div").find("img").attr("src",this.result)
        };

    })
    $("#ty").on("change",function () {
            $(".sub_div").find("img").toggle();
            if(!$("#ty").prop("checked")){
                $("input[type=submit]").prop("disabled",true)
                $("input[type=submit]").css("background","#ccc")
            }else {
                $("input[type=submit]").prop("disabled",false)
                $("input[type=submit]").css("background","#e36159")
            }

    })
})()