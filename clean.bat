rem ����ű������ڸ��´���֮�����һЩ��Ҫ�ύ��GIT�ϵĶ���
@echo off
echo ����ű���ʼִ��
echo ��ǰ·��
cd

echo ����Honeypot�����ļ�

for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\Debug" rd /S /Q "%%c\Debug"
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\Release" rd /S /Q "%%c\Release"
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\x64" rd /S /Q "%%c\x64"

echo GIT�ϴ浵�İ汾,��Ҫ����bin
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\Bin" rd /S /Q "%%c\Bin"

echo GIT�ϴ浵�İ汾,��Ҫ����PDB
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\Symbols" rd /S /Q "%%c\Symbols"

for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\objchk_win7_x86" rd /S /Q "%%c\objchk_win7_x86"
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\objchk_win7_amd64" rd /S /Q "%%c\objchk_win7_amd64"
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\objfre_win7_x86" rd /S /Q "%%c\objfre_win7_x86"
for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\objfre_win7_amd64" rd /S /Q "%%c\objfre_win7_amd64"

for /r ..\Honeypot\honeypot\ %%c in (.) do @if exist "%%c\objchk_wxp_x86" rd /S /Q "%%c\objchk_wxp_x86"

for /r ..\Honeypot\honeypot\ %%c in (*.aps *.bsc *.clw *.ilk *.log *.mac *.ncb *.obj *.opt *.plg *.positions *.suo *.user *.WW *.i) do del /f /q /s /A "%%c"

echo ����Lightvm�����ļ�

for /r ..\Lightvm\lightvm\ %%c in (.) do @if exist "%%c\Debug" rd /S /Q "%%c\Debug"
for /r ..\Lightvm\lightvm\ %%c in (.) do @if exist "%%c\Release" rd /S /Q "%%c\Release"

for /r . %%c in (.) do @if exist "%%c\Debug" rd /S /Q "%%c\Debug"
for /r . %%c in (.) do @if exist "%%c\Release" rd /S /Q "%%c\Release"

for /r ..\Lightvm\lightvm\ %%c in (*.aps *.bsc *.clw *.ilk *.log *.mac *.ncb *.obj *.opt *.plg *.positions *.suo *.user *.WW *.i) do del /f /q /s /A "%%c"

echo ���������������ļ�

for /r . %%c in (*.aps *.bsc *.clw *.ilk *.log *.mac *.ncb *.obj *.opt *.plg *.sdf *.positions *.suo *.user *.WW *.i) do del /f /q /s /A "%%c"