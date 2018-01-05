<%@LANGUAGE="VBSCRIPT.encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp" -->
<!--#include file="../inc/tools.asp" -->
<!--#include file="../news/in_About.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>有限公司</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

</head>

<body>
<h1 color=red><br />只在要想显示的地方写上 &lt;% getAbout(&quot;关于我们&quot;) %&gt; ，结果如下： 
<br /><br />
</h1>
<% getAbout("关于我们") %>

<h1 color=red><br />只在要想显示的地方写上 &lt;% getAbout(&quot;公司简介&quot;) %&gt; ，结果如下： 
<br /><br />
</h1>
<% getAbout("公司简介") %>

<h1 color=red><br />只在要想显示的地方写上 &lt;% getAbout(&quot;组织机构&quot;) %&gt; ，结果如下： 
<br /><br />
</h1>
<% getAbout("组织机构") %>

<h1 color=red><br />也可以只写上 &lt;% getAbout(&quot;&quot;) %&gt; ，并且网页参数传入?About=公司简介，结果如下： 
<br /><br />
</h1>
<% getAbout("") %>
</body>
</html>
