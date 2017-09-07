document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const handleListSubmit = (e) => {
    e.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const value = favoriteInput.value;
    const li = document.createElement("li");
    li.textContent = value;
    const sfPlaces = document.getElementById("sf-places");
    sfPlaces.appendChild(li);
  }

  const favoriteSubmit = document.querySelector(".favorite-submit");
  favoriteSubmit.addEventListener("click", handleListSubmit);

  // adding new photos

  // --- your code here!
  const toggleForm = (e) => {
    const photoFormContainer = document.querySelector(".photo-form-container");
    if(photoFormContainer.className === 'photo-form-container'){
      photoFormContainer.className = 'photo-form-container hidden';
    } else {
      photoFormContainer.className = 'photo-form-container';
    }
  };

  const photoShowButton = document.querySelector(".photo-show-button");
  photoShowButton.addEventListener("click", toggleForm);

  const handlePhotoSubmit = (e) => {
    e.preventDefault();
    const photoUrlInput = document.querySelector(".photo-url-input");
    const url = photoUrlInput.value;
    const img = document.createElement("img");
    img.src = url;
    const li = document.createElement("li");
    li.appendChild(img);
    const dogPhotos = document.querySelector(".dog-photos");
    dogPhotos.appendChild(li);
  }

  const photoUrlSubmit = document.querySelector(".photo-url-submit");
  photoUrlSubmit.addEventListener("click", handlePhotoSubmit);


});
