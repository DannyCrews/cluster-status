$(document).ready(function() {
    var currentUrl = window.location.href;

    console.log(currentUrl);


    setInterval(function() {
        $.ajax({
            type: "GET",
            url: "/health/health_status"
        });
    }, 10000);
});
