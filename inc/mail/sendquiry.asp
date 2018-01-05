<%@ LANGUAGE="VBSCRIPT" %>
<!--#include file="newconn.asp"-->
<%
'-------------根据id获取email信息----------------
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
response.write("<div align=center><font size=6>您输入的信息可能有误，请检查!</font> </div>")
response.write("<br>")
response.write("<center>请按关闭窗口,重新填写表单</center>")
response.end
else
'发送邮件
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
jmail.body=jmail.body & "<br><br>公司名称:" & fromcompany
jmail.body=jmail.body & "<br>联系人：" & fromconnecter
jmail.body=jmail.body & "<br>电话：" & fromtelephone
jmail.body=jmail.body & "<br>传真：" & fromfax
jmail.body=jmail.body & "<br>公司网址：" & fromsite
jmail.body=jmail.body & "<br>email:" & fromemail
jmail.body=jmail.body & "<br><br>-------------------------------------------"
jmail.body=jmail.body & "<br>本信息由中国建材网(www.BMLink.com)为您转发" 
jmail.body=jmail.body & "<br>-------------------------------------------"
JMail.Priority = 1
on error resume next
JMail.Execute
end if
response.write "<br><br><b><center>您的咨询信件已成功发送给客户，感谢您对中国建材网的支持和关注！<br><br><a href=javascript:window.close()><img src=images/closewindow.gif width=54 height=18 border=0></a></center></b>"
response.end
%>