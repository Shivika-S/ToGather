const chosenCategory = () => {
  const categoryEls = document.querySelectorAll('.form-check-input');
    categoryEls.forEach(categoryEl => {
      categoryEl.addEventListener('change', (e) => {
        categoryEls.forEach(categoryEl => {
          if (e.target.checked) {
            categoryEl.parentNode.style.color = "yellow";
          } else {
            categoryEl.parentNode.style.color = "black";
          }
        });
        const dateSectionEl = document.querySelector('.js-home-date-question');
        window.scrollTo({
          top: dateSectionEl.offsetTop,
          behavior: 'smooth',
        });
      });
    })
  }

const homePageInit = () => {
  const homePageInitBtn = document.querySelector('.js-home-init-btn');
  homePageInitBtn.addEventListener('click', function() {
    const categorySectionEl = document.querySelector('.js-home-category-question');
    const categoryEl = document.querySelector('.category-buttons');
    window.scrollTo({
      top: categorySectionEl.offsetTop-((window.innerHeight-categoryEl.offsetHeight)/2),
      behavior: 'smooth',
    });
  });
}

export { chosenCategory, homePageInit };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
