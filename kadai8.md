# 課題8レポート

## 二値化された画像の連結成分にラベルをつける
原画像はMicrosoftペイントによって作成した.この画像は縦720画像，横1152画素のディジタルカラー画像である.

原画像を白黒濃淡画像へ変換する.
```
ORG=imread('Yama.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す.
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai8_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによって2値画像に変換する.
```
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
```
表示された2値画像を図2に示す.
![2値画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai8_2.png?raw=true)  
<div style="text-align: center;">
図2 2値画像
</div>

以下のソースコードによって連結成分にラベルをつける.
```
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; axis image; % 画像の表示
```
表示された画像を図2に示す.
![連結成分でラベル付けされた画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai8_3.png?raw=true)  
<div style="text-align: center;">
図2 連結成分でラベル付けされた画像
</div>
