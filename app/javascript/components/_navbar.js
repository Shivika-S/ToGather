const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.main-navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lnav');
      } else {
        navbar.classList.remove('navbar-nav');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

