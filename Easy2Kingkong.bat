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
echo ���ű��ɸ�����¼��������  ��ǰ�汾Ϊ V1.9 (20200403)
echo.&echo ������� �������� ���ű�ֻ�����ǰ��DNS��Ⱦ����
echo.&echo �ýű�ʧЧ������ GitHub ���ύ Issues
echo.&echo ���½ű�����Ⱥ��̬��UP��Ƶ���� Github ͬ������
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

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set a=54.192.151.74 www.kingkong.com.tw
set b=13.227.254.99 m.kingkong.com.tw
set c=13.226.77.11 static.kingkong.com.tw
set d=54.192.151.124 img.kingkong.com.tw
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set e=54.192.151.14 www.kingkongapp.com
set f=13.225.176.65 static.kingkongapp.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set g=99.84.142.122 api.kingkongapp.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
echo.&echo ���ֱ����ҳ��www.kingkong.com.tw �� www.kingkongapp.com
echo.&echo ����������������ͬ��ֱ�����ݣ�������Լ�ϲ��ѡ��
echo.&echo ���Ƽ�ʹ��www.kingkongapp.com��
echo.&echo ���������ܡ�����ʹ�á��͡����Ż���,��������ٸ�����Ҫȥ��ѡ��
echo.&echo ѡ�� 1 �� 2 ��������ҳ�Ż����������ܡ���Ҫ���ѡ�� 3 �� 4 һ��ʹ�û����������
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��Ҫ������ѡ��ù�����ǰ�汾������������ 7 �����������ģ�
echo.&echo 1.�Ż� www.kingkong.com.tw ��ҳ
echo.&echo 2.�Ż� www.kingkongapp.com ��ҳ
echo.&echo 3.�Ż�api�ӿ� (����޷��鿴����¼��������������ܲ鿴�ͱ�ѡ���)
echo.&echo 4.�Ż���Ļ�ӿ� (����޷��鿴����Ļ��������������ܲ鿴�ͱ�ѡ���)
echo.&echo 5.�� www.kingkong.com.tw ��ҳ(���޷���������1�Ż�)
echo.&echo 6.�� www.kingkongapp.com ��ҳ(���޷���������2�Ż�)
echo.&echo 7.�ָ�ԭʼhosts�ļ�
echo.&echo 0.�˳�
echo.&set /p choice=�������ֺ�س���

if %choice%==1 goto Unlock
if %choice%==2 goto Unlock1
if %choice%==3 goto Api
if %choice%==4 goto Danmu
if %choice%==5 goto Open
if %choice%==6 goto Open1
if %choice%==7 goto Restore
if %choice%==0 goto End

:Unlock
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
(echo %d%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ����Դ�kingkong��,����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ��ӭ֧�ָ�����ֱ���� https://www.kingkong.com.tw/2477024
echo.&echo �����ص�ѡ�����
choice /t 5 /d y /n >nul
goto Start

:Unlock1
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
(echo %e%) >> %file%
(echo %f%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ����Դ�kingkong��,����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ��ӭ֧�ָ�����ֱ���� https://www.kingkongapp.com/2477024
echo.&echo �����ص�ѡ�����
choice /t 5 /d y /n >nul
goto Start

:Api
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
(echo %g%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ��ɹ��Ż�api��,���ٴβ����Ƿ���Բ鿴��¼��
echo.&echo ����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ���гɹ�,���ص�ѡ�����
choice /t 5 /d y /n >nul
goto Start

:Danmu
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
(echo %g%) >> %file%
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
goto Start

:Restore
cls
echo.&echo �˲����Ὣ hosts �ļ���ԭΪWindowsĬ��״̬������Ը��ļ��й������޸ĵ��롾��ǰ���ݡ���
echo.&echo �����Ҫ������ֱ�����Ͻǹرսű������ݺ��ٴ����У��ű����˲�û�н����κβ���
echo.&echo ��֪������˵ʲô�Ŀ���ֱ�ӽ�����һ������
echo.&pause

if not exist %file% (
        echo %file%�ļ������ڣ����ûָ�
    ) else (
	    del /a /f /q %file%
		
    )
echo.&type nul>%file%
echo �ָ����,���ص�ѡ�����
choice /t 3 /d y /n >nul
goto Start

:Open
cls
echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://www.kingkong.com.tw/"
goto Start

:Open1
cls
echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://www.kingkongapp.com/"
goto Start

:End
exit