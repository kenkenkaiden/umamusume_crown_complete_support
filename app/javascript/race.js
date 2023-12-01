window.addEventListener('load', function(){
  const maidenRaceButtons = document.querySelectorAll(".btn.btn-dark"); //未勝利のレースボタンを取得
  const wonRaceButtons = document.querySelectorAll(".btn.btn-primary"); //勝利済みのレースボタンを取得
  const maidenTargetRaceButtons = document.querySelectorAll(".btn.btn-outline-danger"); //未勝利の目標レースボタンを取得
  const wonTargetRaceButtons = document.querySelectorAll(".btn.btn-danger"); //勝利済みの目標レースボタンを取得

// 未勝利のレースボタンのクリックイベント
maidenRaceButtons.forEach(function (button) {
  button.addEventListener('click', function (event) {
    event.preventDefault();

    // 勝利済みのボタンと対応するデザインに切り替える処理
    wonRaceButtons.forEach(function (wonButton) {
      wonButton.classList.add("btn-dark");
      wonButton.classList.remove("btn-primary");
    });

    // 未勝利のボタンはそのまま
    button.classList.remove("btn-dark");
    button.classList.add("btn-primary");
  });
});

});