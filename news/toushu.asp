<!--meta http-equiv="refresh" content="0;URL=../news/service_show.asp?newsID=47"-->

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/Adminstyle.css">
<title>��Ϫ���������</title>

<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--
function add_onsubmit(add) {

//�ͻ�����֤
//if (!checkvalue(add.Input_Name,0,0,1,"������")) return false;
//if (!checkvalue(add.Input_Dept,0,0,1,"��������")) return false;
//if (!checkvalue(add.Type_name,0,0,1,"����")) return false;
if (!checkvalue(add.n_Title,0,0,1,"����")) return false;
if (!checkvalue(add.Remark,1,5000,33,"Ͷ������")) return false;
//if (!checkvalue(add.Pic_Path,0,0,1,"ͼƬ")) return false;
//if (!checkvalue(add.About_It,0,0,1,"�������")) return false;
//if (!checkvalue(add.Click_Count,0,0,1,"�������")) return false;

//����
/*
  if (editor.EditMode.checked==true)
	  document.add.Remark.value=editor.HtmlEdit.document.body.innerText;
  else
	  document.add.Remark.value=editor.HtmlEdit.document.body.innerHTML; 
  */
}

//-->
</SCRIPT>

<style type="text/css">
<!--
-->
</style>
</head>

<body bgcolor="#FFFFFF"  text="#000000" leftmargin="0" topmargin="0" onload='page_onload()'>
<%
typeid="301103"
sub ShowMain()%>

<form action="Guest_join.asp" method=POST  name=add onsubmit="return add_onsubmit(this)" LANGUAGE=javascript>
<input type=hidden name="addedit_subed" value="true">
<input type=hidden name=editid value="">
<input type=hidden name=reURL value="">
<div align=center>
<table width="90%" border="0" cellspacing="1" cellpadding="0">
  <tr>
                    <td height="54" align="center" valign="middle"><br>
<H3>Ͷ�ߺͽ���</h3><br>
</td>
  </tr>
</table>

                  
    <table border=0 cellpadding=0 width=96% cellspacing=1>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>�ͻ�������</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="n_Title" size=20 class=fstyle  value=""> 
		<input name="Input_Name" type="hidden"  value=""> 
        <input name="TypeID" type="hidden" value="101"></td>
        <td height="25" align="center" bgcolor="#FFFFFF">��ϵ�绰��</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="pic" size=20 class=fstyle  value=""></td>
      </tr>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>��ϵ��ַ��</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="About_It" size=20 class=fstyle  value=""> 
        </td>
        <td height="25" align="center" bgcolor="#FFFFFF">�������룺</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="Input_Dept" size=20 class=fstyle  value=""></td>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>����̶ȣ�</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF">
		<input type="radio" name="on_Top" value="�ǳ�����">�ǳ�����
          <input type="radio" name="on_Top" value="�Ƚ�����">�Ƚ�����
          <input type="radio" name="on_Top" value="һ��">һ��
          <input type="radio" name="on_Top" value="������">������
	  	</td>
      <tr> 
        <td height="25" align=center bgcolor=#F8F9FD>Ͷ�����ݣ�<BR>
		</td>
        <td height="25" colspan="3" align=left bgcolor=#F8F9FD><textarea name="Remark" cols="55" rows="12"> </textarea></td>
      </tr>
    </table>
</div>
<div align=center><br>

<input type=submit value="�ύ"  name=B1 class=fstyle >
<!--input type=submit value="�ύ"  name=B1 class=fstyle onClick="spilt_long_str(this.value)"-->
&nbsp;&nbsp;&nbsp; 
<input type=reset value="����" name=B2 class=fstyle>
</div>
</form>
<%End Sub %>
<!--#include file="incLeftRight_Service.asp"-->

</body>
</html>

