<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/tools.asp"-->
<!--# inc lude file file="../inc/check.asp"-->
<%
'�ύ���Ĵ��뿪ʼ
if request("act")="save" then '�ύ��
	response.buffer="true"
	If request.form("user")="" Then
	response.write"<script>alert('����д��ϵ��������');history.back()</script>"
	response.end
	End If
	If request.form("email")="" Then
	response.write"<script>alert('����д���ĵ����ʼ���ַ��');history.back()</script>"
	response.end
	End If
	If request.form("corp")="" Then
	response.write"<script>alert('����д����˾�����ƣ�');history.back()</script>"
	response.end
	End If
	If request.form("tel")="" Then
	response.write"<script>alert('����д����ϵ�绰��');history.back()</script>"
	response.end
	End If
	If request.form("add")="" Then
	response.write"<script>alert('����д����˾�ĵ�ַ��');history.back()</script>"
	response.end
	End If
	If len(request.form("memo"))>500 Then
	response.write"<script>alert('��ע���ܴ���500�֣�');history.back()</script>"
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
	conn.close
	set conn=nothing
%>
<link href="/baise9.css" rel="stylesheet" type="text/css">
<span class="tishi">������Ϣ�ѳɹ��ύ�����ǻᾡ������ȡ����ϵ��<br>
лл���Ա���˾��������֧��!</span>
<%	
else '��û���ύ                                    
	%>
<Meta Http-Equiv="Content-Type" Content="text/html; charset=gb2312">
<table border="0" cellspacing="1" width="100%" height="315">
<!--���߶������-->
<form method="post" action="#">
<tr>
<td width="29%" height="18" align="right">��Ʒ���ƣ�</td>
<td width="71%" height="18">
<input type="hidden" name="act" value="save">
<%If p="" Then%>
<input type="text" name="productID" size="30" class="text" maxlength="20">                                              
<%else                                       
response.write product()                                      
End If 
%>                                       
</td>
</tr>
<tr>
<td width="29%" height="20" align="right">�ͻ�������</td>
<td width="71%" height="20"><input type="text" name="user" size="30" class="text" maxlength="20"></td>
</tr>
<tr>
<td width="29%" height="16" align="right">�ͻ����䣺</td>
<td width="71%" height="16"><input type="text" name="email" size="30" class="text" maxlength="35"></td>
</tr>
<tr>
<td width="29%" height="17" align="right">�ͻ�MSN��</td>
<td width="71%" height="17"><input type="text" name="oicq" size="30" class="text" maxlength="50"></td>
</tr>
<tr>
<td width="29%" height="18" align="right">��˾���ƣ�</td>
<td width="71%" height="18"><input type="text" name="corp" size="30" class="text" maxlength="40"></td>
</tr>
<tr>
<td width="29%" height="18" align="right">��˾��ַ��</td>
<td width="71%" height="18"><input type="text" name="url" size="30" class="text" maxlength="30" value="http://"></td>
</tr>
<tr>
<td width="29%" height="20" align="right">��ϵ�绰��</td>
<td width="71%" height="20"><input type="text" name="tel" size="30" class="text" maxlength="30"></td>
</tr>
<tr>
<td width="29%" height="17" align="right">��˾��ַ��</td>
<td width="71%" height="17"><input type="text" name="add" size="30" class="text" maxlength="100"></td>
</tr>
<td width="29%" height="17" align="right">��֤�룺</td>
<td width="71%" height="17"><input type="text" name="GetCode" size="6" class="text" maxlength="6" >* <img src="../admin/Dv_GetCode.asp"/></td>
</tr>
<tr>
<td width="29%" height="6" align="right">��ע��Ϣ��</td>
<td width="71%" height="61" valign="top" rowspan="2"><textarea rows="10" name="memo" cols="34" class="text"></textarea></td>
</tr>
<tr>
<td width="29%" height="55" align="right"></td>
</tr>
<tr>
<td width="29%" height="23" align="right"></td>
<td width="71%" height="23" valign="top"><input type="submit" name="submit" class="btn" value="�ύ����"> 
<input type="reset" value="ȫ����д" name="B1" class="btn"></td>
</tr>
</form>
</table>
<%end if  '�ύ���Ĵ������%>

