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

const outdoorsyCategory = () => {
  const outdoorsyEl = document.querySelector('#activity_category_outdoorsy');
  const treeImage = document.querySelector('.tree-image');
      outdoorsyEl.addEventListener('change', (e) => {
          if (e.target.checked) {
            setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            setInterval(function(){
              treeImage.style.setProperty('bottom', '-50px');
              setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            }, 2000);
          };
          const dateSectionEl = document.querySelector('.js-home-date-question');
          window.scrollTo({
            top: dateSectionEl.offsetTop,
            behavior: 'smooth',
          });
      });
    }

const chosenCategory = () => {
  const categoryEls = document.querySelectorAll('.form-check-input');
    categoryEls.forEach(categoryEl => {
      categoryEl.addEventListener('click', (e) => {
        const dateSectionEl = document.querySelector('.js-home-date-question');
        window.scrollTo({
          top: dateSectionEl.offsetTop,
          behavior: 'smooth',
        });
        let i = 0;
        const txt = 'day';
        const speed = 250;
        function typeWriter() {
          if (i < txt.length) {
            document.getElementById("autotype-day").innerHTML += txt.charAt(i);
            i++;
            setTimeout(typeWriter, speed);
          }
        }
        setTimeout(() => { typeWriter(); }, 1500);
      });
    })
  }


export { homePageInit, chosenCategory, outdoorsyCategory };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
