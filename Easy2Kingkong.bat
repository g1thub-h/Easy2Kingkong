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
echo ���ű��ɸ�����¼��������  ��ǰ�汾Ϊ V2.0 (20200408)
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

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set a=54.192.151.74 www.kingkong.com.tw
set b=13.227.254.99 m.kingkong.com.tw
set c=13.226.77.11 static.kingkong.com.tw
set d=54.192.151.124 img.kingkong.com.tw
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set e=54.192.151.14 www.kingkongapp.com
set f=13.225.176.65 static.kingkongapp.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set g=13.249.171.117 api.kingkongapp.com
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

echo.&echo Ϊ��ʹ����������ȷʹ�øýű������Ƴ���ģʽ
echo.&echo ��ģʽ��һ�����Ľ����ж��Ƿ������ĳ������
echo.&echo ͬʱҲ������ԭ���Ĳ˵�ģʽ�����ڶ��ýű�ԭ����˿��ٲ���
echo.&echo ��ע�⣡����
echo.&echo ������ǵ�һ��ʹ�øýű���������֮ǰ�ű��в���֪��������ʲô����ʹ����ģʽ
echo --------------------------------------------------------------------------
echo.&echo ��ѡ����Ҫ�����ģʽ
echo.&echo 1.��ģʽ ���Ƽ�ʹ�ã�
echo.&echo 2.�˵�ģʽ
echo.&set /p choice=�������ֺ�س���

if %choice%==1 goto Guide0
if %choice%==2 goto Meun
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

echo.&echo ���ֱ����ҳ�� www.kingkong.com.tw �� www.kingkongapp.com
echo.&echo ����������������ͬ��ֱ�����ݣ�������Լ�ϲ��ѡ��
echo.&echo ���Ƽ�ʹ��www.kingkongapp.com��
echo --------------------------------------------------------------------------
echo.&echo ��ѡ����Ҫʹ�õ���վ
echo.&echo 1.www.kingkongapp.com���Ƽ�ʹ�ã�
echo.&echo 2.www.kingkong.com.tw���ܿ����Ż���Ҳ�޷����ʣ�
echo.&set /p choice=�������ֺ�س���

if %choice%==1 goto kingkongapp
if %choice%==2 goto kingkongtw
goto Guide1

:Guide2
cls
color 0A
echo.&echo ��ϲ���������ڿ�����������kingkongֱ����
echo.&echo ���ͻȻĳ���ȱʧ�������޷��������ʣ�������Bվ˽���ң����� Github ���ύ Issues
echo.&echo ���½ű����ڸ����ö���̬��UP��Ƶ��顢Ⱥ�ļ��� Github ͬ������
echo.&echo ������ñ��ű��������ã�������ע����һ����������
choice /t 5 /d y /n >nul
pause
goto End

:kingkongapp
cls
color 07
echo.&echo ����ǰ�Ƿ���ԡ������򿪲����� www.kingkongapp.com��
echo.&echo ��ʹ��Chrome��Firefox��Edge�������������������п��ܻ��������ز����ΪΣ��ҳ��
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto kingkongapp-api
if %choice%==y goto kingkongapp-api
if %choice%==N goto G-Unlock1
if %choice%==n goto G-Unlock1
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongapp

:kingkongapp-api
cls
color 70
echo.&echo ����ǰ�Ƿ���������򿪺���ʾ����ά�롿���ҵ�½
echo.&echo ��¼������ҳ���Ͻ���ʹ�� ��live APPɨ���½
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto kingkongapp-danmu
if %choice%==y goto kingkongapp-danmu
if %choice%==N goto G-Api-app
if %choice%==n goto G-Api-app
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongapp-api

:kingkongapp-danmu
cls
color 71
echo.&echo ����ǰ�Ƿ����������ʾ���ҷ��͡���Ļ��
echo.&echo ��Ļ����ؽ���������Ҫ���ˢ��
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
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongapp-danmu

:kingkongtw
cls
color 07
echo.&echo ����ǰ�Ƿ�����������򿪲����� www.kingkong.com.tw��
echo.&echo ��ʹ��Chrome��Firefox��Edge�������������������п��ܻ��������ز����ΪΣ��ҳ��
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto kingkongtw-api
if %choice%==y goto kingkongtw-api
if %choice%==N goto G-Unlock
if %choice%==n goto G-Unlock
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongtw

:kingkongtw-api
cls
color 70
echo.&echo ����ǰ�Ƿ���������򿪺���ʾ����ά�롿���ҵ�½
echo.&echo ��¼������ҳ���Ͻ���ʹ�� ��live APPɨ���½
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������
echo.&echo N.�������޷�������
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto kingkongtw-danmu
if %choice%==y goto kingkongtw-danmu
if %choice%==N goto G-Api-tw
if %choice%==n goto G-Api-tw
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongtw-api

:kingkongtw-danmu
cls
color 71
echo.&echo ����ǰ�Ƿ����������ʾ���ҷ��͡���Ļ��
echo.&echo ��Ļ����ؽ���������Ҫ���ˢ��
echo --------------------------------------------------------------------------
echo.&echo ��ѡ��
echo.&echo Y.�ǵģ��ҿ���������ʾ
echo.&echo N.�������޷�������ʾ
echo.&echo O.�Ҳ�֪���������ҿ�������Ϊ��ĸO ��������0��
echo.&set /p choice=���� Y �� N �� O ��س���

if %choice%==Y goto Guide2
if %choice%==y goto Guide2
if %choice%==N goto G-Danmu-tw
if %choice%==n goto G-Danmu-tw
if %choice%==O goto G-Open1
if %choice%==o goto G-Open1
goto kingkongtw-danmu

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
(echo %d%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ����Դ�kingkong��,����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ��ӭ֧�ָ�����ֱ���� https://www.kingkong.com.tw/2477024
echo.&echo �����ص�ѡ�����
choice /t 5 /d y /n >nul
goto kingkongtw

:G-Unlock1
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
goto kingkongapp

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
(echo %g%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo ���㿴�������ֵ�ʱ��˵���Ѿ��ɹ��Ż�api��,���ٴβ����Ƿ���Բ鿴��¼��
echo.&echo ����ʾ�ܾ��������Բ��Ƿ�����ɱ���
echo.&echo ���гɹ�,���ص�ѡ�����
choice /t 5 /d y /n >nul
goto kingkongapp-api

:G-Api-tw
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
goto kingkongtw-api

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
goto kingkongapp-danmu

:G-Danmu-tw
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
goto kingkongtw-danmu

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
explorer "https://www.kingkong.com.tw/"
goto kingkongapptw

:G-Open1
cls
echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://www.kingkongapp.com/"
goto kingkongapp

:Meun
cls

echo.&echo ���ֱ����ҳ�� www.kingkong.com.tw �� www.kingkongapp.com
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
if %choice%==debug goto Debug
goto Meun

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
goto Meun

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
goto Meun

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
goto Meun

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
goto Meun

:Restore
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
goto Meun

:Open
cls

echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://www.kingkong.com.tw/"
goto Meun

:Open1
cls

echo.&echo ��ҳ������,�Ժ�ص�ѡ�����
choice /t 3 /d y /n >nul
explorer "https://www.kingkongapp.com/"
goto Meun

:End
exit

:Debug
Start notepad %file%