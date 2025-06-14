$(function () {
    
    window.addEventListener('message', function (event) {
        var item = event.data;
        if (item.type === 'ui') {
            if (item.status) {
                $('body').fadeIn();
            } else {
                $('body').fadeOut();
            }
        } else if (item.type === "addclass") {
            if (item.status == true) {
                $(".key-x").addClass('active')
                $('.key-control-x').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-x').css({
                    'color': 'white',
                });
                $(".key-x").removeClass('active')
            }
        } else if (item.type === "time") {
            $("#time").text(item.time);
        } else if (item.type === "requestTalk") {
            if (item.status == true) {
                $(".key-r").addClass('active')
                $('.key-control-r').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-r').css({
                    'color': 'white',
                });
                $(".key-r").removeClass('active')
            }
        } else if (item.type === "sendsignal") {
            if (item.status == true) {
                $(".key-g").addClass('active')
                $('.key-control-g').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-g').css({
                    'color': 'white',
                });
                $(".key-g").removeClass('active')
            }
        } else if (item.type === "gang") {
            if (item.status == true) {
                $(".key-p").addClass('active')
                $('.key-control-p').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-p').css({
                    'color': 'white',
                });
                $(".key-p").removeClass('active')
            }
        } else if (item.type === "gang2") {
            if (item.status == true) {
                $(".key-l").addClass('active')
                $('.key-control-l').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-l').css({
                    'color': 'white',
                });
                $(".key-l").removeClass('active')
            }
        } else if (item.type === "police") {
            if (item.status == true) {
                $(".key-h").addClass('active')
                $('.key-control-h').css({
                    'color': 'rgba(255,255,255, .2)',
                });
            } else {
                $('.key-control-h').css({
                    'color': 'white',
                });
                $(".key-h").removeClass('active')
            }
        } else if (item.type === "event") {
            if (item.display) {
                $('.key-control-j').css({
                    'display': 'block',
                });
                if (item.status == true) {
                    $(".key-j").addClass('active')
                    $('.key-control-j').css({
                        'color': 'rgba(255,255,255, .2)',
                    });
                } else {
                    $('.key-control-j').css({
                        'color': 'white',
                    });
                    $(".key-j").removeClass('active')
                }
            } else {
                $('.key-control-j').css({
                    'display': 'none',
                });
            }
        } else if (item.type === 'progress') {
            $('#progress').css('width', item.percent + '%');
        }
    });
});
