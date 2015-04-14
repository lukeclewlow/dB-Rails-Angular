$(document).scroll(function(){
    if($(this).scrollTop() > 100)
    {   
        $('.full-width').animate({
        	"width":"90%",
        	"margin-left":"5%"
        }, 2000, function() {
        	console.log("animation complete");
        });
    }
});