var map, geocoder, marker, ey, my, mouseDown = !1,
        results;

var url_frontend="";

// $.getJSON(url_frontend+  "data_events.json",
//         function (e) {
//             results = e
//         });


var contentString = '<div id="pin_details"></div>',
        infowindow = new google.maps.InfoWindow({
            content: contentString,
            maxWidth: 1e3
        }),
        mapZoom = 2;

window.innerWidth <= 600 && (mapZoom = 1);

var o = {
    init: function () {
        this.map.init(), this.mapper.show(), this.mapper.click(), this.scroll.init()
    },
    mapper: {
        get: function () {
            var e = new Array;
            return $(".get").find("input.active").each(function (o) { 
                var t = $(this),
                        i = t.val();
                e[o] = i
            }), e
        },
        show: function () {
            {
                var e = o.mapper.get();
                new Array
            }
            for (i in e)
                !function () {
/*
    Ejemplo
    <input value="71.706936;-42.604303;123;aa;No Category;Celebration,Action">
    <input value="28.6109401;77.234482;127;aa;No Category;Meditation,Action">
    <input value="18.5204303;73.8567437;128;aa;No Category;Meditation">
    <input value="12.9715987;77.5945627;129;aa;No Category;Meditation">
*/                    
                    var t = e[i].split(";");
//                icon = "http://i1164.photobucket.com/albums/q570/mppit/blue_pin_zpsggre83gf.png";
                    event_type = t[5];
                    event_type_count = event_type.split(",");                    

                    // if (event_type_count.length > 1) {
                    //     icon_type = 1; 
                    // } 

                    icon = new google.maps.MarkerImage(image_url+"1.png", null, null, null, new google.maps.Size(32,46));




                    var n = new google.maps.Marker({
                        map: map,
                        position: new google.maps.LatLng(t[0], t[1]),
                        id: t[2],
                        regional_details: t[3],
                        icon: icon
                    });
                    google.maps.event.addListener(n, "click", function () {
                        o.mapper.open(this.id), infowindow.open(map, n), movePosition(), removeRandomBox(), changeCloseIcon(), closeInfoWindow(), $(".pin_details").hide();
                        var e = new google.maps.LatLng(parseInt(t[0]) + 43, t[1]);
                        map.setZoom(15);
                        map.setCenter(e)
                    }), google.maps.event.addListener(infowindow, "closeclick", function () {
                        console.log("baaaaa")
                    })
                }(e[i])
        },
        click: function () {
            $(".mapper").find(".open").on("click", function () {
                var e = $(this),
                        t = e.attr("rel");
                o.mapper.open(t)
            })
        },
        // open: function (e) {
        //     var o = $(".pin_details"),
        //             t = new Array;
        //     $.each(results.events.event, function (o, t) {

        //         var words = '';
        //         var wordCount = t.event_description.replace(/[^\w ]/g, "").split(/\s+/).length
        //         if (wordCount > 10) {
        //             words = t.event_description.split(/\s+/).slice(0, 10).join(' ') + '...';
        //         } else {
        //             words = t.event_description;
        //         }


        //             url_event='events/' + t.id;
        //             button_official_event_page='';
        //             if(t.website_link!='') button_official_event_page='<a class="btn btn-default btn-fb" href="http://'+t.website_link+'" style="color: white !important; width: 50%;" target="_blank">Official Event Page<span><img height="20px" alt="Fb" src="'+url_frontend+'/assets/'+'fb-950250c3a1b8d0dae28235f4533aeb58.png" style="padding-left: 4px;"></span></a>';

        //             t.id == e && infowindow.setContent("http://" == t.website_link ? '<div id="contentInfo"><div style="width: 40%;"><div class="col-md-5 body-see-event-tooltip"><div style="width: 100%;height: 200px;" class="pull-left content-event"><div style="width: 83%; float: left;" class="title"><h1><a style="color: white;" href="events/' + t.id + '">' + t.title + '</a></h1></div><div style="clear:both;"></div><h2></h2><h2>' + t.start_date + '</h2><h2>' + t.location + '</h2><h2 style="    margin-top: 20px;    color: white;">' + words + '</h2><h2><a class="learn-more" style="color: #0181E8;" href="events/' + t.id + '">Learn More</a></h2></div><div style="clear:both;    position: absolute;                    bottom: 20px;" class="pull-left"><br/><br/><a href="contact_organizer/' + t.id + '" data-toggle="modal" data-target="#contactOrganizer" class="btn btn-default btn-detail">Contact Organizer<span></span></a><br></div><div class="cover"><div class="pull-right"><img style="background: #fff; padding:2px; min-width:85px;    position: absolute;                    width: 85px;                right: 20px;                bottom: 20px;" src="uploads/' + t.image_link + '"></div></div></div></div></div>' :
        //                 '<div id="contentInfo"><div style="width: 40%;"><div class="col-md-5 body-see-event-tooltip"><div style="width: 100%;height: 200px;" class="pull-left content-event"><div style="width: 83%; float: left; padding-top: 10px;" class="title"><h1><a style="color: white;" href="events/' + t.id + '">' + t.title + '</a></h1></div><div style="clear:both;"></div><h2></h2><h2>' + t.start_date + '</h2><h2>' + t.location + '</h2><h2 style="    margin-top: 20px;    color: white;">' + words + '</h2><h2><a class="learn-more" style="color: #0181E8;" href="'+url_event+'">Learn More</a></h2></div><div style="clear:both;    position: absolute;                bottom: 20px;" class="pull-left">'+button_official_event_page+'<a href="contact_organizer/' + t.id + '" data-toggle="modal" data-target="#contactOrganizer" class="btn btn-default btn-detail" style="margin-left: 8px; width: 45%;">Contact Organizer<span></span></a><br></div><div class="cover"><div class="pull-right"><img style="background: #fff; padding:2px; min-width:85px;    position: absolute;                width: 85px;                right: 20px;                bottom: 20px;" src="uploads/' + t.image_link + '"></div></div></div></div></div>')



        //     });
        //     var i = t.join("");
        //     o.html(i).fadeIn()
        // }
    },
    map: {
        size: function () {
            var e = $("#map").width(),
                    o = $("#map").height();
            return {
                width: e,
                height: o
            }
        },
        data: {
            zoom: mapZoom,
            center: new google.maps.LatLng(29, -42),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            scrollwheel: !1,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                position: google.maps.ControlPosition.TOP_RIGHT
            },
            panControl: !0,
            panControlOptions: {
                position: google.maps.ControlPosition.RIGHT_CENTER
            },
            zoomControl: !0,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.LARGE,
                position: google.maps.ControlPosition.RIGHT_CENTER
            }
        },
        data_mobile: {
            zoom: mapZoom,
            center: new google.maps.LatLng(-30, 0),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            scrollwheel: !1,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                position: google.maps.ControlPosition.RIGHT_BOTTOM
            },
            mapTypeControl: !1,
            streetViewControl: !1,
            panControl: !1,
            panControlOptions: {
                position: google.maps.ControlPosition.RIGHT_CENTER
            },
            zoomControl: !0,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.SMALL,
                position: google.maps.ControlPosition.RIGHT_TOP
            }
        },
        init: function () {
            var e = document.body.clientWidth,
                    t = o.map.size();
            $("#map").css({
                width: t.width,
                height: t.height
            }), 
            // console.log(o.map.data);
            // return;

            //alert(e),
            //map = 450 > e ? alert('mobile') : alert('normal'),
            map = 600 >= e ? new google.maps.Map(document.getElementById("map"), o.map.data_mobile) : new google.maps.Map(document.getElementById("map"), o.map.data), 
            geocoder = new google.maps.Geocoder, 
            google.maps.event.addListener(map, "dragstart", function () {
                $(".posts").hide()
            })
        }
    },
    scroll: {
        mouse: function (e) {
            var o = e.pageY;
            return o
        },
        check: function (e) {
            var o = $(".mapper").height(),
                    t = $(".mapper").find(".inside").height();
            return o - t > e ? e = o - t : e > 0 && (e = 0), e
        },
        update: function (e) {
            var t = o.scroll.mouse(e),
                    i = t - my,
                    n = ey + i;
            check = o.scroll.check(n), $(".mapper").find(".inside").css({
                top: check + "px"
            })
        },
        init: function () {
            $(".mapper").find(".inside").bind({
                mousedown: function (e) {
                    e.preventDefault(), mouseDown = !0;
                    var t = o.scroll.mouse(e);
                    my = t;
                    var i = $(this).position();
                    ey = i.top, o.scroll.update(e)
                },
                mousemove: function (e) {
                    return mouseDown && o.scroll.update(e), !1
                },
                mouseup: function () {
                    return mouseDown && (mouseDown = !1), !1
                },
                mouseleave: function () {
                    return mouseDown && (mouseDown = !1), !1
                }
            })
        }
    }
};


$(function () {

    o.init()

}), removeRandomBox = function () {
    $(".gm-style-iw").siblings().last().css("border-radius", "7px"), $(".gm-style-iw").siblings().last().css("top", "8px"), $(".gm-style-iw").siblings().last().css("right", "-368px"), $(".gm-style-iw").siblings().first().children().last().css("background-color", "transparent"), $(".gm-style-iw").siblings().first().children().eq(1).css("background-color", "transparent"), $(".gm-style-iw").siblings().first().children().eq(1).css("box-shadow", "none")
}, changeCloseIcon = function () {
    close_image = url_frontend + "/assets/circle_close.png", $(".gm-style-iw").siblings().last().html("<img class='close_infowindow' src='" + close_image + "' height='30px'></img>"), $(".gm-style-iw").siblings().last().css("top", "-22px"), $(".gm-style-iw").siblings().last().css("height", "30px"), $(".gm-style-iw").siblings().last().css("width", "30px"), $(".gm-style-iw").siblings().last().css("right", "-272px");
    var e = $(window).width();
    e > 560 && (569 > e ? ($(".gm-style-iw").next("div").css("right", "-285px"), $(".gm-style-iw").next("div").css("top", "17px"), $(".gm-style-iw").next("div").css("background-color", "#FFF"), $(".gm-style-iw").next("div").css("border-radius", "17px")) : ($(".gm-style-iw").next("div").css("right", "-285px"), $(".gm-style-iw").next("div").css("top", "17px"), $(".gm-style-iw").next("div").css("background-color", "#FFF"), $(".gm-style-iw").next("div").css("border-radius", "17px"))), 560 > e && ($(".gm-style-iw").siblings().eq(1).html("<img class='close_infowindow' src='" + close_image + "' height='30px'></img>"), $(".gm-style-iw").siblings().eq(1).css("top", "17px"), $(".gm-style-iw").siblings().eq(1).css("height", "30px"), $(".gm-style-iw").siblings().eq(1).css("width", "30px"), $(".gm-style-iw").siblings().eq(1).css("right", "-185px"), $(".gm-style-iw").siblings().eq(1).css("background-color", "#FFF"), $(".gm-style-iw").siblings().eq(1).css("border-radius", "17px")), 480 > e && $(".gm-style-iw").siblings().eq(1).css("right", "-125px"), 400 > e && $(".gm-style-iw").siblings().eq(1).css("right", "-123px"), $(".gm-style-iw").siblings().first().children().eq(2).addClass("new_arrow")
}, closeInfoWindow = function () {
    $(".close_infowindow").bind("click", function () {
        infowindow.close();
        map.setZoom(2);
    })
}, movePosition = function () {
    var e = $(".gm-style").children().first().children()[2];
    $(e).insertBefore($(".gm-style").children().last())
};