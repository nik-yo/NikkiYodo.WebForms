$(document).ready(function () {
    $('ul[class~="level1"]').children().each(function () {
        var li = $(this);
        li.find('li.dynamic').css({ "background-position": -li.position().left + "px 0" });
    });

    $('li[role="menuitem"] > a').click(function () {
        $(this).parent().siblings().find('ul').hide();

        var nextLevel = $(this).next('ul');
        if (nextLevel) {
            nextLevel.toggle();
        }        
    });

    $('.MainContent').click(function () {
        $('li[role="menuitem"] > ul').hide();
    });        
});

Sys.Application.add_load(function () {
    $('ul[role="menubar"]').off("focus");
});