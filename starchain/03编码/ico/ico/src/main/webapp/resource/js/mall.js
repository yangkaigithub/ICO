(function () {
    var banImgLi=$("#banner_img").find("li");


    banImgLi.each(function () {
        $("#page").find("ul").append("<li></li>")
    })
    $("#page").find("ul").find("li:first-of-type").addClass("page_color");

    var banIndex=0

setInterval(function () {
    banIndex++;

    if(banIndex>=banImgLi.length){
        banIndex=0;
    }

ban()
},3000);
    $("#page").find("ul").find("li").mouseenter(function () {
        banIndex=$(this).index();
        ban()
    })

    function ban() {
        $("#banner_img").find("li").hide();
        $("#page").find("ul").find("li").removeClass("page_color")
        $("#page").find("ul").find("li").eq(banIndex).addClass("page_color")
        $("#banner_img").find("li").eq(banIndex).show()
    }
})()