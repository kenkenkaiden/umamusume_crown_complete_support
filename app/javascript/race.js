window.addEventListener('load', function () {
  const raceButtons = document.getElementsByClassName("button_to");

  const buttonsArray = Array.from(raceButtons);

  buttonsArray.forEach(function (button) {
    button.addEventListener('mouseover', function () {
      console.log("mouseover OK");
    });
  });
});