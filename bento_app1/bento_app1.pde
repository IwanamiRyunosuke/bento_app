//クラスを定義（Searchは検索画面、Postは投稿画面を制御）
Search search;
Post post;
Select select;

//どの画面なのかを制御（検索：０　投稿：１　設定：２　投稿中の選択画面：３）
int scene = 0;

void setup() {
  size(9*40, 16*40);
  //日本語表示を可能に
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  
  search = new Search(0);
  post = new Post(0);
  select = new Select(0);
}
    
    
void draw(){
  //背景色
  background(255);
  
  //画面下のメニューボタン
  fill(255,215,0);
  for (int i = 0; i < 3; i++){
    rect(width/3 * i, height*0.9, width/3, height*0.1);
  }
  textAlign(CENTER, CENTER);
  textSize(width/12);
  fill(0);
  text("検索", width/6, height*0.95);
  text("投稿", width/6*3, height*0.95);
  text("設定", width/6*5, height*0.95);
  
  //sceneに応じて画面表示
  switch(scene){
    case 0:
      search.display();
      break;
    case 1:
      post.display();
      break;
  }
}


//ボタンが離されたとき
void mouseReleased(MouseEvent e) {
  //マウスポインタの位置を取得
  int x = e.getX(), y = e.getY();
  
  //画面下部のメニューボタンが押されたかを判定し、押されていたらsceneを変更
  if(y > height*0.9){
    if (x < width/3){
      scene = 0;
    }else if(x < width/3*2){
      scene = 1;
    }else{
      scene = 2;
    }
  }else if(scene == 0){
    
  }else if(scene == 1){
    post.buttonCheck(x, y);
  }
}
