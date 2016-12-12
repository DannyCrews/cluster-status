$(function() {
  setInterval(function() {
      $.ajax({
          type: "GET",
          url: "/health/health_status"
      });
  }, 10000);
});
