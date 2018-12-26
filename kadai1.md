# 課題１レポート

## 画像をダウンサンプリングして（標本化間隔を大きくして）表示する
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する。この画像は縦1062画像，横1600画素のディジタルカラー画像である.
```
ORG=imread('lacock.png'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示
```
によって，原画像を読み込み，表示した結果を図１に示す.

![原画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_1.png?raw=true)  
<div style="text-align: center;">
図1 原画像
</div>

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．
```
IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
```
1/2サンプリングの結果を図２に示す．

![1/2サンプリング](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_2.png?raw=true)  
<div style="text-align: center;">
図2 1/2サンプリング
</div>

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，
```
IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
```
とする．1/4サンプリングの結果を図３に示す．

![1/4サンプリング](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_3.png?raw=true)  
<div style="text-align: center;">
図3 1/4サンプリング
</div>

1/8から1/32サンプリングは，
```
IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大
```
を繰り返す．サンプリングの結果を図４～６に示す．

![1/8サンプリング](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_4.png?raw=true) 
<div style="text-align: center;">
図4 1/8サンプリング
</div> 

![1/16サンプリング](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_5.png?raw=true)  
<div style="text-align: center;">
図5 1/16サンプリング
</div> 

![1/32サンプリング](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai1_6.png?raw=true)  
<div style="text-align: center;">
図6 1/32サンプリング
</div> 

図2～図6からサンプリング幅が大きくなるにつれて,画像のきめも粗くなっていることが分かる.
