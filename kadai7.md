# 課題7レポート

## ダイナミックレンジを0から255に拡大する
原画像はフリー素材サイト([https://www.pakutaso.com/20181150325post-18565.html](https://www.pakutaso.com/20181150325post-18565.html))より利用する。この画像は縦533画像、横800画素のディジタルカラー画像である。

原画像を白黒濃淡画像へ変換する。
```
ORG=imread('Yama.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す。
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai7_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによってヒストグラムを表示する。
```
imhist(ORG);
```
表示された画素の濃度ヒストグラムを図2に示す。
![画素の濃度ヒストグラム](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai7_2.png?raw=true)  
<div style="text-align: center;">
図2 画素の濃度ヒストグラム
</div>

以下のソースコードによってダイナミックレンジを拡大する。
```
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
```
ダイナミックレンジ拡大後の画像を図3に示す。
![ダイナミックレンジ拡大後の画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai7_3.png?raw=true)  
<div style="text-align: center;">
図3 ダイナミックレンジ拡大後の画像
</div>

以下のソースコードによってダイナミックレンジ拡大後の濃度ヒストグラムを表示する。
uint8によって1バイト符号なし整数に変換している。
```
ORG = uint8(ORG); % この行について考察せよ
imhist(ORG); % 濃度ヒストグラムを生成、表示
```
表示されたダイナミックレンジ拡大後の濃度ヒストグラムを図4に示す。
![ダイナミックレンジ拡大後の濃度ヒストグラム](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai7_4.png?raw=true)  
<div style="text-align: center;">
図4 ダイナミックレンジ拡大後の濃度ヒストグラム
</div>
ダイナミックレンジを拡大することで画面中の黒く潰れた部分の詳細な濃度変化が読み取れるようになった。