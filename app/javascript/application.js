// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
//= require jquery3
//= require popper
//= require bootstrap

const hamburgerBtn = document.querySelector(".hamburger-btn");
const closeBtn = document.querySelector(".close-btn");
const navList = document.querySelector(".nav_items");

hamburgerBtn.addEventListener("click", function () {
  navList.style.display = "block";
  hamburgerBtn.style.display = "none";
  closeBtn.style.display = "block";
});

closeBtn.addEventListener("click", function () {
  navList.style.display = "none";
  hamburgerBtn.style.display = "block";
  closeBtn.style.display = "none";
});
