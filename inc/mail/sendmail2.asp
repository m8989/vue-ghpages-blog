<%
  '����˵��
  'Subject     : �ʼ�����
  'MailAddress : �����������ĵ�ַ,��smtp.163.com
  'Email       : �ռ����ʼ���ַ
  'Content     : �ʼ�����
  'FromName      : ����������
  'FromEmail      : �����˵��ʼ���ַ

    '���ô�Sub������
  Dim strSubject,strEmail,strMailAdress,strSender,strContent,strFromer
 
  if Request("Subject") <>"" then	 '����
	  strSubject     = Request("FromUrl")&Request("Subject")
  else
	  strSubject     = Request("FromUrl")&"��վ�ʼ�����"
  end if 
  if Request("ToEmail") <>"" then
	  strEmail= Request("ToEmail") ' �ռ����ʼ���ַ
  else
	  strEmail= "haming@bmlink.com" ' Ĭ���ռ����ʼ���ַ ��ʵ���޸�
  end if 
  '�������ʼ���ַ,��ΪҪ�õ������֤���������ָ��һ���̶�����Ч��ַ
  'strFromer      = "master@bmlink.com"  '�������ʼ���ַ
  strFromer      = Request("FromEmail")  '�������ʼ���ַ
    strSender      = Request("FromName")  '����������
	if 	strSender="" then 
		 strSender = strFromer  '����������
	end if
  strMailAddress = "61.129.74.204"
  	'��������Ϣ�ӵ���������
	 strContent=""
	 strContent=strContent&"��˾����:"& Request("Company")& vbCrlf
	 strContent=strContent&"��˾��ַ:"&Request("Address")& VBCrlf
	 strContent=strContent&"����:"&Request("FromName")& VBCrlf
	 strContent=strContent&"��˾�绰:"&Request("FromTel")& VBCrlf
	 strContent=strContent&"��˾����:"&Request("FromEmail")& VBCrlf
	 strContent=strContent&"�������:"&Request("Memo")& VBCrlf


  '����
  strContent=strContent & Request("Content")
  strContent=strContent & VBCrlf &"=========================˵====��=================="& VBCrlf &_
								"                ���ʼ���ͨ����վ���͹�����!"& VBCrlf&_

								"               �벻Ҫ�ظ���ֱ�ӷ����ʼ���"&Request("FromEmail")&"����"



  Call SendAction (strSubject,strMailaddress,strEmail,strSender,strContent,strFromer)



  Sub SendAction(subject, mailaddress, email, sender, content, fromer)
	Set JMail = Server.CreateObject("JMail.Message") 
	jmail.logging = false   '������ʹ����־
	'JMail.ISOEncodeHeaders=false
	jmail.charset="gb2312"
	jmail.FromName = sender	'�ʼ������ߵ�����
	jmail.ReplyTo = fromer
	JMail.From = "master@bmlink.com"
	JMail.MailServerUserName = "master@bmlink.com"
	JMail.MailServerPassWord = "556288"
	JMail.Subject = subject
	jmail.ClearRecipients() 
	jmail.AddRecipient (Email)    '�ʼ����ռ���
	'jmail.AddRecipient ("hiaming@bmlink.com")    '�ʼ����ռ���2
	'jmail.ContentType = "text/html"
      jmail.Priority = 1   '�ʼ��Ľ�������1 Ϊ��죬5 Ϊ������ 3 ΪĬ��ֵ
      jmail.Body = content   '�ʼ�������
      '����û���õ��ܳ������ͣ��������ε������䣬���������Ҫ�Ļ�������������ָ�
      'jmail.AddRecipientBCC Email   '�ܼ��ռ��˵ĵ�ַ
      'jmail.AddRecipientCC Email   '�ʼ������ߵĵ�ַ
	'on error resume next
	JMail.send(mailaddress)   '�����Ƿ�����
	'if err<>0 then
	' 		Response.Write "<script language=JavaScript1.1>alert('"&err&"'); "
	'		Response.Write " </script>"
	'end if
test1=false		'����
if test1=true then
 Response.write 	Content
 Response.write     "<br>jmail.ServerAddress="&strMailAddress   '�����ʼ��ķ�����
 Response.write     "<br>strEmail="&strEmail 
 Response.write     "<br>jmail.SenderName="&strSender
 Response.write     "<br>jmail.Sender="&strFromer 
 Response.write     "<br>jmail.Subject="&strSubject
 Response.write     "<br>jmail.Body="&strContent 
end if	  

	jmail.Close    '�ر��ʼ�����
	set jmail=nothing
 
		'��ʾ������
		if test1<> true then
			reURL=Request.ServerVariables("HTTP_REFERER") 'ȡ��ǰһҳ��URL���Զ�ˢ��
			Response.Write "<script language=JavaScript1.1>alert('�ʼ����ͳɹ�!');/*history.back(-1);*/" 
			Response.Write " document.location='"& reURL&"';</script>"
		end if
  End Sub
  

%>