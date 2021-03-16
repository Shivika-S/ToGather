const homePageInit = () => {
  const homePageInitBtn = document.querySelector('.js-home-init-btn');
  homePageInitBtn.addEventListener('click', function() {
    const categorySectionEl = document.querySelector('.js-home-category-question');
    const categoryEl = document.querySelector('.activity_category');
    window.scrollTo({
      top: categorySectionEl.offsetTop-((window.innerHeight-categoryEl.offsetHeight)/2),
      behavior: 'smooth',
    });
  });
}

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
        const dateEl = document.querySelector('#activity_start_time');
        window.scrollTo({
          top: dateSectionEl.offsetTop-((window.innerHeight-dateEl.offsetHeight)/2),
          behavior: 'smooth',
        });
      });
    })
  }

export { chosenCategory, homePageInit };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
