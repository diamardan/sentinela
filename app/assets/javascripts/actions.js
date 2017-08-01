//for bootstrap carousel


$(document).ready(function(){
    $('#myCarousel').carousel()
});


//for icheck combo box
function icheck(){
    if($(".icheck-me").length > 0){
        $(".icheck-me").each(function(){
            var $el = $(this);
            var skin = ($el.attr('data-skin') !== undefined) ? "_" + $el.attr('data-skin') : "",
                color = ($el.attr('data-color') !== undefined) ? "-" + $el.attr('data-color') : "";
            var opt = {
                checkboxClass: 'icheckbox' + skin + color,
                radioClass: 'iradio' + skin + color,
            }
            $el.iCheck(opt);
        });
    }
}

$(function(){
    icheck();
})


// for showing tooltip
$(function () {
    $('[data-toggle="tooltip"]').tooltip();
});