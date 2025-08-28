document.addEventListener("DOMContentLoaded", function () {
  const logo = document.querySelector(".wy-side-nav-search img");
  if (logo) {
    const link = document.createElement("a");
    link.href = "https://example.com";
    link.target = "_blank";
    logo.parentNode.insertBefore(link, logo);
    link.appendChild(logo);
  }
});
