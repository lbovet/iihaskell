// custom.js
require(["base/js/events"], function(events) {
  events.on('kernel_ready.Kernel', function () {
    IPython.notebook.kernel.execute(":opt no-lint")
  });
});

function updateHeader(condition) {
  require(["base/js/events"], function(events) {
    if(condition) {
      $("#header").children().hide();
    } else {
      $("#header").children().show();
    }
    events.trigger('resize-header.Page');
  });
}

window.onresize = function() {
  console.log("Resized", window.outerHeight, window.screen.availHeight)
  updateHeader(window.outerHeight == window.screen.height);
}
// in case the fullscreen detecton does not work

document.onkeypress = function KeyPress(e){
   e = e || window.event;
   if (e.key=="¢") {
     updateHeader($("#menubar-container").is(":visible"))
   }
}
