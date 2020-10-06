function copyUrl() {

  const copy = document.getElementById("copy-url");
  copy.addEventListener("click", (e)=>{
  //テキストボックス作成
  const element = document.createElement('input');
  //URL設定
  element.value = location.href;
  //DOMに追加
  document.body.appendChild(element);
  //選択する
  element.select();
  //コピーする
  document.execCommand('copy');
  //削除する
  document.body.removeChild(element);
  alert('マイボードのURLをコピーしました。')
  });
}

window.addEventListener("load", copyUrl);