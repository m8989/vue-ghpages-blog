<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/tools.asp"-->
<!--# inc lude file file="../inc/check.asp"-->
<%
'提交表单的代码开始
if request("act")="save" then '提交了
	'验证码
	If Session("GetCode")="" Or Session("GetCode")<>Request("GetCode") then
		response.write"<script>alert('please enter Valid Code！');history.back()</script>"
		response.end
	End if
	response.buffer="true"
	If request.form("user")="" Then
	response.write"<script>alert('please enter contact person！');history.back()</script>"
	response.end
	End If
	If request.form("email")="" Then
	response.write"<script>alert('please enter E-mail！');history.back()</script>"
	response.end
	End If
	If request.form("corp")="" Then
	response.write"<script>alert('please enter company name！');history.back()</script>"
	response.end
	End If
	If request.form("tel")="" Then
	response.write"<script>alert('please enter tel no！');history.back()</script>"
	response.end
	End If
	If request.form("add")="" Then
	response.write"<script>alert('please enter company address！');history.back()</script>"
	response.end
	End If
	If len(request.form("memo"))>500 Then
	response.write"<script>alert('not more than 500 leave words！');history.back()</script>"
	response.end
	End If
	%>
	<%
	dim rs,sql
	set rs=server.createobject("adodb.recordset")
	sql="select * from Product_Order where (id is null)"
	rs.open sql,conn,1,3
	rs.addnew
	rs("user")=sqlstr(request.form("user"))
	rs("email")=sqlstr(request.form("email"))
	rs("oicq")=sqlstr(request.form("oicq"))
	rs("corp")=sqlstr(request.form("corp"))
	rs("tel")=sqlstr(request.form("tel"))
	rs("url")=sqlstr(request.form("url"))
	rs("add")=sqlstr(request.form("add"))
	rs("memo")=sqlstr(request.form("memo"))
	rs("dt")=now()
	rs("productID")=sqlstr(request.form("productID"))
	rs("ip")=sqlstr(request.ServerVariables("remote_addr"))
	rs.update
	rs.close
	set rs=nothing
	'conn.close
	'set conn=nothing
%>
ok！<br>thank you!
<%	
else '还没有提交                                    
	%>
<Meta Http-Equiv="Content-Type" Content="text/html; charset=gb2312">
<table border="0" cellspacing="1" width="100%" height="315">
<!--在线订单表格-->
<form method="post" action="#">
<tr>
<td width="29%" height="18" align="right">Product：</td>
<td width="71%" height="18">
<input type="hidden" name="act" value="save">
<%If p="" Then%>
<input type="text" name="user" size="17" class="text" maxlength="20" style="width:280 ">                                              
<%else                                       
response.write product()                                      
End If 
%>                                       
</td>
</tr>
<tr>
<td width="29%" height="20" align="right">contact person：</td>
<td width="71%" height="20"><input type="text" name="user" size="17" class="text" maxlength="20" style="width:280 "></td>
</tr>
<tr>
<td width="29%" height="16" align="right">E-mail：</td>
<td width="71%" height="16"><input type="text" name="email" size="17" class="text" maxlength="35" style="width:280 ">*</td>
</tr>
<tr>
<td width="29%" height="17" align="right">MSN：</td>
<td width="71%" height="17"><input type="text" name="oicq" size="17" class="text" maxlength="50" style="width:280 ">*</td>
</tr>
<tr>
<td width="29%" height="18" align="right">Company name：</td>
<td width="71%" height="18"><input type="text" name="corp" size="17" class="text" maxlength="40" style="width:280 ">*</td>
</tr>
<tr>
<td width="29%" height="18" align="right">Web：</td>
<td width="71%" height="18"><input type="text" name="url" size="17" class="text" maxlength="30" value="http://" style="width:280 "></td>
</tr>
<tr>
<td width="29%" height="20" align="right">Tel：</td>
<td width="71%" height="20"><input type="text" name="tel" size="17" class="text" maxlength="30" style="width:280 ">*</td>
</tr>
<tr>
<td width="29%" height="17" align="right">Add：</td>
<td width="71%" height="17"><input type="text" name="add" size="17" class="text" maxlength="100" style="width:280 ">*</td>
</tr>
<td width="29%" height="17" align="right">Valid Code：</td>
<td width="71%" height="17"><input type="text" name="GetCode" size="6" class="text" maxlength="6" >* <img src="../admin/Dv_GetCode.asp"/></td>
</tr>
<tr>
<td width="29%" height="6" align="right">Leave word：</td>
<td width="71%" height="61" valign="top" rowspan="2"><textarea rows="5" name="memo" cols="34" class="text" style="width:300 "></textarea></td>
</tr>
<tr>
<td width="29%" height="55" align="right"></td>
</tr>
<tr>
<td width="29%" height="23" align="right"></td>
<td width="71%" height="23" valign="top"><input type="submit" name="submit" class="btn" value="Enter"> &nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="weed out" name="B1" class="btn"></td>
</tr>
</form>
</table>
<%end if  '提交表单的代码结束%>

