class Post{
  int a;
  
  Post(int _a){
    a = _a;
  }
  
  void display(){
    textSize(width/12);
    text("投稿", width*0.5, height*0.05);
    textSize(width/24);
    text("[商品名]", width*0.5, height*0.11);
    text("[評価]", width*0.5, height*0.2);
    text("[値段]", width*0.1, height*0.31);
    text("[店]", width*0.1, height*0.41);
    text("[タグ]", width*0.1, height*0.51);
    text("[コメント]", width*0.12, height*0.63);
    fill(200);
    rect(width*0.1, height*0.1, width*0.3, width*0.3);
    rect(width*0.48, height*0.13, width*0.44, height*0.05);
    rect(width*0.48, height*0.22, width*0.44, height*0.05);
    rect(width*0.1, height*0.34, width*0.5, height*0.05);
    rect(width*0.1, height*0.44, width*0.5, height*0.05);
    rect(width*0.1, height*0.54, width*0.38, height*0.05);
    rect(width*0.52, height*0.54, width*0.38, height*0.05);
    rect(width*0.1, height*0.67, width*0.8, height*0.13);
    fill(255,140,0);
    rect(width*0.35, height*0.82, width*0.3, height*0.06);
    /*for(int i=0; i < 5; i++) {
      ellipse(width*(0.5 + 0.075*i), height*0.2, width*0.05, width*0.05);
    }*/
    fill(255);
    text("写真", width*0.25, height*0.19);
    fill(0);
    textSize(width/18);
    text("投稿する", width*0.5, height*0.85);
  }
  
  void buttonCheck(int x, int y){
    if (x > width*0.48 && x < width*0.92 && y > height*0.3 && y < height*0.18){
      scene = 3;
      select.mode = 0;
    }
  }
}
