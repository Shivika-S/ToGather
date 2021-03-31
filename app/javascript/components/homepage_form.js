const homePageInit = () => {
  const homePageInitBtn = document.querySelector('.js-home-init-btn');
  if (homePageInitBtn) {



    homePageInitBtn.addEventListener('click', function() {
      const categorySectionEl = document.querySelector('.js-home-category-question');
      const categoryEl = document.querySelector('.activity_category');
      window.scrollTo({
        top: categorySectionEl.offsetTop,
        behavior: 'smooth',
      });
    });
  }
}

const chosenCategory = () => {
  const categoryEls = document.querySelectorAll('.form-check-input');
    categoryEls.forEach(categoryEl => {
      categoryEl.addEventListener('click', (e) => {
        const dateSectionEl = document.querySelector('.js-home-date-question');
        const autotypeDay = document.getElementById("autotype-day");
        const autotypeMonth = document.getElementById("autotype-month");
        const autotypeYear = document.getElementById("autotype-year");
        document.getElementById("arrow-day-date").style.setProperty('display', 'none');
        document.getElementById("arrow-day-month").style.setProperty('display', 'none');
        document.getElementById("arrow-day-year").style.setProperty('display', 'none');
        autotypeDay.innerHTML = ""
        autotypeMonth.innerHTML = ""
        autotypeYear.innerHTML = ""
        window.scrollTo({
          top: dateSectionEl.offsetTop,
          behavior: 'smooth',
        });

        let d = 0;
        const txtday = 'day';
        const speed = 150;
        function typeWriterDay() {
          if (d < txtday.length) {
            autotypeDay.innerHTML += txtday.charAt(d);
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
            autotypeMonth.innerHTML += txtmonth.charAt(m);
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
            autotypeYear.innerHTML += txtyear.charAt(y);
            y++;
            setTimeout(typeWriterYear, speed);
          }
        }
        setTimeout(() => { $("#arrow-day-year").fadeIn(); }, 2000 )
        setTimeout(() => { typeWriterYear(); }, 2400);
      });
    })
  }

// All Categories besides 'Sweat'

const outdoorsyCategory = () => {
  const nonSweatEls = document.querySelectorAll('#activity_category_id_2, #activity_category_id_3, #activity_category_id_4, #activity_category_id_5, #activity_category_id_6');
  const treeImage = document.querySelector('.tree-image');
  const sunImage = document.querySelector('.sun-image');
    if (nonSweatEls) {
      nonSweatEls.forEach(nonSweatEl => {
        nonSweatEl.addEventListener('change', (e) => {
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
        });
      });
    };
}

const sweatCategory = () => {
  const sweatEl = document.querySelector('#activity_category_id_1');
  const dumbbellImage = document.querySelector('.dumbbell-image');
  const marioImage = document.querySelector('.mario-image');
  const marioImageTwo = document.querySelector('.mario-two-image');
    if (sweatEl) {
      sweatEl.addEventListener('change', (e) => {
          if (e.target.checked) {
            setTimeout(() => { $(".dumbbell-image").fadeIn(); }, 1000)
            setInterval(function(){
              dumbbellImage.style.transform = 'rotate(20deg)';
              setTimeout(() => { dumbbellImage.style.transform = 'rotate(0deg)'; }, 1000);
            }, 2000);

            setTimeout(() => {
              marioImage.style.setProperty('bottom', '10vh');
              setTimeout(() => { marioImage.style.setProperty('bottom', '-35vh'); }, 1500);
              setTimeout(() => { marioImageTwo.style.setProperty('bottom', '10vh'); }, 3000);
              setTimeout(() => { marioImageTwo.style.setProperty('bottom', '-35vh'); }, 4500);
              setInterval(function(){
                marioImage.style.setProperty('bottom', '10vh');
                setTimeout(() => { marioImage.style.setProperty('bottom', '-35vh'); }, 1500);
                setTimeout(() => { marioImageTwo.style.setProperty('bottom', '10vh'); }, 3000);
                setTimeout(() => { marioImageTwo.style.setProperty('bottom', '-35vh'); }, 4500);
              }, 6000);
            }, 1000);
          };
      });
    };
}



export { homePageInit, chosenCategory, outdoorsyCategory, sweatCategory };
// window.scrollTo(($(document).width()-$(window).width())/2,0);
