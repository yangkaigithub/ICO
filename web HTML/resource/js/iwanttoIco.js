(function () {
    $("#wantT").find("a").click(function () {
        $(this).hide();
        $("#tck_ico").show()
    })

console.log($("form"))

    var ico_bot1 = $("#tck_ico").find(".tck_ico_bot1");
    var ico_bot2 = $("#tck_ico").find(".tck_ico_bot2");
    var ico_bot3 = $("#tck_ico").find(".tck_ico_bot3");
    ico_bot1.find("input[type=button]").click(function (e) {
        ico_bot2.find("input[type=submit]").click();
        if (va(ico_bot1)) {
            ico_bot1.hide();
            ico_bot2.show();
        }
    });

    ico_bot2.find("input[type=file]").on("change",function () {
        $(this).prev("span").text($(this).val())
        console.log($(this).val())
    })

    function va(dom) {
        var inp = false;
        var sel = false;
        var text = false;
        var dom_inp=dom.find("input");
        var dom_sel=dom.find("select");
        var dom_text=dom.find("textarea");
        if (dom_inp.length > 0) {
            for (var i = 0; i < dom_inp.length;i++) {
                if(dom_inp[i].value){
                    inp = true;
                }else {
                    inp = false;
                    break;
                    return
                }
            }
        } else {
            inp = true
        }

        if (dom_sel.length > 0) {
            for (var j = 0; j < dom_sel.length; j++) {
                if(dom_sel[j].value){
                    sel = true;
                }else {
                    sel = false;
                    break
                    return
                }
            }
        } else {
            sel = true
        }


        if (dom_text.length > 0) {
            for (var k = 0; k < dom_text.length;k++) {
                if(dom_text[k].value){
                    text = true;
                }else {
                    text = false;
                    break
                    return
                }
            }
        } else {
            text = true
        }

        if (inp && sel && text) {
            return true
        } else {
            return false
        }
    }

})()