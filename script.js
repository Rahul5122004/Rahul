
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