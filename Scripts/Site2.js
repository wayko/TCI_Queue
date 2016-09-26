$(document).ready(function () {

    var bodyHeight = $('body').height();
    var footerHeight = $('footer').height() - 10;
    

    if (bodyHeight >= 718) {
        bodyHeight = bodyHeight - footerHeight;
    }
    else {
        bodyHeight = bodyHeight - 225;
    }

    $("footer").css("top", bodyHeight);

});