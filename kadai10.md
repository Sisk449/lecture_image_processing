# 課題10レポート

## 画像のエッジ抽出を行う
原画像はフリー素材サイト([https://www.pakutaso.com/20181102305post-18313.html](https://www.pakutaso.com/20181102305post-18313.html))より利用する。この画像は縦1062画像、横1600画素のディジタルカラー画像である。

原画像を白黒濃淡画像へ変換する。
```
ORG=imread('Yama.png'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray);  
imagesc(ORG); colorbar; axis image; % 画像の表示
```
原画像を白黒濃淡画像に変換した結果を図1に示す。
![白黒濃淡画像](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai10_1.png?raw=true)  
<div style="text-align: center;">
図1 白黒濃淡画像
</div>

プレウィット法によってエッジ抽出を行う。
```
IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）
imagesc(IMG); colormap('gray'); colorbar; axis image;% 画像表示
```
表示された画像を図2に示す。
![プレウィット法](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai10_2.png?raw=true)  
<div style="text-align: center;">
図2 プレウィット法
</div>

ソベル法によってエッジ抽出を行う。
```
IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）
imagesc(IMG); colormap('gray'); colorbar; axis image;% 画像表示
```
表示された画像を図3に示す。
![ソベル法](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai10_3.png?raw=true)  
<div style="text-align: center;">
図3 ソベル法
</div>

キャニー法によってエッジ抽出を行う。
```
IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）
imagesc(IMG); colormap('gray'); colorbar; axis image;% 画像表示
```
表示された画像を図4に示す。
![キャニー法](https://github.com/Sisk449/lecture_image_processing/blob/master/image/kadai10_4.png?raw=true)  
<div style="text-align: center;">
図4 キャニー法
</div>
輪郭の部分が白くなり輪郭抽出が行われた。プレウィット法とソベル法では差は大きくないがソベル法の方が輪郭は抽出されている。キャニー法ではさらに細かく輪郭抽出が行われた。