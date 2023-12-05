// JavaScript
document.addEventListener("DOMContentLoaded", function() {
  window.addEventListener("scroll", function() {
      if (window.scrollY > 0) {
          document.body.classList.add("scrolling");
      } else {
          document.body.classList.remove("scrolling");
      }
  });
});

