<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/tools.asp"-->
<!--#include file="../inc/check.asp"-->
<%
dim rs,sql

sql="select * from Product_Order order by id desc"
set rs=Server.CreateObject("ADODB.recordset")
rs.CursorType = 3
'response.write sql
rs.Open sql,conn

rs.PageSize ="12" '每页商品条数
result_num=rs.RecordCount '商品总数


if result_num<=0 then
	if search="" then
		word="对不起!<br>还没有输入商品信息!"
	else	
		word="对不起!<br>还没有找到符合条件的商品!请更换条件重新搜索!"
	end if	
else
	maxpage=rs.PageCount 
	page=request("page")
	
	if Not IsNumeric(page) or page="" then
		page=1
	else
		page=cint(page)
	end if
	
	if page<1 then
		page=1
	elseif  page>maxpage then
		page=maxpage
	end if
	
	rs.AbsolutePage=Page
end if

%>
<html>
<head>
<title>订购信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
a:visited    { color: #000000; font-family: Arial; text-decoration: underline }
a:active     { color: #FF6600; font-family: Arial; text-decoration: none }
a:hover      { color: #FF6600; text-decoration: none }
body         { color: #000000; font-size: 10pt; line-height: 12pt; font-family: Arial }
th           { font-size: 10pt; line-height: 12pt }
td           { font-size: 10pt; line-height: 12pt }
a.1:link     { font-family: Arial; text-decoration: none; color: silver }
a.1:visited  { font-family: Arial; text-decoration: none; color: silver }
a.1:hover    { font-family: Arial; text-decoration: none; color: white }
a.2:link     { font-family: Arial; text-decoration: none; color: #6e6e6e }
a.2:visited  { font-family: Arial; text-decoration: none; color: #6e6e6e }
a.2:hover    { font-family: Arial; text-decoration: none; color: silver }
a.3:link     { font-family: Arial; text-decoration: none; color: white }
a.3:visited  { font-family: Arial; text-decoration: none; color: white }
a.3:hover    { font-family: Arial; text-decoration: none; color: #d0ccd0 }
.line        { line-height: 10pt }
.il          { line-height: 12pt }
.form        { font-size: 9pt }
.btn         { font-size: 9pt; height: 21; border-style: ridge; border-width: 1 }
.text        { font-family: Arial; font-size: 9pt; border: 1 solid #707070 }
body         { scrollbar-face-color: #D8D4C8; scrollbar-highlight-color: #D8D4C8; 
               scrollbar-shadow-color: #D8D4C8; scrollbar-3dlight-color: 
               #ffffff; scrollbar-arrow-color: blcak; scrollbar-track-color: 
               #E9EDEF; scrollbar-darkshadow-color: #888484 }
</style>
</head>
<body marginheight="0" marginwidth="0" rightmargin="0" topmargin="0" leftmargin="0" bgcolor="#FFFFFF" text="#000000">
<div align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<%#@~^GAAAAA==~b0~M+kEVD{	;:@!'TPDtnU,9QcAAA==^#~@%>
<center>
  <br>
  <br>
  <%=#@~^BQAAAA==AKD[,3AEAAA==^#~@%>
</center>
<%#@~^ZwAAAA==v"+daW	/+cMrYPE@!km.raYP^CxTElTnx9m\m?^Dr2DF F@*CVDOcEPJ'~SW.N,~LJ~E#ptkkYK.Xc4Cm0`Rq*i@!JdmMkwD@*EPQSAAAA==^#~@%>
<%#@~^BgAAAA==~VdP6QEAAA==^#~@%>
    <table width="90%" border="0" cellspacing="2" cellpadding="0" align="center">
  <tr valign="middle"> 
    <td>【共有<font color="#FF0000">
      <%=#@~^CwAAAA==./;^Y|xEsPbgQAAA==^#~@%>
      </font>条记录】</td>
    <td> 
      <%#@~^UgAAAA==~,mC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PKxoAAA==^#~@%>
    </td>
  </tr>
</table>
<form action="Product_del.asp" method="get" name="Form1">
共有<%=rs.recordcount%>个订购客户(点击客户名可查看该客户详细资料)!

<table width="95%" border="0" cellspacing="1" cellpadding="0" align="center" bgcolor=#3366FF>
    <tr align=center bgcolor=#97D0FB> 
      <td>&nbsp;</td>
      <td><b>订单号</b></td>
      <td><b>客户名称</b></td>
      <td><b>产品名称</b></td>
      <td><b>编辑</b></td>
    </tr>
    <%#@~^GAAAAA==~6W.,k{FPDW,./cnCo?r"PzAcAAA==^#~@%>
    <tr bgcolor=#FFFFFF> 
      <td><input type="checkbox" name="selID" value="<%=rs("id")%>"></td>
      <td  align=center>
        [<%=rs("id")%>]
      </td>
      <td  align=center><a href="admin.asp?id=<%=rs("id")%>"><%=rs("user")%></a></td>
      <td  align=center>
        <a href="admin.asp?id=<%=rs("id")%>"><%=rs("productID")%></a>
      </td>
      <td  align="center"> <a href="admin.asp?id=<%=rs("id")%>">详情</a></td>
    </tr>
    <%#@~^MQAAAA==~M/ sW7+x6D@#@&b0~DkR36wPY4nx,26bO~sKD@#@&r'rQ8PDg4AAA==^#~@%>
    <tr bgcolor=#F9F8FD> 
      <td><input type="checkbox" name="selID" value="<%=rs("id")%>"></td>
      <td  align=center>[<%=rs("id")%>] </td>
      <td  align=center>
        <a href="admin.asp?id=<%=rs("id")%>"><%=rs("user")%></a>      </td>
      <td  align=center>
        <a href="admin.asp?id=<%=rs("id")%>"><%=rs("productID")%></a> </td>
      <td align="center"><a href="admin.asp?id=<%=rs("id")%>">详情</a></td>
    </tr>
    <%#@~^NAAAAA==~@#@&.kRsW\xaY=kWPM/ 3}sPD4+	P2XrOPwWM@#@&xnaD@#@&kw4AAA==^#~@%>
  </table>
</form>
<%#@~^UgAAAA==~EmC^V,SlkYgn6DnCo`hCXwlTn~aloSEhbNDtxFTTuPE~r@!w,PCsboxx^xO+M~1VCk/{0W	Yy@*J*PMhoAAA==^#~@%>
<%#@~^CAAAAA==~x[,k6PZgIAAA==^#~@%>
<!--# inc lude file file="incRight.asp"-->
</body>
</html>
<%#@~^OwAAAA==@#@&IdcZ^W/`*@#@&U+OP"/~x,1WD4k	o@#@&jnY,mKxU'~HKY4k	L@#@&KQ8AAA==^#~@%>
