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
  const sunImage = document.querySelector('.sun-image');
      outdoorsyEl.addEventListener('change', (e) => {
          if (e.target.checked) {
            setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            setInterval(function(){
              treeImage.style.setProperty('bottom', '-50px');
              setTimeout(() => { treeImage.style.setProperty('bottom', '0px'); }, 1000);
            }, 2000);

            setTimeout(() => { $(".sun-image").fadeIn(); }, 600)
            setInterval(function(){
              sunImage.style.transform = 'rotate(180deg)';
            }, 1000)
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

        let d = 0;
        const txtday = 'day';
        const speed = 150;
        function typeWriterDay() {
          if (d < txtday.length) {
            document.getElementById("autotype-day").innerHTML += txtday.charAt(d);
            d++;
            setTimeout(typeWriterDay, speed);
          }
        }
        setTimeout(() => { $("#arrow-day-date").fadeIn(); }, 600 )
        setTimeout(() => { typeWriterDay(); }, 1000);

        let m = 0;
        const txtmonth = 'month';
        function typeWriterMonth() {
          if (m < txtmonth.length) {
            document.getElementById("autotype-month").innerHTML += txtmonth.charAt(m);
            m++;
            setTimeout(typeWriterMonth, speed);
          }
        }
        setTimeout(() => { $("#arrow-day-month").fadeIn(); }, 1400 )
        setTimeout(() => { typeWriterMonth(); }, 1800);

        let y = 0;
        const txtyear = 'year';
        function typeWriterYear() {
          if (y < txtyear.length) {
            document.getElementById("autotype-year").innerHTML += txtyear.charAt(y);
            y++;
            setTimeout(typeWriterYear, speed);
          }
        }
        setTimeout(() => { $("#arrow-day-year").fadeIn(); }, 2000 )
        setTimeout(() => { typeWriterYear(); }, 2400);
      });
    })
  }


export { homePageInit, chosenCategory, outdoorsyCategory };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
