@echo off

 rem ProjectName\DirectlyName
 set dirPath=%~f1%
 rem ProjectName\DirectlyName\out
 set outDirPath=%dirPath%\out
 rem 拡張子無しのファイル名
 set filename=%2%
 rem ProjectName\DirectlyName\filename
 set filePath=%dirPath%\%filename%

rem outとpdf出力用ディレクトリを作成
 call mkdir %outDirPath%
 call mkdir %dirPath%\pdf

rem コンパイル
call copy %filePath%.bib %outDirPath%\%filename%.bib
 call platex -output-derectory=%outDirPath% -synctex=1 -jobname=%filename% -kanji=utf8 -guess-input-enc %filePath%
 call pbibtex %filename% -kanji=utf8
 call platex -output-directory=%outDirPath% -synctex=1 -jobname=%filename% -kanji=utf8 -guess-input-enc %filePath%
 call platex -output-directory=%outDirPath% -synctex=1 -jobname=%filename% -kanji=utf8 -guess-input-enc %filePath% && dvipdfmx %outDirPath%\%filename%.dvi -o %dirPath%\pdf\%filename%.pdf
 exit 0
