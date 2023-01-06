$(document).ready(function(){
    $('#map-btn').click(function(){
        $('#map').slideToggle();
    });
    
    $('.login-header').particleground({
        dotColor: '#282828',
        lineColor: '#AC7E5B'
    });       
        
    $('#register-link').click(function(){
        $('#register-form').slideDown();
        $('#login-form').slideUp();
        $('#return-to-site').fadeOut();
        $('#return-to-login').fadeIn();
    });
    
    $('#return-to-login').click(function(){
        $('#register-form').slideUp();
        $('#login-form').slideDown();
        $('#return-to-site').fadeIn();
        $('#return-to-login').fadeOut();
    });
});