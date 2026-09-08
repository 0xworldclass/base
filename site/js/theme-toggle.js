// theme-toggle.js — persist a manual light/dark choice
(function () {
  "use strict";
  const KEY = "base-theme";
  const btn = document.getElementById("theme-toggle");
  const root = document.documentElement;
  const saved = localStorage.getItem(KEY);
  if (saved) root.setAttribute("data-theme", saved);
  btn.addEventListener("click", () => {
    const next = root.getAttribute("data-theme") === "dark" ? "light" : "dark";
    root.setAttribute("data-theme", next);
    localStorage.setItem(KEY, next);
  });
})();
