const highlightSaveButton = () => {
  const indexCards = document.querySelectorAll('.card .index-save-btn');
  indexCards.forEach(saveButton => {
    saveButton.addEventListener('click', (e) => {
      e.stopPropagation();
      console.log('saved');

      if (saveButton.classList.contains('btn-outline-secondary')){
          saveButton.classList.remove('btn-outline-secondary');
          saveButton.classList.add('btn-secondary');
      }else if(saveButton.classList.contains('btn-secondary')){
          saveButton.classList.remove('btn-secondary');
          saveButton.classList.add('btn-outline-secondary');
      }
    })
  })
}

export { highlightSaveButton };
