@echo off&PUSHD %~DP0 &TITLE Easy2Kingkong
color 0A
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

echo --------------------------------------------------------------------------
echo ���ű��ɸ�����¼��������  ��ǰ�汾Ϊ V2.1 (20200501)
echo.&echo ������� �������� ���ű�ֻ�����ǰ��DNS��Ⱦ����
echo.&echo �ýű�ʧЧ������ GitHub ���ύ Issues
echo.&echo ���½ű����ڸ����ö���̬��UP��Ƶ��顢Ⱥ�ļ��� Github ͬ������
echo.
echo --------------------------------------------------------------------------
echo.&echo ������ʾ�ܾ����ʵĶ���û���Թ���Աģʽ����������
echo.&echo ����ر�ɱ���������������ʦ�����߰���Ķ�������
echo.&echo �˽ű�������һ�Ρ���Ͳ����ٴ���
echo.&echo �����ĳ��ֲ��ɿ�������ֱ�����Ͻǹرսű�����ɾ��,�ű����˲�û�н����κβ���
echo.
echo ---------------------------------------------------------------------------
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set file=C:\Windows\System32\Drivers\etc\hosts
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set a=13.32.53.51 play.lang.live
set b=54.192.151.124 static.kingkongapp.com
set c=13.32.53.112 play-api.lang.live
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set d=54.192.151.111 api.kingkongapp.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set e=*.*.*.* state-1.lv-show.com
set f=*.*.*.* state-2.lv-show.com
set g=*.*.*.* state-3.lv-show.com
set h=103.210.23.233 cht.ws.kingkong.com.tw
set i=23.91.101.80 cht-1.ws.kingkong.com.tw
set j=107.150.124.169 cht-2.ws.kingkong.com.tw
set k=36.255.220.6 ctl.ws.kingkong.com.tw
set l=23.91.97.192 ctl-1.ws.kingkong.com.tw
set m=103.14.33.45 ctl-2.ws.kingkong.com.tw
set n=45.249.245.27 ctl-3.ws.kingkong.com.tw
set o=103.72.146.38 ctl-4.ws.kingkong.com.tw
set p=128.1.136.140 state-1.ws.kingkong.com.tw
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo ����������Ķ����������ݣ�����ͬ��������밴��ָʾ���룬���������Ķ��᡾���½ű��˳���
echo.&set /p option=������ Y Ȼ��س���������
if %option%==Y goto :Verify
if %option%==y goto :Verify
exit

:Verify

cls
echo.&echo ��Ϊ������֤,ּ�ڷ�ֹ���ֵ�,ϲ��UP�Ļ��ǵá������ע�����ҡ�һ������������
echo.&echo ���ڴ򿪵���ҳ���ҵ���������UP�ġ��ǳơ�Ȼ��س�,�ǳ�Ӧ��Ϊ��Сд���»���
choice /t 2 /d y /n >nul
explorer "https://space.bilibili.com/180659383"
echo.&set /p Nicename=
if %Nicename%==Ailiaili_ goto :Start
exit

:Start

cls
echo.&echo Ϊ��ʹ����������ȷʹ�øýű������Ƴ���ģʽ
echo.&echo ��ģʽ��һ�����Ľ����ж��Ƿ������ĳ������
echo.&echo ɾ���˲˵�ģʽ����Ϊ������ͬ���޸���
echo.&echo ��ע�⣡����
echo.&echo ������ǵ�һ��ʹ�øýű���������֮ǰ�ű��в���֪��������ʲô����ʹ����ģʽ
echo --------------------------------------------------------------------------
echo.&echo ��ѡ����Ҫ�����ģʽ
echo.&echo 1.��ģʽ ���Ƽ�ʹ�ã�
echo.&set /p choice=�������ֺ�س���

if %choice%==1 goto Guide0
if %choice%==debug goto Debug
goto Start

:Guide0

cls
echo.&echo ������֮ǰ�Ƿ�ʹ�øýű��ġ���ǰ�汾��
echo.&echo ѡ�� Y ���ָ�ԭʼhosts�ļ�
echo.&echo ����⣬Ϊ��ʹ�ű���Ч���ָ�ԭʼhosts�ļ��Ǳز����ٵ�
echo.&echo �������֪�����������ˣ�Ҳ������ѡ�� Y �ָ�һ��
echo --------------------------------------------------------------------------
echo.&echo Y.�ǵģ���ʹ�ù�
echo.&echo N.�������ǵ�һ��ʹ�ã�������û��Ч����ʹ�� Y ���ָ���
echo.&set /p choice=���� Y �� N ��س���

if %choice%==y goto G-Restore
if %choice%==Y goto G-Restore
if %choice%==n goto Guide1
if %choice%==N goto Guide1
goto Guide0

:Guide1

cls
echo.&echo ���(kingkong)ֱ��������Ӫ�����ڽ�����Play�����ṩ����
echo.&echo ��Playƽ̨����ַΪ play.lang.live
echo.&echo �������������������վӦ�á����ý����κΡ��Ż�������������,�����Ҫ���Ż�һ�µ�Ļ��������Ҳ൯Ļ��������ʾ��
echo.&echo ������Ȼ�����һ���ִ򲻿����߱ȽϿ�������������Ҿ͸�һ�°ɡ���������ʵ��ʹ������������Ƿ���Ҫ�Ż�
echo --------------------------------------------------------------------------
echo.&echo ��ѡ����Ҫʹ�õ���վ
echo.&echo 1.play.lang.live
echo.&set /p choice=�������ֺ�س���

if %choice%==1 goto langplay
goto Guide1

:Guide2

cls
color 0A
echo.&echo ��ϲ���������ڿ�������������Playֱ����
echo.&echo ���ͻȻĳ���ȱʧ�������޷��������ʣ�������Bվ˽���ң����� Github ���ύ Issues
echo.&echo ���½ű����ڸ����ö���̬��UP��Ƶ��顢Ⱥ�ļ��� Github ͬ������
echo.&echo ������ñ��ű��������ã�������ע����һ����������
choice /t 5 /d y /n >nul
pause
goto End

:langplay

cls
color 07
echo.&echo ����ǰ�Ƿ���ԡ������򿪲����� play.lang.live ��
echo.&echo ��ʹ��Chrome��Firefox��Edge�������������������п��ܻ��������ز����ΪΣ��ҳ��
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto langplay-api
if %choice%==y goto langplay-api
if %choice%==N goto G-Unlock
if %choice%==n goto G-Unlock
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay

:langplay-api

cls
color 70
echo.&echo ����ǰ�Ƿ���������򿪺���ʾ����ά�롿���ҵ�½
echo.&echo ��¼������ҳ���Ͻ���ʹ�� ��live APPɨ���½��������΢��ɨ!
echo.&echo ��ע��
echo.&echo �����ά����������ʾ������ҳ��������
echo.&echo �ֻ�ɨ���޷�Ӧ������ʾ��ʱ�����ֻ��˵����⣬����ҳ�޹أ�����������Play�ٷ�Э����������߻����ֻ�ȥɨ
echo.&echo ��ά����ʾ������ˢ����ҳ
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto langplay-danmu
if %choice%==y goto langplay-danmu
if %choice%==N goto G-Api-app
if %choice%==n goto G-Api-app
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay-api

:langplay-danmu

cls
color 71
echo.&echo ����ǰ�Ƿ����������ʾ���ҷ��͡���Ļ��
echo.&echo ��Ļ����ؽ���������Ҫ���ˢ��
echo.&echo ���ڴ󲿷�����˵����һ���Ż��Ǳ�Ҫ��
echo.&echo ��ע��
echo.&echo �������Ƿ��½�������������ҳ�Ҳ�ĵ�Ļ���������ʾ��Ļ
echo.&echo ��½������������Ҳ൯Ļ��ֻ����һ�ˣ�����Ҫ�����Ż���ָ���� N ��
echo.&echo �Ż�������ˢ�»��߶໻���������Ϊ���ؽ�����������������������нű�
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������ʾ
echo.&echo N.�������޷�������ʾ
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto Guide2
if %choice%==y goto Guide2
if %choice%==N goto G-Danmu-app
if %choice%==n goto G-Danmu-app
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay-danmu

:G-Unlock

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%�ļ������ڣ��Ѵ������ļ���
    ) else (
		echo %file%�ļ��Ѵ��ڣ����贴����	
    )
echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %a%) >> %file%
(echo %b%) >> %file%
(echo %c%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ����Դ���Play��,����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ��ӭ֧�ָ�����ֱ���� https://play.lang.live/2477024
echo.&echo �����ص�ѡ�����
choice /t 5 /d y /n >nul
goto langplay

:G-Api-app

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%�ļ������ڣ��Ѵ������ļ���
    ) else (
		echo %file%�ļ��Ѵ��ڣ����贴����	
    )

echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %d%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ��ɹ��Ż�api��,���ٴβ����Ƿ���Բ鿴��¼��
echo.&echo ����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ���гɹ�,���ص�ѡ�����
choice /t 5 /d y /n >nul
goto langplay-api

:G-Danmu-app

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%�ļ������ڣ��Ѵ������ļ���
    ) else (
		echo %file%�ļ��Ѵ��ڣ����贴����	
    )
echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %h%) >> %file%
(echo %i%) >> %file%
(echo %j%) >> %file%
(echo %k%) >> %file%
(echo %l%) >> %file%
(echo %m%) >> %file%
(echo %n%) >> %file%
(echo %o%) >> %file%
(echo %p%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ��ɹ��Ż���Ļ��,���ٴβ����Ƿ���Բ鿴��Ļ
echo.&echo ����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ���гɹ�,���ص�ѡ�����
choice /t 5 /d y /n >nul
goto langplay-danmu

:G-Restore

cls
echo.&echo �˲����Ὣ hosts �ļ���ԭΪWindowsĬ��״̬������Ը��ļ��й������޸ĵ��롾��ǰ���ݡ���
echo.&echo �����Ҫ������ֱ�����Ͻǹرսű������ݺ��ٴ����У��ű����˲�û�н����κβ���
echo.&echo ��֪������˵ʲô�Ŀ���ֱ�ӽ�����һ������
echo.&pause

if not exist %file% (
        echo %file%�ļ��ѻָ�
    ) else (
	    del /a /f /q %file%
		
    )
echo.&type nul>%file%
echo �ָ����,���ص�ѡ�����
choice /t 3 /d y /n >nul
goto Guide1

:G-Open

cls
echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://play.lang.live/"
goto langplay

:End
exit

:Debug
Start notepad %file%