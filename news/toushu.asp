<!--meta http-equiv="refresh" content="0;URL=../news/service_show.asp?newsID=47"-->

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../inc/Adminstyle.css">
<title>慈溪风光旅行社</title>

<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--
function add_onsubmit(add) {

//客户端验证
//if (!checkvalue(add.Input_Name,0,0,1,"操作者")) return false;
//if (!checkvalue(add.Input_Dept,0,0,1,"操作部门")) return false;
//if (!checkvalue(add.Type_name,0,0,1,"分类")) return false;
if (!checkvalue(add.n_Title,0,0,1,"姓名")) return false;
if (!checkvalue(add.Remark,1,5000,33,"投诉内容")) return false;
//if (!checkvalue(add.Pic_Path,0,0,1,"图片")) return false;
//if (!checkvalue(add.About_It,0,0,1,"相关资料")) return false;
//if (!checkvalue(add.Click_Count,0,0,1,"点击计数")) return false;

//内容
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
<H3>投诉和建议</h3><br>
</td>
  </tr>
</table>

                  
    <table border=0 cellpadding=0 width=96% cellspacing=1>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>客户姓名：</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="n_Title" size=20 class=fstyle  value=""> 
		<input name="Input_Name" type="hidden"  value=""> 
        <input name="TypeID" type="hidden" value="101"></td>
        <td height="25" align="center" bgcolor="#FFFFFF">联系电话：</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="pic" size=20 class=fstyle  value=""></td>
      </tr>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>联系地址：</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="About_It" size=20 class=fstyle  value=""> 
        </td>
        <td height="25" align="center" bgcolor="#FFFFFF">邮政编码：</td>
        <td height="25" bgcolor="#FFFFFF"><input type=text name="Input_Dept" size=20 class=fstyle  value=""></td>
      </tr>
      <tr> 
        <td width=15% height="25" align=center bgcolor=#F8F9FD>满意程度：</td>
        <td height="25" colspan="3" bgcolor="#FFFFFF">
		<input type="radio" name="on_Top" value="非常满意">非常满意
          <input type="radio" name="on_Top" value="比较满意">比较满意
          <input type="radio" name="on_Top" value="一般">一般
          <input type="radio" name="on_Top" value="不满意">不满意
	  	</td>
      <tr> 
        <td height="25" align=center bgcolor=#F8F9FD>投诉内容：<BR>
		</td>
        <td height="25" colspan="3" align=left bgcolor=#F8F9FD><textarea name="Remark" cols="55" rows="12"> </textarea></td>
      </tr>
    </table>
</div>
<div align=center><br>

<input type=submit value="提交"  name=B1 class=fstyle >
<!--input type=submit value="提交"  name=B1 class=fstyle onClick="spilt_long_str(this.value)"-->
&nbsp;&nbsp;&nbsp; 
<input type=reset value="重填" name=B2 class=fstyle>
</div>
</form>
<%End Sub %>
<!--#include file="incLeftRight_Service.asp"-->

</body>
</html>

