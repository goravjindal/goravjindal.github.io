(function () {
  var root = document.documentElement;
  var button = document.querySelector(".theme-toggle");

  if (!button) {
    return;
  }

  button.addEventListener("click", function () {
    var next = root.dataset.theme === "dark" ? "light" : "dark";
    root.dataset.theme = next;

    try {
      localStorage.setItem("theme", next);
    } catch (e) {
      /* Storage can be unavailable in private browsing. */
    }
  });
})();
