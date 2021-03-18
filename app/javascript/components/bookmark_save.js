const highlightSaveButton = () => {
  const saveButtons = document.querySelectorAll('.index-search-btn');
  saveButtons.forEach(saveButton => {
    saveButton.addEventListener('click', (e) => {
      e.preventDefault();
      console.log('saved');
    })
  })
}
export { highlightSaveButton };
