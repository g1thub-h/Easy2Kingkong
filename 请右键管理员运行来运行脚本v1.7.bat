@echo off&PUSHD %~DP0 &TITLE Easy2Kingkong

>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

echo -----------------------------------------------------------------------------------------
echo ���ű��ɸ�����¼��������  ��ǰ�汾Ϊ V1.7 ��20200220��
echo.
echo ������� �������� ���ű�ֻ�����ǰ��DNS��Ⱦ����
echo.
echo �ýű�ʧЧ������ GitHub ���ύ Issues
echo.
echo ���½ű�����Ⱥ��̬��UP��Ƶ����Githubͬ������
echo.
echo.
echo ������ʾ�ܾ����ʵĶ���û���Թ���Աģʽ����������
echo.
echo ����ر�ɱ���������������ʦ�����߰���Ķ�������
echo.
echo �˽ű�����һ�κ�Ͳ����ٴ���
echo.
echo �����ĳ��ֲ��ɿ�������ֱ�����Ͻǹرսű�����ɾ��,�ű����˲�û���޸��κβ���
echo.
echo ------------------------------------------------------------------------------------------
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set file=C:\Windows\System32\Drivers\etc\hosts
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set a=99.86.144.37 www.kingkong.com.tw
set b=54.230.173.113 m.kingkong.com.tw
set c=99.84.142.75 static.kingkong.com.tw
set d=13.224.161.65 img.kingkong.com.tw

set n=99.86.144.109 api.kingkongapp.com
set o=99.86.144.93 www.kingkongapp.com

set p=23.2.134.221 connect.facebook.net

set e=103.210.23.233 cht.ws.kingkong.com.tw
set f=23.91.101.80 cht-1.ws.kingkong.com.tw
set g=107.150.124.169 cht-2.ws.kingkong.com.tw
set h=36.255.220.6 ctl.ws.kingkong.com.tw
set i=23.91.97.192 ctl-1.ws.kingkong.com.tw
set j=103.14.33.45 ctl-2.ws.kingkong.com.tw
set k=45.249.245.27 ctl-3.ws.kingkong.com.tw
set l=103.72.146.38 ctl-4.ws.kingkong.com.tw
set m=128.1.136.140 state-1.ws.kingkong.com.tw

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set /p option=����������Ķ����������ݣ�����ͬ������������� Y Ȼ��س��������У����������Ķ��ᵼ�½ű��˳�
if %option%==Y goto :Verify
if %option%==y goto :Verify
exit


:Verify

echo.
echo ��Ϊ������֤,ּ�ڷ�ֹ���ֵ�,ϲ��UP�Ļ��ǵá������ע�����ҡ�һ������������
echo.
choice /t 1 /d y /n >nul
explorer "https://space.bilibili.com/180659383"
set /p Nicename=���ڴ򿪵���ҳ���ҵ���������UP�ġ��ǳơ���ȷ�ϼ�������,�ǳ�Ӧ��Ϊ��Сд���»���
if %Nicename%==Ailiaili_ goto :Start
exit

:Start
cls
echo.
echo ��ѡ��Ҫ������ѡ������ù���ǰ�ű��������� 2 ������ 1 ���򲻻�ɹ���
echo.
set /p choice=1.�Ż�kingkong 2.�ָ�hosts�ļ� 3.��kingkong��ҳ 4.�˳� 0.�����Ż���ֱ�Ӵ�kingkong(���򲻿�������Ż�)
echo.
if %choice%==1 goto Unlock
if %choice%==2 goto Restore
if %choice%==3 goto Open
if %choice%==4 goto End
if %choice%==0 goto Temp

:Unlock

echo.
choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if not exist %file% (
        type nul>%file%
		echo %file%�ļ������ڣ��Ѵ������ļ���
    ) else (
		echo %file%�ļ��Ѵ��ڣ����贴����	
    )
echo.
choice /t 2 /d y /n >nul
 
(echo.) >> %file%
(echo -------------��Ϊ�ӿ�kingkong�Ĵ���-------------) >> %file%
(echo %a%) >> %file%
(echo %b%) >> %file%
(echo %c%) >> %file%
(echo %d%) >> %file%
(echo %e%) >> %file%
(echo %f%) >> %file%
(echo %g%) >> %file%
(echo %h%) >> %file%
(echo %i%) >> %file%
(echo %j%) >> %file%
(echo %k%) >> %file%
(echo %l%) >> %file%
(echo %m%) >> %file%
(echo %n%) >> %file%
(echo %o%) >> %file%
(echo %p%) >> %file%
(echo -------------��Ϊ�ӿ�kingkong�Ĵ���-------------) >> %file%

echo ���㿴�������ֵ�ʱ��˵���Ѿ����Դ�kingkong��,����ʾ�ܾ����������Ա��ʽ����
echo.
echo ��ӭ֧�ָ�����ֱ���� https://www.kingkong.com.tw/2477024
echo.
echo ���гɹ�,���ص�ѡ�����
choice /t 5 /d y /n >nul
goto Start

:Restore

echo.
echo �˲����Ὣhosts�ļ���ԭΪWindowsĬ��״̬������Ը��ļ��й������޸ĵ�����ǰ���ݡ�
echo.
echo ��֪������˵ʲô�Ŀ���ֱ�ӽ�����һ������
echo.
pause

choice /t 2 /d y /n >nul

if not exist %file% (
        echo %file%�ļ������ڣ����ûָ�
    ) else (
	    del /a /f /q %file%
		
    )
echo.
type nul>%file%
echo �ָ����,���ص�ѡ�����
choice /t 2 /d y /n >nul
goto Start

:Open
echo.
echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 2 /d y /n >nul
explorer "https://www.kingkong.com.tw/"
goto Start

:End
exit

:Temp
echo.
echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 2 /d y /n >nul
explorer "https://www.kingkongapp.com/"
goto Start
