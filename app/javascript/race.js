window.addEventListener('load', function(){
  const maidenRaceButtons = document.querySelectorAll(".btn.btn-dark"); //未勝利のレースボタンを取得
  const wonRaceButtons = document.querySelectorAll(".btn.btn-primary"); //勝利済みのレースボタンを取得
  const maidenTargetRaceButtons = document.querySelectorAll(".btn.btn-outline-danger"); //未勝利の目標レースボタンを取得
  const wonTargetRaceButtons = document.querySelectorAll(".btn.btn-danger"); //勝利済みの目標レースボタンを取得

  const wonTargetRaceButtonsArray = Array.from(wonTargetRaceButtons);

  wonTargetRaceButtons.forEach(function (button) {
    button.addEventListener('click', function (event) {
      event.preventDefault(); // デフォルトのボタンクリックを無効化
      console.log("Button Clicked");
    });
  });
});