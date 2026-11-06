(function () {
  function closeOpenDetails(except) {
    document.querySelectorAll(".pub-links details[open]").forEach(function (details) {
      if (details !== except) {
        details.removeAttribute("open");
      }
    });
  }

  document.addEventListener("click", function (event) {
    closeOpenDetails(event.target.closest("details"));
  });

  document.addEventListener("keydown", function (event) {
    if (event.key === "Escape") {
      closeOpenDetails(null);
    }
  });
})();
