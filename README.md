# LaTexAutomation
IntelliJ IDEAにてLatexのpdf出力を自動化


使用法
設定からツール　>　外部ツールに進みExternal Toolsに
+ボタンでツールを追加

ツール設定
 プログラム：　output.bat  
 引数：  $FileDir$,$FileNameWithoutExtension$  
 作業ディレクトリ：　自分がLatexファイルを置きたいディレクトリ  
 
この設定を適用した後
上部メニューのToolからExternal Toolsの中に先ほど設定したツールがあるので
使用する。
うまくコンパイルできていればLatexファイルと同じ改装にoutとpdfフォルダができる。
