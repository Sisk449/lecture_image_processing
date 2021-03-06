% 課題６　画像の二値化
% 下記のプログラムを参考にして画像を二値化せよ．
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア
ORG=imread('lacock.png'); % 原画像の入力
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
pause; % 一時停止


IMG = ORG>128; % 一時停止
imagesc(IMG); colormap(gray); colorbar; axis image; % 一時停止
pause;

IMG = dither(ORG); % 一時停止
imagesc(IMG); colormap(gray); colorbar; axis image; % 画像の表示

