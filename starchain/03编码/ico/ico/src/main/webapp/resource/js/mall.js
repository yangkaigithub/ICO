(function () {
    var banImgLi = $("#banner_img").find("li");


    banImgLi.each(function () {
        $("#page").find("ul").append("<li></li>")
    })
    $("#page").find("ul").find("li:first-of-type").addClass("page_color");

    var banIndex = 0

    setInterval(function () {
        banIndex++;

        if (banIndex >= banImgLi.length) {
            banIndex = 0;
        }

        ban()
    }, 3000);
    $("#page").find("ul").find("li").mouseenter(function () {
        banIndex = $(this).index();
        ban()
    })

    function ban() {
        $("#banner_img").find("li").hide();
        $("#page").find("ul").find("li").removeClass("page_color")
        $("#page").find("ul").find("li").eq(banIndex).addClass("page_color")
        $("#banner_img").find("li").eq(banIndex).show()
    }


    $("#auction").find(".auction_top_img").find("ul").find("li").click(function () {
        $("#auction").find(".auction_top_img").find("ul").find("li").removeClass("li")
        $(this).addClass("li")
        $("#auction").find(".auction_top_img").children("img").attr("src", $(this).find("img").attr("src"))
    })

    $("#auction").find(".auction_top_txt_bot").find("li").click(function () {
        $("#auction").find(".auction_top_txt_bot").find("li").removeClass("color_li")
        $(this).addClass("color_li")
    })


    var shopNub_inp=$("#shop_nub").find(".shop_nub_input")
    var shopNub_inp_v=shopNub_inp.val()
    var shopNub_a=$("#shop_nub").find(".shop_nub_a")
    var shopNub_j=$("#shop_nub").find(".shop_nub_j")

    shopNub_a.click(function () {
        shopNub_inp_v++
        shopNub_inp.val(shopNub_inp_v)
    })
    shopNub_j.click(function () {
        shopNub_inp_v--
        if(shopNub_inp_v<=0){
            shopNub_inp_v=1
        }
        shopNub_inp.val(shopNub_inp_v)
    })

    $("#auction").find(".auction_top_txt_bot").find(".cj").find("a").mouseenter(function () {
        $("#auction").find(".auction_top_txt_bot").find(".cj").find("a").removeClass("a_hover")
        $("#auction").find(".auction_top_txt_bot").find(".cj").find("a").find("span").removeClass("icon-shoudonghongfa")
        $(this).addClass("a_hover")
        $(this).find("span").addClass("icon-shoudonghongfa")
    })

// var day=3;
//     var h=day*24;
//     var m=h*60;
//     var s=m*60;
//     var timeArr=[]
//     setInterval(function () {
//         s--
//       console.log("s="+s+" m="+s/60+" h="+s/60/60+" d="+s/60/60/24)
//     },1000)
//     var a=[0,3,0,8,0,5,5,4]
//     $("#auction").find(".auction_top_txt_bot").find(".djs").find("p").find("span").each(function (i) {
//         $("#auction").find(".auction_top_txt_bot").find(".djs").find("p").find("span").eq(i).text(a[i])
//     })

    function tck_s(obj,tck) {
        obj.click(function (e) {
            e.preventDefault();
            tck.find("input[type=reset]").click()
            tck.show()
        })
    }
tck_s($(".add_dz"), $(".tck_dz"))
tck_s($(".cj").find("a:nth-of-type(2)"), $(".tck_sa"))
tck_s($(".cj").find("a:nth-of-type(1)"), $(".tck_jp"))

    $(".icon-close").click(function () {
        $(this).parents(".tck_bg").hide()
    })
    $("input[type=button]").click(function () {
        if ($(this).val() == "取消") {
            $(this).parents(".tck_bg").hide()
        }
    })
$("#input_mr").on("change",function () {
    console.log($(this).prop("checked"))

    switch ($(this).prop("checked")){
        case true:
            $(this).siblings("img").show()
            break;
        case false:
            $(this).siblings("img").hide()
            break;
    }


})

})()