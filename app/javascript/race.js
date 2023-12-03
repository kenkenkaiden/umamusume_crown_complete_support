window.addEventListener('load', function(){
  const maidenRaceButtons = document.querySelectorAll(".btn.btn-dark"); //未勝利のレースボタンを取得
  const wonRaceButtons = document.querySelectorAll(".btn.btn-primary"); //勝利済みのレースボタンを取得
  const maidenTargetRaceButtons = document.querySelectorAll(".btn.btn-outline-danger"); //未勝利の目標レースボタンを取得
  const wonTargetRaceButtons = document.querySelectorAll(".btn.btn-danger"); //勝利済みの目標レースボタンを取得

// // 未勝利のレースボタンをクリックしたときの挙動
// maidenRaceButtons.forEach(function (button) {
//   button.addEventListener('click', function (event) {
//     event.preventDefault();
//     button.classList.remove("btn-dark");
//     button.classList.add("btn-primary");
//   });
// });

// // 勝利済みのレースボタンをクリックしたときの挙動
// wonRaceButtons.forEach(function (button) {
//   button.addEventListener('click', function (event) {
//     event.preventDefault();
//     button.classList.remove("btn-primary");
//     button.classList.add("btn-dark");
//   });
// });



// // 未勝利の目標レースボタンをクリックしたときの挙動
// maidenTargetRaceButtons.forEach(function (button) {
//   button.addEventListener('click', function (event) {
//     event.preventDefault();
//     button.classList.remove("btn-outline-danger");
//     button.classList.add("btn-danger");
//   });
// });



// // 勝利済みの目標レースボタンをクリックしたときの挙動 これが上手く行かない
// wonTargetRaceButtons.forEach(function (button) {
//   button.addEventListener('click', function (event) {
//     event.preventDefault();
//     button.classList.remove("btn-danger");
//     button.classList.add("btn-outline-danger");
//   });
// });

// });