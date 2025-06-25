// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"

import "trix"
import "@rails/actiontext"


document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.getElementById("open-menu");
  const navLinks = document.getElementById("nav-links");

  if (toggle && navLinks) {
    toggle.addEventListener("click", () => {
      navLinks.classList.add("active");
    });
  }
});

document.addEventListener("DOMContentLoaded", () => {
  const close = document.getElementById("close-menu");
  const navLinks = document.getElementById("nav-links");

  if (close && navLinks) {
    close.addEventListener("click", () => {
      navLinks.classList.remove("active");
    });
  }
});

document.addEventListener("DOMContentLoaded", () => {
  const close = document.querySelectorAll("close-other-menu");
  const navLinks = document.getElementById("nav-links");

  if (close && navLinks) {
    close.addEventListener("click", () => {
      navLinks.classList.remove("active");
    });
  }
});
