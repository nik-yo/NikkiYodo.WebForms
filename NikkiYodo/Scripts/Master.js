$(document).ready(function () {
    $('ul[class~="level1"]').children().each(function () {
        var li = $(this);
        li.find('li.dynamic').css({ "background-position": -li.position().left + "px 0" });
    });
});