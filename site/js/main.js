// main.js — small shared helpers for the static site
(function () {
  "use strict";
  const here = location.pathname.split("/").pop() || "index.html";
  document.querySelectorAll(".topbar nav a").forEach((a) => {
    if (a.getAttribute("href").endsWith(here)) {
      a.style.fontWeight = "700";
    }
  });
})();
