var TrandingSlider = new Swiper('.tranding-slider', {
    effect: 'coverflow',
    grabCursor: true,
    centeredSlides: true,
    loop: true,
    slidesPerView: 'auto',
    coverflowEffect: {
      rotate: 0,
      stretch: 0,
      depth: 100,
      modifier: 2.5,
    },
    pagination: {
      el: '.swiper-pagination',
      clickable: true,
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    }
  });
  function searchFood() {
    let input = document.getElementById("search-bar").value.toLowerCase();
    let foodItems = document.getElementsByClassName("food-item");

    for (let i = 0; i < foodItems.length; i++) {
        let foodName = foodItems[i].getElementsByTagName("h3")[0].innerText.toLowerCase();
        if (foodName.includes(input)) {
            foodItems[i].style.display = "block";
        } else {
            foodItems[i].style.display = "none";
        }
    }
}
const messages = [
    "Cooking is an art, and you're the artist! Enjoy your delicious journey! 🍳✨",
    "Great food is the foundation of happiness! Keep cooking and smiling! 😊🍲",
    "Spice up your life with delicious recipes! Keep exploring new flavors! 🌶️🥘",
    "Every meal is a chance to create magic in the kitchen! ✨🍽️",
    "A recipe has no soul, you must bring soul to the recipe! ❤️👨‍🍳"
];

document.addEventListener("DOMContentLoaded", function() {
    const headings = document.querySelectorAll("h1"); // Select all h1 elements
    
    headings.forEach((heading, index) => {
        let messageIndex = index % messages.length; // Ensure each h1 gets a different message initially

        heading.addEventListener("click", function() {
            alert(messages[messageIndex]); // Show the current message
            messageIndex = (messageIndex + 1) % messages.length; // Cycle through messages
        });
    });
});
