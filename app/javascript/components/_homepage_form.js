const chosenCategory = () => {
  const category = document.querySelectorAll('.form-check-input');
    category.addEventListener('change', () => {
      if (this.checked) {
        this.style.color = "yellow";
      } else {
        this.style.color = "black";
      }
    });
  }
}

export { chosenCategory };
