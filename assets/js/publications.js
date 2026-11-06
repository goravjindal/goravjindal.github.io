(function () {
  function closeOpenDetails(except) {
    document.querySelectorAll(".pub-links details[open], .course-description[open], .course-duties[open]").forEach(function (details) {
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

  document.querySelectorAll(".pub-abstract, .course-description, .course-duties").forEach(function (details) {
    details.addEventListener("toggle", function () {
      if (details.open && window.MathJax && MathJax.typesetPromise) {
        MathJax.typesetPromise([details]).catch(function () {});
      }
    });
  });
})();
