<%@ LANGUAGE="VBSCRIPT" %>
<!--#include file="newconn.asp"-->
<%
'-------------����id��ȡemail��Ϣ----------------
set temp_rs=server.createobject("adodb.recordset")
if request("type")="sell" then
sql="select * from sellinfo where id=" & request("id")
end if
if request("type")="buy" then
sql="select * from buyinfo where id=" & request("id")
end if
if request("type")="enterprise" then
sql="select * from enterprise where id=" & request("id")
end if
temp_rs.open sql,conn,3
set toemail=temp_rs("email")

set replytitle=request("replytitle")
set replycontent=request("replycontent")
set fromcompany=request("fromcompany")
set fromconnecter=request("fromconnecter")
set fromtelephone=request("fromtelephone")
set fromfax=request("fromfax")
set fromsite=request("fromsite")
set fromemail=request("fromemail")

if fromcompany="" or fromconnecter="" or instr(fromemail,"@")=0 then 
response.write("<div align=center><font size=6>���������Ϣ������������!</font> </div>")
response.write("<br>")
response.write("<center>�밴�رմ���,������д��</center>")
response.end
else
'�����ʼ�
Set JMail = Server.CreateObject("JMail.SMTPMail") 
JMail.ISOEncodeHeaders=false
'JMail.serveraddress="localhost"
JMail.serveraddress=""
jmail.charset="gb2312"
jmail.SenderName = fromconnecter
JMail.Sender = fromemail
jmail.ReplyTo = fromemail
JMail.Subject = replytitle
jmail.ClearRecipients() 
jmail.AddRecipient(toemail) 
jmail.ContentType = "text/html"
jmail.body=replycontent
jmail.body=jmail.body & "<br><br>��˾����:" & fromcompany
jmail.body=jmail.body & "<br>��ϵ�ˣ�" & fromconnecter
jmail.body=jmail.body & "<br>�绰��" & fromtelephone
jmail.body=jmail.body & "<br>���棺" & fromfax
jmail.body=jmail.body & "<br>��˾��ַ��" & fromsite
jmail.body=jmail.body & "<br>email:" & fromemail
jmail.body=jmail.body & "<br><br>-------------------------------------------"
jmail.body=jmail.body & "<br>����Ϣ���й�������(www.BMLink.com)Ϊ��ת��" 
jmail.body=jmail.body & "<br>-------------------------------------------"
JMail.Priority = 1
on error resume next
JMail.Execute
end if
response.write "<br><br><b><center>������ѯ�ż��ѳɹ����͸��ͻ�����л�����й���������֧�ֺ͹�ע��<br><br><a href=javascript:window.close()><img src=images/closewindow.gif width=54 height=18 border=0></a></center></b>"
response.end
%>