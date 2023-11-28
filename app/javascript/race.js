window.addEventListener('load', function(){
  const raceButtons = document.querySelectorAll(".btn.btn-primary, .btn.btn-danger");

  const buttonsArray = Array.from(raceButtons);

  buttonsArray.forEach(function (button) {
    button.addEventListener('click', function (event) {
      event.preventDefault(); // デフォルトのボタンクリックを無効化
      console.log("Button Clicked");
    });
  });
});