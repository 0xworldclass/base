// build-counter.js — display the public commit milestone
(function () {
  "use strict";
  const el = document.getElementById("commit-count");
  if (!el) return;
  // The repo passes 100 public commits; keep the badge honest.
  el.textContent = "100+";
  el.title = "Only public commits are tracked.";
})();
