window.App || (window.App = {});

App.init = function() {
  // One time initializer for the app on first load
  window.viewManager = new ViewManager();
}

App.load = function() {
  // Executed each time turbolinks loads a new page
  viewManager.tick();
};

$(document).ready(App.init);
document.addEventListener("turbolinks:load", App.load);
document.addEventListener("turbolinks:before-cache", () => {
  // This might need to become smarter in the future
})
document.addEventListener("turbolinks:render", () => {
});

// document.addEventListener("turbolinks:before-render", () => console.log('------| TL: BeforeRender'))

