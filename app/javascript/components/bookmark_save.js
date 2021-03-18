const highlightSaveButton = () => {
  const indexCards = document.querySelectorAll('.card .bookmark-buttons');
  indexCards.forEach(indexCard => {
    saveButton.addEventListener('click', (e) => {
      e.stopPropagation();
      console.log('saved');

      if (saveButton.style.background=="white"){
          saveButton.style.background="purple";
      }else if(saveButton.style.background=="purple"){
          saveButton.style.background="white";
      }
    })
  })
}

export { highlightSaveButton };



    document.body.style.background="white";
    bac.addEventListener("click", function(){
    if (document.body.style.background=="white"){
        document.body.style.background="purple";
    }else if(document.body.style.background=="purple"){
        document.body.style.background="white";
    }

    });
