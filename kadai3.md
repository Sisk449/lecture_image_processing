# 課題3レポート

原画像はフリー素材サイト([https://www.pakutaso.com/](https://www.pakutaso.com/))より利用する。この画像は縦1062画像，横1600画素のディジタルカラー画像である．

ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示

 原画像をグレースケールに変換した結果を図1に示す.
 ![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_1.png?raw=true)  
図1 グレースケール画像

閾値を4パターン設定し,閾値処理した画像を示す.
以下のソースコードによって輝度値が64以上の画素を1，その他を0に変換する.

IMG = ORG > 64;
imagesc(IMG); colormap(gray); colorbar;

輝度値64で閾値処理した結果を図2に示す.
![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_2.png?raw=true)  
図2 輝度値64で閾値処理した画像

以下のソースコードによって輝度値が96以上の画素を1，その他を0に変換する.

IMG = ORG > 96;
imagesc(IMG); colormap(gray); colorbar;

輝度値96で閾値処理した結果を図3に示す.
![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_3.png?raw=true)  
図3 輝度値96で閾値処理した画像

以下のソースコードによって輝度値が128以上の画素を1，その他を0に変換する.

IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;

輝度値128で閾値処理した結果を図4に示す.
![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_4.png?raw=true)  
図4 輝度値128で閾値処理した画像

以下のソースコードによって輝度値が192以上の画素を1，その他を0に変換する.

IMG = ORG > 192;
imagesc(IMG); colormap(gray); colorbar;

輝度値192で閾値処理した結果を図5に示す.
![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai3_5.png?raw=true)  
図5 輝度値192で閾値処理した画像
