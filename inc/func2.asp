<%
'���˵�

dim UserLogined,UserName,UserLevel,ChargeType,UserPoint,ValidDays

'**************************************************
'��������gotTopic
'��  �ã����ַ���������һ���������ַ���Ӣ����һ���ַ�
'��  ����str   ----ԭ�ַ���
'       strlen ----��ȡ����
'����ֵ����ȡ����ַ���
'**************************************************
function Left2(str,strlen)
	Left2=gotTopic(str,strlen)
end function
function gotTopic(str,strlen)
	str=RemoveHTML(Cstr(str&"...")) '������ȥ��Html���
	if str="" then
		gotTopic=""
		exit function
	end if
	dim l,t,c, i
	str=replace(replace(replace(replace(str,"&nbsp;"," "),"&quot;",chr(34)),"&gt;",">"),"&lt;","<")
	l=len(str)
	t=0
	for i=1 to l
		c=Abs(Asc(Mid(str,i,1)))
		if c>255 then
			t=t+2
		else
			t=t+1
		end if
		if t>=strlen then
			gotTopic=left(str,i) & "..."
			exit for
		else
			gotTopic=str
		end if
	next
	gotTopic=replace(replace(replace(replace(gotTopic," "," "),chr(34),"&quot;"),">","&gt;"),"<","&lt;")
end function

'--ת�����س����з�...
function code_html(strers)
  dim strer:strer=strers
  if isnull(strer) or strer="" then code_html="":exit function

  strer=replace(strer,"<","&lt;")
  strer=replace(strer,">","&gt;")
  strer=replace(strer,chr(39),"&#39;")		'������
  strer=replace(strer,chr(34),"&quot;")		'˫����
  strer=replace(strer,chr(32),"&nbsp;")		'�ո�

  strer=replace(strer,chr(9),"&nbsp;��&nbsp;")'table
  strer=replace(strer,chr(10),"<br>")		'�س�
  strer=replace(strer,chr(13),"<br>")

  code_html=strer
end function


'**************************************************
'��������JoinChar
'��  �ã����ַ�м��� ? �� &
'��  ����strUrl  ----��ַ
'����ֵ������ ? �� & ����ַ
'**************************************************
function JoinChar(strUrl)
	if strUrl="" then
		JoinChar=""
		exit function
	end if
	if InStr(strUrl,"?")<len(strUrl) then 
		if InStr(strUrl,"?")>1 then
			if InStr(strUrl,"&")<len(strUrl) then 
				JoinChar=strUrl & "&"
			else
				JoinChar=strUrl
			end if
		else
			JoinChar=strUrl & "?"
		end if
	else
		JoinChar=strUrl
	end if
end function

'**************************************************
'��������showpage
'��  �ã���ʾ����һҳ ��һҳ������Ϣ
'��  ����sfilename  ----���ӵ�ַ
'       totalnumber ----������
'       maxperpage  ----ÿҳ����
'       ShowTotal   ----�Ƿ���ʾ������
'       ShowAllPages ---�Ƿ��������б���ʾ����ҳ���Թ���ת����ĳЩҳ�治��ʹ�ã���������JS����
'       strUnit     ----������λ
'**************************************************
sub showpage(sfilename,totalnumber,maxperpage,ShowTotal,ShowAllPages,strUnit)
	dim n, i,strTemp,strUrl
	if totalnumber mod maxperpage=0 then
    	n= totalnumber \ maxperpage
  	else
    	n= totalnumber \ maxperpage+1
  	end if
  	strTemp= "<table align='center'><tr><td>"
	if ShowTotal=true then 
		strTemp=strTemp & "�� <b>" & totalnumber & "</b> " & strUnit & "&nbsp;&nbsp;"
	end if
	strUrl=JoinChar(sfilename)
  	if CurrentPage<2 then
    		strTemp=strTemp & "��ҳ ��һҳ&nbsp;"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=1'>��ҳ</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage-1) & "'>��һҳ</a>&nbsp;"
  	end if

  	if n-currentpage<1 then
    		strTemp=strTemp & "��һҳ βҳ"
  	else
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & (CurrentPage+1) & "'>��һҳ</a>&nbsp;"
    		strTemp=strTemp & "<a href='" & strUrl & "page=" & n & "'>βҳ</a>"
  	end if
   	strTemp=strTemp & "&nbsp;ҳ�Σ�<strong><font color=red>" & CurrentPage & "</font>/" & n & "</strong>ҳ "
    strTemp=strTemp & "&nbsp;<b>" & maxperpage & "</b>" & strUnit & "/ҳ"
	if ShowAllPages=True then
		strTemp=strTemp & "&nbsp;ת����<select name='page' size='1' onchange=""javascript:window.location='" & strUrl & "page=" & "'+this.options[this.selectedIndex].value;"">"   
    	for i = 1 to n   
    		strTemp=strTemp & "<option value='" & i & "'"
			if cint(CurrentPage)=cint(i) then strTemp=strTemp & " selected "
			strTemp=strTemp & ">��" & i & "ҳ</option>"   
	    next
		strTemp=strTemp & "</select>"
	end if
	strTemp=strTemp & "</td></tr></table>"
	response.write strTemp
end sub

'**************************************************
'��������IsValidEmail
'��  �ã����Email��ַ�Ϸ���
'��  ����email ----Ҫ����Email��ַ
'����ֵ��True  ----Email��ַ�Ϸ�
'       False ----Email��ַ���Ϸ�
'**************************************************
function IsValidEmail(email)
	dim names, name, i, c
	IsValidEmail = true
	names = Split(email, "@")
	if UBound(names) <> 1 then
	   IsValidEmail = false
	   exit function
	end if
	for each name in names
		if Len(name) <= 0 then
			IsValidEmail = false
    		exit function
		end if
		for i = 1 to Len(name)
		    c = Lcase(Mid(name, i, 1))
			if InStr("abcdefghijklmnopqrstuvwxyz_-.", c) <= 0 and not IsNumeric(c) then
		       IsValidEmail = false
		       exit function
		     end if
	   next
	   if Left(name, 1) = "." or Right(name, 1) = "." then
    	  IsValidEmail = false
	      exit function
	   end if
	next
	if InStr(names(1), ".") <= 0 then
		IsValidEmail = false
	   exit function
	end if
	i = Len(names(1)) - InStrRev(names(1), ".")
	if i <> 2 and i <> 3 then
	   IsValidEmail = false
	   exit function
	end if
	if InStr(email, "..") > 0 then
	   IsValidEmail = false
	end if
end function

'**************************************************
'��������IsObjInstalled
'��  �ã��������Ƿ��Ѿ���װ
'��  ����strClassString ----�����
'����ֵ��True  ----�Ѿ���װ
'       False ----û�а�װ
'**************************************************
Function IsObjInstalled(strClassString)
	On Error Resume Next
	IsObjInstalled = False
	Err = 0
	Dim xTestObj
	Set xTestObj = Server.CreateObject(strClassString)
	If 0 = Err Then IsObjInstalled = True
	Set xTestObj = Nothing
	Err = 0
End Function

'**************************************************
'��������strLength
'��  �ã����ַ������ȡ������������ַ���Ӣ����һ���ַ���
'��  ����str  ----Ҫ�󳤶ȵ��ַ���
'����ֵ���ַ�������
'**************************************************
function strLength(str)
	ON ERROR RESUME NEXT
	dim WINNT_CHINESE
	WINNT_CHINESE    = (len("�й�")=2)
	if WINNT_CHINESE then
        dim l,t,c
        dim i
        l=len(str)
        t=l
        for i=1 to l
        	c=asc(mid(str,i,1))
            if c<0 then c=c+65536
            if c>255 then
                t=t+1
            end if
        next
        strLength=t
    else 
        strLength=len(str)
    end if
    if err.number<>0 then err.clear
end function

'------------------���ĳһĿ¼�Ƿ����-------------------
Function CheckDir(FolderPath)
	dim fso
	folderpath=Server.MapPath(".")&"\"&folderpath
	Set fso1 = Server.CreateObject("Scripting.FileSystemObject")
	If fso.FolderExists(FolderPath) then
	'����
		CheckDir = True
	Else
	'������
		CheckDir = False
	End if
	Set fso = nothing
End Function

'-------------����ָ����������Ŀ¼---------
Function MakeNewsDir(foldername)
	dim fso,f
	Set fso = Server.CreateObject("Scripting.FileSystemObject")
    Set f = fso.CreateFolder(foldername)
    MakeNewsDir = True
	Set fso = nothing
End Function


'**************************************************
'��������SendMail
'��  �ã���Jmail��������ʼ�
'��  ����MailtoAddress  ----�����˵�ַ
'        MailtoName    -----����������
'        Subject       -----����
'        MailBody      -----�ż�����
'        FromName      -----����������
'        MailFrom      -----�����˵�ַ
'        Priority      -----�ż����ȼ�
'**************************************************
function SendMail(MailtoAddress,MailtoName,Subject,MailBody,FromName,MailFrom,Priority)
	on error resume next
	Dim JMail
	Set JMail=Server.CreateObject("JMail.Message")
	if err then
		SendMail= "<br><li>û�а�װJMail���</li>"
		err.clear
		exit function
	end if
	JMail.Charset="gb2312"          '�ʼ�����
	JMail.silent=true
	JMail.ContentType = "text/html"     '�ʼ����ĸ�ʽ
	'JMail.ServerAddress=MailServer     '���������ʼ���SMTP������
   	'�����������ҪSMTP�����֤����ָ�����²���
	JMail.MailServerUserName = MailServerUserName    '��¼�û���
   	JMail.MailServerPassWord = MailServerPassword        '��¼����
  	JMail.MailDomain = MailDomain       '����������á�name@domain.com���������û�����¼ʱ����ָ��domain.com
	JMail.AddRecipient MailtoAddress,MailtoName     '������
	JMail.Subject=Subject         '����
	JMail.HMTLBody=MailBody       '�ʼ����ģ�HTML��ʽ��
	JMail.Body=MailBody          '�ʼ����ģ����ı���ʽ��
	JMail.FromName=FromName         '����������
	JMail.From = MailFrom         '������Email
	JMail.Priority=Priority              '�ʼ��ȼ���1Ϊ�Ӽ���3Ϊ��ͨ��5Ϊ�ͼ�
	JMail.Send(MailServer)
	SendMail =JMail.ErrorMessage
	JMail.Close
	Set JMail=nothing
end function

'**************************************************
'��������WriteErrMsg
'��  �ã���ʾ������ʾ��Ϣ
'��  ������
'**************************************************
sub WriteErrMsg()
	dim strErr
	strErr=strErr & "<html><head><title>������Ϣ</title><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>" & vbcrlf
	strErr=strErr & "<link href='ad_STYLE.CSS' rel='stylesheet' type='text/css'></head><body><br><br>" & vbcrlf
	strErr=strErr & "<table cellpadding=2 cellspacing=1 border=0 width=400 class='border' align=center>" & vbcrlf
	strErr=strErr & "  <tr align='center' class='title'><td height='22'><strong>������Ϣ</strong></td></tr>" & vbcrlf
	strErr=strErr & "  <tr class='tdbg'><td height='100' valign='top'><b>��������Ŀ���ԭ��</b>" & errmsg &"</td></tr>" & vbcrlf
	strErr=strErr & "  <tr align='center' class='tdbg'><td><a href='javascript:history.go(-1)'>&lt;&lt; ������һҳ</a></td></tr>" & vbcrlf
	strErr=strErr & "</table>" & vbcrlf
	strErr=strErr & "</body></html>" & vbcrlf
	response.write strErr
end sub

'**************************************************
'��������WriteSuccessMsg
'��  �ã���ʾ�ɹ���ʾ��Ϣ
'��  ������
'**************************************************
sub WriteSuccessMsg(SuccessMsg)
	dim strSuccess
	strSuccess=strSuccess & "<html><head><title>�ɹ���Ϣ</title><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>" & vbcrlf
	strSuccess=strSuccess & "<link href='ad_style.css' rel='stylesheet' type='text/css'></head><body><br><br>" & vbcrlf
	strSuccess=strSuccess & "<table cellpadding=2 cellspacing=1 border=0 width=400 class='border' align=center>" & vbcrlf
	strSuccess=strSuccess & "  <tr align='center' class='title'><td height='22'><strong>��ϲ�㣡</strong></td></tr>" & vbcrlf
	strSuccess=strSuccess & "  <tr class='tdbg'><td height='100' valign='top'><br>" & SuccessMsg &"</td></tr>" & vbcrlf
	strSuccess=strSuccess & "  <tr align='center' class='tdbg'><td>&nbsp;</td></tr>" & vbcrlf
	strSuccess=strSuccess & "</table>" & vbcrlf
	strSuccess=strSuccess & "</body></html>" & vbcrlf
	response.write strSuccess
end sub

'**************************************************
'��������CheckUserLogined
'��  �ã�����û��Ƿ��¼
'��  ������
'����ֵ��True ----�Ѿ���¼
'        False ---û�е�¼
'**************************************************
function CheckUserLogined()
	dim Logined,Password,rsLogin,sqlLogin
	Logined=True
	UserName=Request.Cookies("luyeweb")("UserName")
	Password=Request.Cookies("luyeweb")("Password")
	UserLevel=Request.Cookies("luyeweb")("UserLevel")
	if UserName="" then
		Logined=False
	end if
	if Password="" then
		Logined=False
	end if
	if UserLevel="" then
		Logined=False
		UserLevel=9999
	end if
	if Logined=True then
		username=replace(trim(username),"'","")
		password=replace(trim(password),"'","")
		UserLevel=Cint(trim(UserLevel))
		set rsLogin=server.createobject("adodb.recordset")
		sqlLogin="select * from " & db_User_Table & " where " & db_User_LockUser & "=False and " & db_User_Name & "='" & username & "' and " & db_User_Password & "='" & password &"'"
		rsLogin.open sqlLogin,Conn_User,1,1
		if rsLogin.bof and rsLogin.eof then
			Logined=False
		else
			if password<>rsLogin(db_User_Password) or UserLevel<rsLogin(db_User_UserLevel) then
				Logined=False
			end if
			UserName=rsLogin(db_User_Name)
			UserLevel=rsLogin(db_User_UserLevel)
			ChargeType=rsLogin(db_User_ChargeType)
			UserPoint=rsLogin(db_User_UserPoint)
		  	if rsLogin(db_User_Valid_Unit)=1 then
				ValidDays=rsLogin(db_User_Valid_Num)
		  	elseif rsLogin(db_User_Valid_Unit)=2 then
				ValidDays=rsLogin(db_User_Valid_Num)*30
		  	elseif rsLogin(db_User_Valid_Unit)=3 then
				ValidDays=rsLogin(db_User_Valid_Num)*365
		  	end if
		  	ValidDays=ValidDays-DateDiff("D",rsLogin(db_User_BeginDate),now())
		end if
		rsLogin.close
		set rsLogin=nothing
	end if
	CheckUserLogined=Logined
end function

'**************************************************
'��������ReplaceBadChar
'��  �ã����˷Ƿ���SQL�ַ�
'��  ����strChar-----Ҫ���˵��ַ�
'����ֵ�����˺���ַ�
'**************************************************
function ReplaceBadChar(strChar)
	if strChar="" then
		ReplaceBadChar=""
	else
		ReplaceBadChar=replace(replace(replace(replace(replace(replace(replace(strChar,"'",""),"*",""),"?",""),"(",""),")",""),"<",""),".","")
	end if
end function


Function RemoveHTML(strHTML)
 Dim objRegExp, Match, Matches 
 Set objRegExp = New Regexp
 
 objRegExp.IgnoreCase = True
 objRegExp.Global = True
 'ȡ�պϵ�<>
 objRegExp.Pattern = "<.+?>"
 '����ƥ��
 Set Matches = objRegExp.Execute(Cstr(strHTML &"..."))
 
 ' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ
 For Each Match in Matches 
 strHtml=Replace(strHTML,Match.Value,"")
 Next
 RemoveHTML=strHTML
 Set objRegExp = Nothing
End Function
%>
