<%
'Const 
SiteName="XX网站"        '网站名称
SiteTitle="QTQ International Group Limited"        '网站标题
SiteUrl=""        '网站地址
LogoUrl=""        'Logo地址
BannerUrl=""        'Banner地址
WebmasterName="站长姓名"        '站长姓名
WebmasterEmail="站长信箱"        '站长信箱
WebmasterTel="站长电话"        '站长姓名
WebmasterTel2="站长备用电话"        '站长姓名
WebmasterFax="站长传真"        '站长姓名
Copyright="版权信息"        '版权信息
MailObject="Jmail"        '邮件发送组件
MailServer=""        '用来发送邮件的SMTP服务器
MailServerUserName=""        '登录用户名
MailServerPassWord=""        '登录密码
MailDomain=""        '域名

'站点的些公用变量设置
This_Site_Path="" 
'这个站点所在的虚拟路径，如果是默认路径，则为"（空） 如果为site,则改为"/site" 最后不能以/结尾
'此参数由首页文件自动修改，以免用户设置出错
This_Site_Name=SiteTitle 
NoCheckAdmin=1 '1为不检查用户名为admin（全小写）的权限,0为要检验admin的权限
AboutType=Split("AboutUs/ContrctUs/Products/右边小块联系我们/尾部信息/公司简介/","/") 
meta_keyword="网站推广关键字"
meta_description="网站推广描述"
'Response.Write ("<meta name='author' content='李宗明(湖南邵阳)' />")
'Response.Write ("<meta name='Copyright' content='李宗明(湖南邵阳)' />")
'Response.Write ("<meta name='keyword' content='"& meta_keyword & "' />")
'Response.Write ("<meta name='description' content='"& meta_description &"' />")
%>