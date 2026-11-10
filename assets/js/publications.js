document.querySelectorAll(".pub-abstract, .course-details").forEach(function (details) {
  details.addEventListener("toggle", function () {
    if (details.open && window.MathJax && window.MathJax.typesetPromise) {
      window.MathJax.typesetPromise([details]).catch(function () {});
    }
  });
});
