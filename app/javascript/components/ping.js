function ping() {
  var http = require("http");
  setInterval(function() {
    http.get("https://alcar.herokuapp.com");
    console.log('ping');
  }, 300000);
}

export { ping };
