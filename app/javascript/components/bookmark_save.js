const highlightSaveButton = () => {
  const saveButtons = document.querySelectorAll('.bookmark-buttons');
  saveButtons.forEach(saveButton => {
    saveButton.addEventListener('click', (e) => {
      e.preventDefault();
      console.log('saved');
    })
  })
}
export { highlightSaveButton };
