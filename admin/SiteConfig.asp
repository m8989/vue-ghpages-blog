<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<%
'option explicit
'response.buffer=true	
'Const PurviewLevel=1
'response.write "�˹��ܱ���ʱ��ֹ�ˣ�"
'response.end
%>
<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/config.asp"-->
<!--# inc lude file file="ad_ChkPurview.asp"-->
<!--#include file="../inc/func_dxzm.asp"-->
<%
dim ObjInstalled,Action,FoundErr,ErrMsg
ObjInstalled=IsObjInstalled("Scripting.FileSystemObject")
Action=trim(request("Action"))
if Action="" then
	Action="ShowInfo"
end if
%>
<html>
<head>
<title>ר�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="ad_Style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
    <tr> 
      
    <td height="22" colspan=2 align=center class="topbg"><b>�� վ �� ��</b></td>
    </tr>
  </table>
<%
if Action="SaveConfig" then
	call SaveConfig()
else
	call ShowConfig()
end if
if FoundErr=True then
	call WriteErrMsg()
end if
call CloseConn()

sub ShowConfig()
%>
<form method="POST" action="?" id="form1" name="form1">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
    <tr class=title> 
      <td height="22" colspan="2"> <a name="SiteInfo"></a><strong>��վ��Ϣ����</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ���ƣ�</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteName" type="text" id="SiteName" value="<%=SiteName%>" size="40" maxlength="50">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ���⣺</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteTitle" type="text" id="SiteTitle" value="<%=SiteTitle%>" size="40" maxlength="50">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ��ַ��</strong><br>
        ����д����URL��ַ</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteUrl" type="text" id="SiteUrl" value="<%=SiteUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ����Ŀ¼��</strong><br>
        ����д��վ��Ӧ�ó�������Ŀ¼</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="This_Site_Path" type="text" id="This_Site_Path" value="<%=This_Site_Path%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>LOGO��ַ��</strong><br>
        ����д����URL��ַ</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="LogoUrl" type="text" id="LogoUrl" value="<%=LogoUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>Banner��ַ��</strong><br>
        ����д����URL��ַ����Ϊ�գ�����Banner����ʾ��������Ԥ��Ĺ�档</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="BannerUrl" type="text" id="BannerUrl" value="<%=BannerUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>վ��������</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterName" type="text" id="WebmasterName" value="<%=WebmasterName%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>վ�����䣺</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterEmail" type="text" id="WebmasterEmail" value="<%=WebmasterEmail%>" size="40" maxlength="100">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>վ���绰��</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterTel" type="text" id="WebmasterTel" value="<%=WebmasterTel%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>վ�����õ绰��</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterTel2" type="text" id="WebmasterTel2" value="<%=WebmasterTel2%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>վ�����棺</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterFax" type="text" id="WebmasterFax" value="<%=WebmasterFax%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ�ƹ�ؼ��֣�</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="meta_keyword" type="text" id="meta_keyword" value="<%=meta_keyword%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��վ�ƹ�������</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="meta_description" type="text" id="meta_description" value="<%=meta_description%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>��Ȩ��Ϣ��</strong><br>
        ֧��HTML��ǣ�����ʹ��˫����</td>
      <td width="368" height="25" class="tdbg"> 
        <textarea name="Copyright" cols="32" rows="4" id="Copyright"><%=Copyright%></textarea>
      </td>
    </tr>

    <tr class="title"> 
      <td height="22" colspan="2"><a name="Email"></a><strong>�ʼ�������ѡ��</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>�ʼ����������</strong><br>
        ��һ��Ҫѡ����������Ѱ�װ�����</td>
      <td height="25" class="tdbg"> 
        <select name="MailObject" id="MailObject">
          <option value="Jmail" selected>Jmail</option>
        </select>
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP��������ַ��</strong><br>
        ���������ʼ���SMTP������<br>
        ����㲻����˲������壬����ϵ��Ŀռ��� </td>
      <td height="25" class="tdbg"> 
        <input name="MailServer" type="text" id="MailServer" value="<%=MailServer%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP��¼�û�����</strong><br>
        ����ķ�������ҪSMTP�����֤ʱ�������ô˲���</td>
      <td height="25" class="tdbg"> 
        <input name="MailServerUserName" type="text" id="MailServerUserName" value="<%=MailServerUserName%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP��¼���룺</strong><br>
        ����ķ�������ҪSMTP�����֤ʱ�������ô˲��� </td>
      <td height="25" class="tdbg"> 
        <input name="MailServerPassWord" type="text" id="MailServerPassWord" value="<%=MailServerPassWord%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP����</strong>��<br>
        ����á�name@domain.com���������û�����¼ʱ����ָ��domain.com</td>
      <td height="25" class="tdbg"> 
        <input name="MailDomain" type="text" id="MailDomain" value="<%=MailDomain%>" size="40">
      </td>
    </tr>
    <tr class="title"> 
      <td height="22" colspan="2"><a name="Email"></a><strong>������ҳѡ��</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>������ҳ���ࣺ</strong><br>
        ��:Ĭ����ҳ/��������/��˾���/��֯����<br />/�ɳ�����/��ϵ����/��֤֤��/�˲���Ƹ</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="AboutType" type="text" id="AboutType" value="<%=Join(AboutType,"/")%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td height="40" colspan="2" align="center" class="tdbg"> 
        <input name="Action" type="hidden" id="Action" value="SaveConfig">
        <input name="cmdSave" type="submit" id="cmdSave" value=" �������� " <% If ObjInstalled=false Then response.write "disabled" %>>
      </td>
    </tr>
    <%
If ObjInstalled=false Then
	Response.Write "<tr class='tdbg'><td height='40' colspan='3'><b><font color=red>��ķ�������֧�� FSO(Scripting.FileSystemObject)! ����ʹ�ñ����ܡ�<br>��ֱ���޸ġ�Inc/config.asp���ļ��е����ݡ�</font></b></td></tr>"
End If
%>
  </table>
<%
end sub
%>
</form>
</body>
</html>
<%
sub SaveConfig()
	If ObjInstalled=false Then
		FoundErr=True
		ErrMsg=ErrMsg & "<br><li>��ķ�������֧�� FSO(Scripting.FileSystemObject)! </li>"
		exit sub
	end if
	dim fso,hf
	set fso=Server.CreateObject("Scripting.FileSystemObject")
	set hf=fso.CreateTextFile(Server.mappath("../inc/config.asp"),true)
	hf.write "<" & "%" & vbcrlf

	hf.write "'Const " & vbcrlf

	hf.write "SiteName=" & chr(34) & trim(request("SiteName")) & chr(34) & "        '��վ����" & vbcrlf
	hf.write "SiteTitle=" & chr(34) & trim(request("SiteTitle")) & chr(34) & "        '��վ����" & vbcrlf
	hf.write "SiteUrl=" & chr(34) & trim(request("SiteUrl")) & chr(34) & "        '��վ��ַ" & vbcrlf
	hf.write "LogoUrl=" & chr(34) & trim(request("LogoUrl")) & chr(34) & "        'Logo��ַ" & vbcrlf
	hf.write "BannerUrl=" & chr(34) & trim(request("BannerUrl")) & chr(34) & "        'Banner��ַ" & vbcrlf
	hf.write "WebmasterName=" & chr(34) & trim(request("WebmasterName")) & chr(34) & "        'վ������" & vbcrlf
	hf.write "WebmasterEmail=" & chr(34) & trim(request("WebmasterEmail")) & chr(34) & "        'վ������" & vbcrlf
	hf.write "WebmasterTel=" & chr(34) & trim(request("WebmasterTel")) & chr(34) & "        'վ������" & vbcrlf
	hf.write "WebmasterTel2=" & chr(34) & trim(request("WebmasterTel2")) & chr(34) & "        'վ������" & vbcrlf
	hf.write "WebmasterFax=" & chr(34) & trim(request("WebmasterFax")) & chr(34) & "        'վ������" & vbcrlf
	hf.write "Copyright=" & chr(34) & trim(request("Copyright")) & chr(34) & "        '��Ȩ��Ϣ" & vbcrlf
	hf.write "MailObject=" & chr(34) & trim(request("MailObject")) & chr(34) & "        '�ʼ��������" & vbcrlf
	hf.write "MailServer=" & chr(34) & trim(request("MailServer")) & chr(34) & "        '���������ʼ���SMTP������" & vbcrlf
	hf.write "MailServerUserName=" & chr(34) & trim(request("MailServerUserName")) & chr(34) & "        '��¼�û���" & vbcrlf
	hf.write "MailServerPassWord=" & chr(34) & trim(request("MailServerPassWord")) & chr(34) & "        '��¼����" & vbcrlf
	hf.write "MailDomain=" & chr(34) & trim(request("MailDomain")) & chr(34) & "        '����" & vbcrlf

	hf.write "" & vbcrlf

	hf.write "'վ���Щ���ñ�������" & vbcrlf
	hf.write "This_Site_Path="& chr(34) & trim(request("This_Site_Path")) & chr(34) &" " & vbcrlf 
	hf.write "'���վ�����ڵ�����·���������Ĭ��·������Ϊ""���գ� ���Ϊsite,���Ϊ""/site"" �������/��β" & vbcrlf
	hf.write "'�˲�������ҳ�ļ��Զ��޸ģ������û����ó���" & vbcrlf
	hf.write "This_Site_Name=SiteTitle " & vbcrlf
	hf.write "NoCheckAdmin=1 '1Ϊ������û���Ϊadmin��ȫСд����Ȩ��,0ΪҪ����admin��Ȩ��" & vbcrlf

	Req_AboutType=trim(request("AboutType"))
	If(Req_AboutType="") Then
		Req_AboutType="��������/Ĭ����ҳ/��˾���/��֯����/�ɳ�����/��ϵ����/��֤֤��/�˲���Ƹ/�쵼�´�"
	End if
	hf.write "AboutType=Split("& chr(34) & Req_AboutType & chr(34) & ",""/"") " & vbcrlf 

	hf.write "meta_keyword="& chr(34)& trim(request("meta_keyword")) & chr(34)& "" &vbcrlf 
	hf.write "meta_description="& chr(34)& trim(request("meta_description")) & chr(34)& "" &vbcrlf 

	hf.write "'Response.Write (""<meta name='author' content='������(��������)' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='Copyright' content='������(��������)' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='keyword' content='""& meta_keyword & ""' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='description' content='""& meta_description &""' />"")" & vbcrlf 
	
	hf.write "%" & ">"
	hf.close
	set hf=nothing
	set fso=nothing
	call WriteSuccessMsg("��վ���ñ���ɹ���")
end sub
%>

