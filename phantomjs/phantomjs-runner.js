var system = require('system');
var url = system.args[1] || '';

if(url.length > 0) {
  var page = require('webpage').create();
  page.viewportSize = {
    width: 1280,
    height: 960
  };
  page.onResourceError = function(resourceError) {
    page.reason = resourceError.errorString;
    page.reason_url = resourceError.url;
  };
  page.open(url, function (status) {
    if (status == 'success') {
      var try_count = 0;
      var delay, checker = (function() {
        var status_element_id = system.args[2] || '';
        try_count += 1;
        var html = page.evaluate(function (status_element_id) {
          var body;
          if(status_element_id == "")
          {  body = document.getElementsByTagName('body')[0];}
          else
          {  body = document.getElementById(status_element_id);}
          if(body == null || body.getAttribute('data-status') == null || body.getAttribute('data-status') == 'ready') {
            return document.getElementsByTagName('html')[0].outerHTML;
          }
        }, status_element_id);
        if(html) {
          clearTimeout(delay);
          console.log(html);
          phantom.exit();
        }
        else if(try_count > 50){
          phantom.exit(1);
        }
      });
      delay = setInterval(checker, 100);
    }
    else {
      console.log("Error opening url \"" + page.reason_url + "\": " + page.reason);
      phantom.exit(1);
    }
  });
}