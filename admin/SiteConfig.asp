<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<%
'option explicit
'response.buffer=true	
'Const PurviewLevel=1
'response.write "此功能被暂时禁止了！"
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
<title>专题管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="ad_Style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
    <tr> 
      
    <td height="22" colspan=2 align=center class="topbg"><b>网 站 配 置</b></td>
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
      <td height="22" colspan="2"> <a name="SiteInfo"></a><strong>网站信息配置</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站名称：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteName" type="text" id="SiteName" value="<%=SiteName%>" size="40" maxlength="50">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站标题：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteTitle" type="text" id="SiteTitle" value="<%=SiteTitle%>" size="40" maxlength="50">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站地址：</strong><br>
        请添写完整URL地址</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="SiteUrl" type="text" id="SiteUrl" value="<%=SiteUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站虚拟目录：</strong><br>
        请添写网站的应用程序虚拟目录</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="This_Site_Path" type="text" id="This_Site_Path" value="<%=This_Site_Path%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>LOGO地址：</strong><br>
        请添写完整URL地址</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="LogoUrl" type="text" id="LogoUrl" value="<%=LogoUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>Banner地址：</strong><br>
        请添写完整URL地址。若为空，则在Banner处显示广告管理中预设的广告。</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="BannerUrl" type="text" id="BannerUrl" value="<%=BannerUrl%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>站长姓名：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterName" type="text" id="WebmasterName" value="<%=WebmasterName%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>站长信箱：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterEmail" type="text" id="WebmasterEmail" value="<%=WebmasterEmail%>" size="40" maxlength="100">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>站长电话：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterTel" type="text" id="WebmasterTel" value="<%=WebmasterTel%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>站长备用电话：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterTel2" type="text" id="WebmasterTel2" value="<%=WebmasterTel2%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>站长传真：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="WebmasterFax" type="text" id="WebmasterFax" value="<%=WebmasterFax%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站推广关键字：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="meta_keyword" type="text" id="meta_keyword" value="<%=meta_keyword%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>网站推广描述：</strong></td>
      <td width="368" height="25" class="tdbg"> 
        <input name="meta_description" type="text" id="meta_description" value="<%=meta_description%>" size="40" maxlength="20">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>版权信息：</strong><br>
        支持HTML标记，不能使用双引号</td>
      <td width="368" height="25" class="tdbg"> 
        <textarea name="Copyright" cols="32" rows="4" id="Copyright"><%=Copyright%></textarea>
      </td>
    </tr>

    <tr class="title"> 
      <td height="22" colspan="2"><a name="Email"></a><strong>邮件服务器选项</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>邮件发送组件：</strong><br>
        请一定要选择服务器上已安装的组件</td>
      <td height="25" class="tdbg"> 
        <select name="MailObject" id="MailObject">
          <option value="Jmail" selected>Jmail</option>
        </select>
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP服务器地址：</strong><br>
        用来发送邮件的SMTP服务器<br>
        如果你不清楚此参数含义，请联系你的空间商 </td>
      <td height="25" class="tdbg"> 
        <input name="MailServer" type="text" id="MailServer" value="<%=MailServer%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP登录用户名：</strong><br>
        当你的服务器需要SMTP身份验证时还需设置此参数</td>
      <td height="25" class="tdbg"> 
        <input name="MailServerUserName" type="text" id="MailServerUserName" value="<%=MailServerUserName%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP登录密码：</strong><br>
        当你的服务器需要SMTP身份验证时还需设置此参数 </td>
      <td height="25" class="tdbg"> 
        <input name="MailServerPassWord" type="text" id="MailServerPassWord" value="<%=MailServerPassWord%>" size="40">
      </td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>SMTP域名</strong>：<br>
        如果用“name@domain.com”这样的用户名登录时，请指明domain.com</td>
      <td height="25" class="tdbg"> 
        <input name="MailDomain" type="text" id="MailDomain" value="<%=MailDomain%>" size="40">
      </td>
    </tr>
    <tr class="title"> 
      <td height="22" colspan="2"><a name="Email"></a><strong>独立网页选项</strong></td>
    </tr>
    <tr> 
      <td width="400" height="25" class="tdbg"><strong>独立网页种类：</strong><br>
        如:默认首页/关于我们/公司简介/组织机构<br />/成长历程/联系我们/认证证书/人才招聘</td>
      <td width="368" height="25" class="tdbg"> 
        <input name="AboutType" type="text" id="AboutType" value="<%=Join(AboutType,"/")%>" size="40" maxlength="255">
      </td>
    </tr>
    <tr> 
      <td height="40" colspan="2" align="center" class="tdbg"> 
        <input name="Action" type="hidden" id="Action" value="SaveConfig">
        <input name="cmdSave" type="submit" id="cmdSave" value=" 保存设置 " <% If ObjInstalled=false Then response.write "disabled" %>>
      </td>
    </tr>
    <%
If ObjInstalled=false Then
	Response.Write "<tr class='tdbg'><td height='40' colspan='3'><b><font color=red>你的服务器不支持 FSO(Scripting.FileSystemObject)! 不能使用本功能。<br>请直接修改“Inc/config.asp”文件中的内容。</font></b></td></tr>"
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
		ErrMsg=ErrMsg & "<br><li>你的服务器不支持 FSO(Scripting.FileSystemObject)! </li>"
		exit sub
	end if
	dim fso,hf
	set fso=Server.CreateObject("Scripting.FileSystemObject")
	set hf=fso.CreateTextFile(Server.mappath("../inc/config.asp"),true)
	hf.write "<" & "%" & vbcrlf

	hf.write "'Const " & vbcrlf

	hf.write "SiteName=" & chr(34) & trim(request("SiteName")) & chr(34) & "        '网站名称" & vbcrlf
	hf.write "SiteTitle=" & chr(34) & trim(request("SiteTitle")) & chr(34) & "        '网站标题" & vbcrlf
	hf.write "SiteUrl=" & chr(34) & trim(request("SiteUrl")) & chr(34) & "        '网站地址" & vbcrlf
	hf.write "LogoUrl=" & chr(34) & trim(request("LogoUrl")) & chr(34) & "        'Logo地址" & vbcrlf
	hf.write "BannerUrl=" & chr(34) & trim(request("BannerUrl")) & chr(34) & "        'Banner地址" & vbcrlf
	hf.write "WebmasterName=" & chr(34) & trim(request("WebmasterName")) & chr(34) & "        '站长姓名" & vbcrlf
	hf.write "WebmasterEmail=" & chr(34) & trim(request("WebmasterEmail")) & chr(34) & "        '站长信箱" & vbcrlf
	hf.write "WebmasterTel=" & chr(34) & trim(request("WebmasterTel")) & chr(34) & "        '站长姓名" & vbcrlf
	hf.write "WebmasterTel2=" & chr(34) & trim(request("WebmasterTel2")) & chr(34) & "        '站长姓名" & vbcrlf
	hf.write "WebmasterFax=" & chr(34) & trim(request("WebmasterFax")) & chr(34) & "        '站长姓名" & vbcrlf
	hf.write "Copyright=" & chr(34) & trim(request("Copyright")) & chr(34) & "        '版权信息" & vbcrlf
	hf.write "MailObject=" & chr(34) & trim(request("MailObject")) & chr(34) & "        '邮件发送组件" & vbcrlf
	hf.write "MailServer=" & chr(34) & trim(request("MailServer")) & chr(34) & "        '用来发送邮件的SMTP服务器" & vbcrlf
	hf.write "MailServerUserName=" & chr(34) & trim(request("MailServerUserName")) & chr(34) & "        '登录用户名" & vbcrlf
	hf.write "MailServerPassWord=" & chr(34) & trim(request("MailServerPassWord")) & chr(34) & "        '登录密码" & vbcrlf
	hf.write "MailDomain=" & chr(34) & trim(request("MailDomain")) & chr(34) & "        '域名" & vbcrlf

	hf.write "" & vbcrlf

	hf.write "'站点的些公用变量设置" & vbcrlf
	hf.write "This_Site_Path="& chr(34) & trim(request("This_Site_Path")) & chr(34) &" " & vbcrlf 
	hf.write "'这个站点所在的虚拟路径，如果是默认路径，则为""（空） 如果为site,则改为""/site"" 最后不能以/结尾" & vbcrlf
	hf.write "'此参数由首页文件自动修改，以免用户设置出错" & vbcrlf
	hf.write "This_Site_Name=SiteTitle " & vbcrlf
	hf.write "NoCheckAdmin=1 '1为不检查用户名为admin（全小写）的权限,0为要检验admin的权限" & vbcrlf

	Req_AboutType=trim(request("AboutType"))
	If(Req_AboutType="") Then
		Req_AboutType="关于我们/默认首页/公司简介/组织机构/成长历程/联系我们/认证证书/人才招聘/领导致词"
	End if
	hf.write "AboutType=Split("& chr(34) & Req_AboutType & chr(34) & ",""/"") " & vbcrlf 

	hf.write "meta_keyword="& chr(34)& trim(request("meta_keyword")) & chr(34)& "" &vbcrlf 
	hf.write "meta_description="& chr(34)& trim(request("meta_description")) & chr(34)& "" &vbcrlf 

	hf.write "'Response.Write (""<meta name='author' content='李宗明(湖南邵阳)' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='Copyright' content='李宗明(湖南邵阳)' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='keyword' content='""& meta_keyword & ""' />"")" & vbcrlf 
	hf.write "'Response.Write (""<meta name='description' content='""& meta_description &""' />"")" & vbcrlf 
	
	hf.write "%" & ">"
	hf.close
	set hf=nothing
	set fso=nothing
	call WriteSuccessMsg("网站配置保存成功！")
end sub
%>

