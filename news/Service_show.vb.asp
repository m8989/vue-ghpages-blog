<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->

<%

table="news_info"

newsID=request("newsID")
set rs=Server.CreateObject("ADODB.RECORDSET")
rs.Open "select * from " & table & " where newsID =" & newsID ,conn

newsID=rs("newsID")
Is_Check=rs("Is_Check")
Is_Del=rs("Is_Del")
Is_Display=rs("Is_Display")
Input_Name=rs("Input_Name")
Input_Dept=rs("Input_Dept")
Input_Time=rs("Input_Time")
Input_IP=rs("Input_IP")
n_Title=rs("n_Title")

n_body=rs("n_body")  
Pic_Path=rs("Pic_Path")
TypeID=rs("TypeID")
About_It=rs("About_It")
Click_Count=rs("Click_Count")
'filecontentid = rs("filecontentid")

%>
<%
Rs.Close()
Set Rs = Nothing
Set conn= Nothing  
%>
<% sub show_news() %>
<script language="JavaScript" src="../inc/javaScript.js"></script>
<div id="Layer0007" align="center" style="width:183px; height:80px; z-index:1;display: none">网站程序设计:http://www.eraneed.com <br>
<a href="mailto:hiaming@163.com" title="程序作者:李宗明">程序作者:李宗明(湖南邵阳)</a></div>
<br>
<div align=center> 
  <table width="90%" border="0" cellpadding="0" cellspacing="1">
    <tr> 
      <th height="12" colspan="3" align="center"><%=n_Title%>&nbsp;</th>
    </tr>
    <tr>
      <td colspan="3" align="right" valign="bottom"></td>
    </tr>
    <tr> 
      <td height="300" colspan="3" valign="top">
	  			<table border="0" align="left"  cellpadding="0" cellspacing="4">
			  <tr> 
            <td> 
              <%if Len(Trim(Pic_Path))>=1 then '有图片
			arrPic_Path=split(Pic_Path,",")
			for each pic in arrPic_Path
		%>
              <img src="<%=Trim(pic) %>" border=0> 
              <%
			Next				
		end if%>
            </td>
			  </tr>
		</table>
 		<%=n_body %><br>
       <br></td>
    </tr>
    <% if len(trim( About_It ))<>0 then %>
    <tr> 
        <td height="20" colspan="3" bgcolor="#FFFFCC">资料来源:&nbsp;&nbsp;&nbsp; 
        <%=About_It  %> </td>
    </tr><%end if %>
  </table>
</div>
<% end sub %>
<!--# inc lude file file="ClickCount.asp"-->
<!--# inc lude file file="incRight.asp"-->
