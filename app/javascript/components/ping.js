function ping() {
  var now = new Date().getHours();
    setInterval(function() {
      if (now >= 7 && now <= 22) {
        var http = require("http");
        http.get("https://alcar.herokuapp.com");
      }
    }, 300000);
  }

export { ping };
