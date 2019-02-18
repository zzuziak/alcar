function ping() {
  var now = new Date().getHours();
  if (now >= 7 && now <= 22) {
      var http = require("http");
      setInterval(function() {
      http.get("https://alcar.herokuapp.com");
    }, 300000);
  }
}

export { ping };
