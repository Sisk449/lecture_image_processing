# 課題9レポート

## メディアンフィルターを適用し,ノイズ除去を行う
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する。この画像は縦1062画像、横1600画素のディジタルカラー画像である。

原画像を白黒濃淡画像へ変換する。
```
ORG=imread('Yama.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す。
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai9_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによってノイズを添付する。
```
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
```
ノイズが添付された画像を図2に示す。
![ノイズ付き画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai9_2.png?raw=true)  
<div style="text-align: center;">
図2 ノイズ付き画像
</div>

以下のソースコードによって平滑化フィルタを用いてノイズの除去を行う。
```
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
```
平滑化フィルタによりノイズ除去が行われた画像を図3に示す。
![平滑化フィルタ適用後の画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai9_3.png?raw=true)  
<div style="text-align: center;">
図3 平滑化フィルタ適用後の画像
</div>

以下のソースコードによってメディアンフィルタを用いてノイズの除去を行う。
```
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
```
メディアンフィルタによりノイズ除去が行われた画像を図4に示す。
![メディアンフィルタ適用後の画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai9_4.png?raw=true)  
<div style="text-align: center;">
図4 メディアンフィルタ適用後の画像
</div>

以下のソースコードによって画像にフィルタを適用する。
```
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計
IMG = filter2(f,IMG,'same'); % フィルタの適用
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示
```
フィルタが適用された画像を図5に示す。
![フィルタ適用後の画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai9_5.png?raw=true)  
<div style="text-align: center;">
図5 フィルタ適用後の画像
</div>
平滑化フィルタによるノイズ除去ではノイズは目立たなくなったが依然としてノイズは確認できる。メディアンフィルタによるノイズ除去ではノイズが確認できないほど除去できた。また、自作のフィルタを適用することで全体が灰色がかるがノイズの除去はできている。