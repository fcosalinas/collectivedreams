//remove the active class from all items, if there is any
$('.nav>li').removeClass('active');

//finally, add the active class to the current item
$('a[href='+ location.pathname.substring(1) +']').parent().addClass('active');