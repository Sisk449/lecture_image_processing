# 課題3レポート

## 画像を閾値処理する
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する.この画像は縦1062画像，横1600画素のディジタルカラー画像である．

原画像を白黒濃淡画像へ変換する.
```
ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す.
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

閾値を4パターン設定し,閾値処理した画像を示す.
以下のソースコードによって輝度値が65以上の画素を1，その他を0に変換する.
```
IMG = ORG > 64;
imagesc(IMG); colormap(gray); colorbar; axis image;
```
輝度値64で閾値処理した結果を図2に示す.
![輝度値64で閾値処理した画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_2.png?raw=true)  
<div style="text-align: center;">
図2 輝度値64で閾値処理した画像
</div>

以下のソースコードによって輝度値が97以上の画素を1，その他を0に変換する.
```
IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar; axis image;
```
輝度値96で閾値処理した結果を図3に示す.
![輝度値96で閾値処理した画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_3.png?raw=true)  
<div style="text-align: center;">
図3 輝度値96で閾値処理した画像
</div>

以下のソースコードによって輝度値が129以上の画素を1，その他を0に変換する.
```
IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar; axis image;
```
輝度値128で閾値処理した結果を図4に示す.
![輝度値128で閾値処理した画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_4.png?raw=true)  
<div style="text-align: center;">
図4 輝度値128で閾値処理した画像
</div>

以下のソースコードによって輝度値が193以上の画素を1，その他を0に変換する.
```
IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar; axis image;
```
輝度値192で閾値処理した結果を図5に示す.
![輝度値192で閾値処理した画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_5.png?raw=true)  
<div style="text-align: center;">
図5 輝度値192で閾値処理した画像
</div>
図2～図4では家の壁の形や窓を確認することができるが,図5ではそれらの情報が失われている.
