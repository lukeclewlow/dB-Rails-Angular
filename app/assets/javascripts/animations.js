$(document).scroll(function(){
    if($(this).scrollTop() > 1)
    {   
        $('.heading').animate({
        	"width":"50%",
        	"margin-left":"25%"
        }, 2000, function() {
        	console.log("heading animation complete");
        });
    }
});

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