<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../news/in_About.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>���޹�˾</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

</head>

<body>
<h1 color=red><br />ֻ��Ҫ����ʾ�ĵط�д�� &lt;% getAbout(&quot;��������&quot;) %&gt; ��������£� 
<br /><br />
</h1>
<% getAbout("��������") %>

<h1 color=red><br />ֻ��Ҫ����ʾ�ĵط�д�� &lt;% getAbout(&quot;��˾���&quot;) %&gt; ��������£� 
<br /><br />
</h1>
<% getAbout("��˾���") %>

<h1 color=red><br />ֻ��Ҫ����ʾ�ĵط�д�� &lt;% getAbout(&quot;��֯����&quot;) %&gt; ��������£� 
<br /><br />
</h1>
<% getAbout("��֯����") %>

<h1 color=red><br />Ҳ����ֻд�� &lt;% getAbout(&quot;&quot;) %&gt; ��������ҳ��������?About=��˾��飬������£� 
<br /><br />
</h1>
<% getAbout("") %>
</body>
</html>
