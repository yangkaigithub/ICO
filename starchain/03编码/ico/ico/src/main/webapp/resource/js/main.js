(function () {
    $(".index_main2_main_div").children("ul").children(".index_main2_main_ul_li").on("mouseover", function () {
        $(".index_main2_main_div").children("ul").children("li").removeClass("li_hover")
        $("#index_main2_main_ul_last").find("li").removeClass("_lihover")
        $(this).addClass("li_hover")
        $(".index_main2_main_div").children("ul").children("li").find(".index_main2_ab").hide()
        $(this).find(".index_main2_ab").show()
    });

    $("#index_main2_main_ul_last").on("mouseover", function () {
        $(".index_main2_main_div").children("ul").children(".index_main2_main_ul_li").removeClass("li_hover")
        $(this).addClass("li_hover")

    });
    $("#index_main2_main_ul_last").find("li").on("mouseover", function () {
        $(".index_main2_main_div").children("ul").children("li").find(".index_main2_ab").hide()
        $("#index_main2_main_ul_last").find("li").removeClass("_lihover")
        $(this).addClass("_lihover")
    });


    $(".index_main2_main_ul").find("li").hover(function () {
        $(".index_main2_abc").hide();
    }, function () {
        $(".index_main2_abc").show();
    })

    $(".index_main2_main_div").children("ul").children("li").hover(function () {
        $(".index_main2_abc").hide();
    }, function () {
        $(".index_main2_abc").show();
    })

//bi ling bi ling
    var banner_ball_li_arr,
        banner_ball_li_lenght,
        banner_ball_li_index;
    setInterval(function () {
        banner_ball_li_arr = []
        banner_ball_li_lenght = Math.floor(Math.random() * 15);
        for (var i = 0; i < banner_ball_li_lenght; i++) {
            banner_ball_li_index = Math.floor(Math.random() * 15);
            banner_ball_li_arr.push(banner_ball_li_index)
        }
        $(".banner_ball").find("li").fadeOut(800)
        for (var j = 0; j < banner_ball_li_arr.length; j++) {

            $(".banner_ball").find("li").eq(j).fadeIn(300)
        }
    }, 1000)


//    banner page
    $("#banner_main").children("li").each(function () {
        $("#banner_page").children("ul").append("<li></li>")
    })

//    banner run
    var baner_i = 0;

    function ban_run(i) {
        $("#banner_main").children("li").fadeOut(500);
        $("#banner_main").children("li").eq(i).fadeIn(500);
        $("#banner_page").find("li").css("background", "#999")
        $("#banner_page").find("li").eq(i).css("background", "#1580ad")
    }

    var banner_time = setInterval(function () {
        baner_i++;
        if (baner_i >= $("#banner_main").children("li").length) {
            baner_i = 0;
        }

        ban_run(baner_i)
    }, 10000)

    $("#banner_page").find("li").on("mouseover", function () {
        baner_i = $(this).index()
        ban_run(baner_i)
    });


//idnex_main1 page
    var mx = $(".index_main1_main").find(".mx")
    mx.find(".imgAndVideo_img").find("li").each(function () {
        mx.find(".imgAndVideo_page").append("<li></li>")
    })

//idnex_main1 run
    var index_main1_i = 0;
    var next_l;

     setInterval(function () {
        index_main1_i++;
        idnex_main1_run()

    }, 5000)

    $(".imgAndVideo_page").find("li").on("mouseover", function () {
        index_main1_i = $(this).index()
        idnex_main1_run()
    });

    function idnex_main1_run() {
        if (index_main1_i >= mx.find(".imgAndVideo_img").find("li").length) {
            index_main1_i = 0;
        }
        next_l = index_main1_i * -610;
        mx.find(".imgAndVideo_img").animate({"left": next_l}, 500)
        mx.find(".imgAndVideo_page").find("li").css("background", "#999")
        mx.find(".imgAndVideo_page").find("li").eq(index_main1_i).css("background", "#1580ad")
    }

//    nav
    $(window).scroll(function () {
        if ($(this).scrollTop() >= 700) {
            $("#header2").slideDown(300)
        }
        if ($(this).scrollTop() < 700) {
            $("#header2").slideUp(300)
        }
    })


//

    $("#ct").click(function () {
        $("#tck_ct").show()
    })
    $("#tck_ct").find(".icon-close").click(function () {
        $("#tck_ct").hide()
    })

    $("#ETH").click(function () {
        $("#tck_ETH").show()
    })
    $("#tck_ETH").find(".icon-close").click(function () {
        $("#tck_ETH").hide()
    })


//投票
    $(".index_main2_main_ul").find("ul").find("li").find("a").find("div:contains(投票)").click(function () {
        $("#tp").fadeIn()

        setTimeout(function () {
            $("#tp").fadeOut()
        }, 1000)
    })

//login
    $("#login_left").children("div").find("h1").animate({"left": 0, "opacity": 1}, 1000)
    $("#login_left").children("div").find("p").animate({"right": 0, "opacity": 1}, 1000)

    // $("form").find("div").find("input").focus(function () {
    //     $(this).parent().css("border", "1px solid #31AFEA")
    // })
    // $("form").find("div").find("input").blur(function () {
    //     $(this).parent().css("border", "1px solid #ccc")
    // })


    $(".tck").find("p").find("input").focus(function () {

        $(this).css("border", "1px solid #31AFEA")
    })
    $(".tck").find("p").find("input").blur(function () {
        $(this).css("border", "1px solid #ccc")
    })


    $("#all").click(function (e) {
        e.preventDefault();
        $("#tix").val(parseInt($("#ye").text()))
    })


    //orouduct_delist


    $(window).scroll(function () {
// console.log($(this).scrollTop())
        if ($(this).scrollTop() >= 470) {
            $("#product_delist_nav").css("position", "fixed")
        }
        if ($(this).scrollTop() < 470) {
            $("#product_delist_nav").css("position", "static")
        }

        if ($(this).scrollTop() >= objmarginTop($("#xmjs"))) {
            navChecked($("#product_delist_nav").find(".xmjs"))
        }
        if ($(this).scrollTop() >= objmarginTop($("#jbxx"))) {
            navChecked($("#product_delist_nav").find(".jbxx"))
        }
        if ($(this).scrollTop() >= objmarginTop($("#zxdt"))) {
            navChecked($("#product_delist_nav").find(".zxdt"))
        }
        if ($(this).scrollTop() >= objmarginTop($("#cjwt"))) {
            navChecked($("#product_delist_nav").find(".cjwt"))
        }

    })

    function navChecked(obj) {
        $("#product_delist_nav").find("li").removeClass("li_checked")
        obj.addClass("li_checked")
    }

    function objmarginTop(obj) {
        if (obj.length) {
            var domTop = parseInt(obj.offset().top - 130);
            return domTop
        }

    }

    function clickScrollTop(click_obj, moveToObj) {
        var moveTo = objmarginTop(moveToObj)
        click_obj.click(function () {
            $("body").scrollTop(moveTo)
        })
    }

    clickScrollTop($("#product_delist_nav").find(".xmjs"), $("#xmjs"))
    clickScrollTop($("#product_delist_nav").find(".jbxx"), $("#jbxx"))
    clickScrollTop($("#product_delist_nav").find(".zxdt"), $("#zxdt"))
    clickScrollTop($("#product_delist_nav").find(".cjwt"), $("#cjwt"))


//member
    $("#member2").find(".member2_t").find("li:nth-of-type(1)").click(function () {
        $("#member2").find(".member2_t").find("li").removeClass("member2_li_checked")
        $(this).addClass("member2_li_checked")
        $("#member2").find(".member2_b").find("ul").hide()
        $("#member2").find(".member2_b").find(".member2_ul1").show()
    })
    $("#member2").find(".member2_t").find("li:nth-of-type(2)").click(function () {
        $("#member2").find(".member2_t").find("li").removeClass("member2_li_checked")
        $(this).addClass("member2_li_checked")
        $("#member2").find(".member2_b").find("ul").hide()
        $("#member2").find(".member2_b").find(".member2_ul2").show()
    })


    $("#member4").find(".member4_t").find("li:nth-of-type(1)").click(function () {
        $("#member4").find(".member4_t").find("li").removeClass("member4_li_checked")
        $(this).addClass("member4_li_checked")
        $("#member4").find(".member4_b").children("div").hide()
        $("#member4").find(".member4_b").find(".member4_table1").show()
    })
    $("#member4").find(".member4_t").find("li:nth-of-type(2)").click(function () {
        $("#member4").find(".member4_t").find("li").removeClass("member4_li_checked")
        $(this).addClass("member4_li_checked")
        $("#member4").find(".member4_b").children("div").hide()
        $("#member4").find(".member4_b").find(".member4_table2").show()
    })

    $("#member4").find(".member4_t").find("li:nth-of-type(3)").click(function () {
        $("#member4").find(".member4_t").find("li").removeClass("member4_li_checked")
        $(this).addClass("member4_li_checked")
        $("#member4").find(".member4_b").children("div").hide()
        $("#member4").find(".member4_b").find(".member4_table3").show()
    })

//
    $("#tck_xgzl").find("button").click(function (e) {
        e.preventDefault()
        $("#tx").click()
    })

    $("#tx").on("change", function () {
        var r = new FileReader();
        f = this.files[0];
        r.readAsDataURL(f);
        r.onload = function (e) {
            $("#tx_img").find("img").attr("src", this.result)
        };

    })

//
    $("#mm").click(function (e) {
        e.preventDefault();
        $(".tck_mm").find("input[type=reset]").click()
        $(".tck_mm").show()
    })
    $("#zl").click(function (e) {
        e.preventDefault();
        $(".tck_zl").find("input[type=reset]").click()
        $(".tck_zl").show()
    })
    $("#dz").click(function (e) {
        e.preventDefault();
        $(".tck_dz").find("input[type=reset]").click()
        $(".tck_dz").show()
    })
    $("#yhk").click(function (e) {
        e.preventDefault();
        $(".tck_yhk").find("input[type=reset]").click()
        $(".tck_yhk").show()
    })

    $("#member2").find(".member2_ul1").find("li").find(".cz").click(function (e) {
        e.preventDefault();
            $(".tck_cz").find("input[type=reset]").click()
            $(".tck_cz").show()
    })
    $("#member2").find(".member2_ul1").find("li").find(".tx").click(function (e) {
        e.preventDefault();
        if (tck==1){
            $(".tck_cz2").find("input[type=reset]").click()
            $(".tck_cz2").show()
        }
        if (tck==2){
            $(".tck_tx").find("input[type=reset]").click()
            $(".tck_tx").show()
        }
    })
    $(".icon-close").click(function () {
        $(this).parents(".tck_bg").hide()
    })
    $("input[type=button]").click(function () {
        if ($(this).val() == "取消") {
            $(this).parents(".tck_bg").hide()
        }

    })


    $("#tab").find("li:nth-of-type(1)").click(function () {
        $("#tab").find("li").removeClass("li");
        $(this).addClass("li")
        $("#xxpl").find(".xxpl_main").hide()
        $("#xxpl").find(".xxpl_main1").show()
        $("#seach").slideUp()
    })
    $("#tab").find("li:nth-of-type(2)").click(function () {
        $("#tab").find("li").removeClass("li");
        $(this).addClass("li")
        $("#xxpl").find(".xxpl_main").hide()
        $("#xxpl").find(".xxpl_main2").show()
        $("#seach").slideUp()
    })
    $("#tab").find("li:nth-of-type(3)").click(function () {
        $("#tab").find("li").removeClass("li");
        $(this).addClass("li")
        $("#seach").slideDown()
    })

    $("#xxpl").find(".xxpl").find(".xxpl_main").find("li").on("mouseover", function () {
        $("#xxpl").find(".xxpl").find(".xxpl_main").find("li").removeClass("xxpl_main_li")
        $(this).addClass("xxpl_main_li")
    });
    $("#ico_product").find(".ico_product").children("ul").children("li").on("mouseover", function () {
        $("#ico_product").find(".ico_product").children("ul").children("li").removeClass("xxpl_main_li")
        $(this).addClass("xxpl_main_li")
    });




})()
































