const homePageInit = () => {
  const homePageInitBtn = document.querySelector('.js-home-init-btn');
  homePageInitBtn.addEventListener('click', function() {
    const categorySectionEl = document.querySelector('.js-home-category-question');
    const categoryEl = document.querySelector('.activity_category');
    window.scrollTo({
      top: categorySectionEl.offsetTop,
      behavior: 'smooth',
    });
  });
}

const chosenCategory = () => {
  const categoryEls = document.querySelectorAll('.form-check-input');
  const treeImage = document.querySelector('.tree-image');
    categoryEls.forEach(categoryEl => {
      categoryEl.addEventListener('change', (e) => {
        categoryEls.forEach(categoryEl => {
          if (e.target.checked) {
            setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            setInterval(function(){
              treeImage.style.setProperty('bottom', '-50px');
              setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            }, 2000);


          }
        });
        const dateSectionEl = document.querySelector('.js-home-date-question');
        const dateEl = document.querySelector('#activity_start_time');
        window.scrollTo({
          top: dateSectionEl.offsetTop,
          behavior: 'smooth',
        });
      });
    })
  }

export { chosenCategory, homePageInit };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
