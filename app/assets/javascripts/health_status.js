$(document).ready(function() {
    var currentUrl = window.location.href;


    setInterval(function() {
        $.ajax({
            type: "GET",
            url: "/health/health_status"
        });
    }, 10000);
});
