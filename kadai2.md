# 課題2レポート

## ２階調，４階調，８階調の画像を生成する
原画像はフリー素材サイト([https://www.pakutaso.com/](https://www.pakutaso.com/))より利用する。この画像は縦1062画像，横1600画素のディジタルカラー画像である．

原画像を白黒濃淡画像へ変換する.
rgb2grayにより原画像をグレースケール強度イメージ I に変換,colormapによりカラーマップをgrayに設定する.
```
ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
 原画像を白黒濃淡画像に変換した結果を図1に示す.
 ![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_1.png?raw=true)  
図1 白黒濃淡画像

以下のソースコードによって2階調画像に変換する.
```
IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
2階調画像に変換した結果を図2に示す.
![2階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_2.png?raw=true)  
図2 2階調画像

以下のソースコードによって4階調画像に変換する.
```
IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
4階調画像に変換した結果を図3に示す.
![4階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_3.png?raw=true)  
図3 4階調画像

以下のソースコードによって8階調画像に変換する.
```
IMG0 = ORG>32;  
IMG1 = ORG>64;  
IMG2 = ORG>96;  
IMG3 = ORG>128;  
IMG4 = ORG>160;  
IMG5 = ORG>192;  
IMG6 = ORG>224;  
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
8階調画像に変換した結果を図4に示す.
![8階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_4.png?raw=true)  
図4 8階調画像
