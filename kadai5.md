# 課題5レポート

## 判別分析法を用いて画像を二値化する
原画像は([http://i.imgur.com/XiuMs3d.jpg](http://i.imgur.com/XiuMs3d.jpg))より利用する.この画像は縦2048画像，横1364画素のディジタルカラー画像である.

原画像を白黒濃淡画像へ変換する.
```
ORG=imread('Kurena.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す.
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai5_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

以下のソースコードによって判別分析法を用いて画像を二値化する.
```
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H);
max_val = 0;
max_thres = 1;
for i=1:255
C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
C2 = H(i+1:256);
n1 = sum(C1); %画素数の算出
n2 = sum(C2);
myu1 = mean(C1); %平均値の算出
myu2 = mean(C2);
sigma1 = var(C1); %分散の算出
sigma2 = var(C2);
sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
end;
end;

IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar; axis image;
pause;
```
表示された2値画像を図2に示す.
![2値画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai5_2.png?raw=true)  
<div style="text-align: center;">
図2 2値画像
</div>
対象物の人間に加えて背景の文字も対象物として判別されてしまった.