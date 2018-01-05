<%
  '参数说明
  'Subject     : 邮件标题
  'MailAddress : 发件服务器的地址,如smtp.163.com
  'Email       : 收件人邮件地址
  'Content     : 邮件内容
  'FromName      : 发件人姓名
  'FromEmail      : 发件人的邮件地址

    '调用此Sub的例子
  Dim strSubject,strEmail,strMailAdress,strSender,strContent,strFromer
 
  if Request("Subject") <>"" then	 '主题
	  strSubject     = Request("FromUrl")&Request("Subject")
  else
	  strSubject     = Request("FromUrl")&"网站邮件反馈"
  end if 
  if Request("ToEmail") <>"" then
	  strEmail= Request("ToEmail") ' 收件人邮件地址
  else
	  strEmail= "haming@bmlink.com" ' 默认收件人邮件地址 按实际修改
  end if 
  '发件人邮件地址,因为要用到身份验证，所以最好指定一个固定的有效地址
  'strFromer      = "master@bmlink.com"  '发件人邮件地址
  strFromer      = Request("FromEmail")  '发件人邮件地址
    strSender      = Request("FromName")  '发件人姓名
	if 	strSender="" then 
		 strSender = strFromer  '发件人姓名
	end if
  strMailAddress = "61.129.74.204"
  	'将所有信息加到主内容里
	 strContent=""
	 strContent=strContent&"公司名字:"& Request("Company")& vbCrlf
	 strContent=strContent&"公司地址:"&Request("Address")& VBCrlf
	 strContent=strContent&"姓名:"&Request("FromName")& VBCrlf
	 strContent=strContent&"公司电话:"&Request("FromTel")& VBCrlf
	 strContent=strContent&"公司邮箱:"&Request("FromEmail")& VBCrlf
	 strContent=strContent&"宝贵意见:"&Request("Memo")& VBCrlf


  '内容
  strContent=strContent & Request("Content")
  strContent=strContent & VBCrlf &"=========================说====明=================="& VBCrlf &_
								"                此邮件是通过网站发送过来的!"& VBCrlf&_

								"               请不要回复，直接发送邮件到"&Request("FromEmail")&"邮箱"



  Call SendAction (strSubject,strMailaddress,strEmail,strSender,strContent,strFromer)



  Sub SendAction(subject, mailaddress, email, sender, content, fromer)
	Set JMail = Server.CreateObject("JMail.Message") 
	jmail.logging = false   '不启用使用日志
	'JMail.ISOEncodeHeaders=false
	jmail.charset="gb2312"
	jmail.FromName = sender	'邮件发送者的姓名
	jmail.ReplyTo = fromer
	JMail.From = "master@bmlink.com"
	JMail.MailServerUserName = "master@bmlink.com"
	JMail.MailServerPassWord = "556288"
	JMail.Subject = subject
	jmail.ClearRecipients() 
	jmail.AddRecipient (Email)    '邮件的收件人
	'jmail.AddRecipient ("hiaming@bmlink.com")    '邮件的收件人2
	'jmail.ContentType = "text/html"
      jmail.Priority = 1   '邮件的紧急程序，1 为最快，5 为最慢， 3 为默认值
      jmail.Body = content   '邮件的内容
      '由于没有用到密抄跟抄送，这里屏蔽掉这两句，如果您有需要的话，可以在这里恢复
      'jmail.AddRecipientBCC Email   '密件收件人的地址
      'jmail.AddRecipientCC Email   '邮件抄送者的地址
	'on error resume next
	JMail.send(mailaddress)   '参数是服务器
	'if err<>0 then
	' 		Response.Write "<script language=JavaScript1.1>alert('"&err&"'); "
	'		Response.Write " </script>"
	'end if
test1=false		'测试
if test1=true then
 Response.write 	Content
 Response.write     "<br>jmail.ServerAddress="&strMailAddress   '发送邮件的服务器
 Response.write     "<br>strEmail="&strEmail 
 Response.write     "<br>jmail.SenderName="&strSender
 Response.write     "<br>jmail.Sender="&strFromer 
 Response.write     "<br>jmail.Subject="&strSubject
 Response.write     "<br>jmail.Body="&strContent 
end if	  

	jmail.Close    '关闭邮件对象
	set jmail=nothing
 
		'提示并返回
		if test1<> true then
			reURL=Request.ServerVariables("HTTP_REFERER") '取得前一页的URL并自动刷新
			Response.Write "<script language=JavaScript1.1>alert('邮件发送成功!');/*history.back(-1);*/" 
			Response.Write " document.location='"& reURL&"';</script>"
		end if
  End Sub
  

%>