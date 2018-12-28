# 課題2レポート

## ２階調、４階調、８階調の画像を生成する
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する。この画像は縦1062画像、横1600画素のディジタルカラー画像である。

原画像を白黒濃淡画像へ変換する。
rgb2grayにより原画像をグレースケール強度イメージ I に変換、colormapによりカラーマップをgrayに設定する。
```
ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す。0～255の256階調の画像である。
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによって2階調画像に変換する。256階調を0～127を0、128～255を1に変換することで2階調の画像に変換している。
```
IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
2階調画像に変換した結果を図2に示す。
![2階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_2.png?raw=true)  
<div style="text-align: center;">
図2 2階調画像
</div>

以下のソースコードによって4階調画像に変換する。256階調を0～63を0、64～127を1、128～191を2、192～255を3に変換することで4階調の画像に変換している。
```
IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
4階調画像に変換した結果を図3に示す。
![4階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_3.png?raw=true)  
<div style="text-align: center;">
図3 4階調画像
</div>

以下のソースコードによって8階調画像に変換する。256階調を0～31を0、32～63を1、64～95を2、96～127を3、128～159を4、160～191を5、192～223を6、224～255を7に変換することで8階調の画像に変換している。
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
8階調画像に変換した結果を図4に示す。
![8階調画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai2_4.png?raw=true)  
<div style="text-align: center;">
図4 8階調画像
</div>

8階調画像の中央上部の雲に疑似輪郭が発生していることが分かる。また、2階調画像では雲の情報が完全に失われた。