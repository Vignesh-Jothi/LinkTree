// Main JavaScript functionality for LinkTree

// Dynamic greeting based on time
function getGreeting() {
    const hour = new Date().getHours();
    if (hour < 12) return 'Good morning, I\'m';
    if (hour < 17) return 'Good afternoon, I\'m';
    if (hour < 21) return 'Good evening, I\'m';
    return 'Good night, I\'m';
}

// jQuery document ready function
$(document).ready(function(){
    // Update the current year dynamically
    var currentYear = new Date().getFullYear();
    $("#current-year").text(currentYear);

    // Set dynamic greeting
    $('.greeting').html(getGreeting() + ' <br><span class="name">vignesh jothi</span> <br>').css('opacity', '1');
});
