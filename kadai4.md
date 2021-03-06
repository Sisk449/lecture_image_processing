# 課題4レポート

## 画素の濃度ヒストグラムを生成する
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する。この画像は縦1062画像、横1600画素のディジタルカラー画像である。

原画像を白黒濃淡画像へ変換する。
```
ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す。
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai4_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによってヒストグラムを表示する。
```
imhist(ORG);
```
表示された画素の濃度ヒストグラムを図2に示す。
![画素の濃度ヒストグラム](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai4_2.png?raw=true)  
<div style="text-align: center;">
図2 画素の濃度ヒストグラム
</div>
256階調のうち、225～240の濃度値の出現回数が多いことが確認できる。