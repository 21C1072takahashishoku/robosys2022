# robosys2022
ロボットシステム学の練習リポジトリ  
インストール方法  
```$ git clone git@github.com:s21c1072/robosys2022.git```
# plusコマンド
![test](https://github.com/s21c1072/robosys2022/actions/workflows/test.yml/badge.svg)  
標準入力から読み込んだ数字を足す。  
```$  seq 7 | ./plus  28```  

# plus_stdinコマンド

標準入力から読み込んだ数字を足す。   
標準入力から読み込んだ数値を乗ずる。   
標準入力から読み込んだ数字の平均を求める。  
```$ seq 7 | ./plus_stdin
28 5040 4.0  #1から7までの和、積、平均#```

## 必要なソフトウェア
* Python
  * テスト済み: 3.7〜3.10

## テスト環境
* Ubuntu

## ライセンス
 * このソフトウェアパッケージは、3条項BSDライセンスのもと、再頒布および使用が許可されます。
  * © 2022 Shoku Takahashi
