const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-alcar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight * 0.5) {
        navbar.classList.add('nav-transparent');
      } else {
        navbar.classList.remove('nav-transparent');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
