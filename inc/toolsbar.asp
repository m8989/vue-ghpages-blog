<script language="JavaScript">
<!--
/* //����ʹ�õ�ҳ������Ҫ�������������ƵĴ���
function inputs(NewCode) {
document.add.Message.value+=NewCode ;
}
*/

function thelp(swtch){
    if (swtch == 1){
	basic = false;
	stprompt = false;
	helpstat = true;
    } else if (swtch == 0) {
	helpstat = false;
	stprompt = false;
	basic = true;
    } else if (swtch == 2) {
	helpstat = false;
	basic = false;
	stprompt = true;
    }
}
thelp(2)
function bold() {
	if (helpstat) {
		alert("�Ӵֱ��\nʹ�ı��Ӵ�.\n�÷�: [b]���ǼӴֵ�����[/b]");
	} else if (basic) {
		AddTxt="[b][/b]";
		inputs(AddTxt);
	} else {  
		txt=prompt("���ֽ������.","����");     
		if (txt!=null) {           
			AddTxt="[b]"+txt;
			inputs(AddTxt);
			AddTxt="[/b]";
			inputs(AddTxt);
		}       
	}
}
function italicize() {
	if (helpstat) {
		alert("б����\nʹ�ı������Ϊб��.\n�÷�: [i]����б����[/i]");
	} else if (basic) {
		AddTxt="[i][/i]";
		inputs(AddTxt);
	} else {   
		txt=prompt("���ֽ���б��","����");     
		if (txt!=null) {           
			AddTxt="[i]"+txt;
			inputs(AddTxt);
			AddTxt="[/i]";
			inputs(AddTxt);
		}	        
	}
}
function quoteme() {
	if (helpstat){
		alert("���ñ��\n����һЩ����.\n�÷�: [quote]��������[/quote]");
	} else if (basic) {
		AddTxt="[quote][/quote]";
		inputs(AddTxt);
	} else {   
		txt=prompt("�����õ�����","����");     
		if(txt!=null) {          
			AddTxt="[quote]"+txt;
			inputs(AddTxt);
			AddTxt="[/quote]";
			inputs(AddTxt);
		}	        
	}
}
function hyperlink() {
	if (helpstat) {
		alert("�������ӱ��\n����һ���������ӱ��\nʹ�÷���: [url]http://ezRick.com[/url]\nUSE: [url=http://ezRick.com]��������[/url]");
	} else if (basic) {
		AddTxt="[url][/url]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("�����ı���ʾ.\n�������ʹ��, ����Ϊ��, ��ֻ��ʾ�������ӵ�ַ. ",""); 
		if (txt2!=null) {
			txt=prompt("��������.","http://");      
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[url]"+txt;
					inputs(AddTxt);
					AddTxt="[/url]";
					inputs(AddTxt);
				} else {
					AddTxt="[url="+txt+"]"+txt2;
					inputs(AddTxt);
					AddTxt="[/url]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}
function image() {
	if (helpstat) {
               alert("ͼƬ���\n����ͼƬ\n�÷��� [img align=Right ]http://ezRick.com/test.gif[/img]");
	} else if (basic) {
		AddTxt="[img align=center][/img]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("ͼƬ�Ķ��뷽ʽ��Left|center|Right ","Right"); 
		if (txt2!=null) {
			txt=prompt("ͼƬ�� URL","http://");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[img align=Right]"+txt;
					inputs(AddTxt);
					AddTxt="[/img]";
					inputs(AddTxt);
				} else {
					AddTxt="[img align="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/img]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}
function image111() {
	if (helpstat){
		alert("ͼƬ���\n����ͼƬ\n�÷��� [img]http://ezRick.com/test.gif[/img]");
	} else if (basic) {
		AddTxt="[img][/img]";
		inputs(AddTxt);
	} else {  
		txt=prompt("ͼƬ�� URL","http://");    
		if(txt!=null) {            
			AddTxt="\r[img]"+txt;
			inputs(AddTxt);
			AddTxt="[/img]";
			inputs(AddTxt);
		}	
	}
}
function underline() {
  	if (helpstat) {
		alert("�»��߱��\n�����ּ��»���.\n�÷�: [u]Ҫ���»��ߵ�����[/u]");
	} else if (basic) {
		AddTxt="[u][/u]";
		inputs(AddTxt);
	} else {  
		txt=prompt("�»�������.","����");     
		if (txt!=null) {           
			AddTxt="[u]"+txt;
			inputs(AddTxt);
			AddTxt="[/u]";
			inputs(AddTxt);
		}	        
	}
}
function showfont(font) {
 	if (helpstat){
		alert("������\n��������������.\n�÷�: [font="+font+"]�ı���������Ϊ"+font+"[/font]");
	} else if (basic) {
		AddTxt="[font="+font+"][/font]";
		inputs(AddTxt);
	} else {                  
		txt=prompt("Ҫ�������������"+font,"����");
		if (txt!=null) {             
			AddTxt="[font="+font+"]"+txt;
			inputs(AddTxt);
			AddTxt="[/font]";
			inputs(AddTxt);
		}        
	}  
}
function showcolor(color) {
	if (helpstat) {
		alert("��ɫ���\n�����ı���ɫ.  �κ���ɫ�������Ա�ʹ��.\n�÷�: [color="+color+"]��ɫҪ�ı�Ϊ"+color+"������[/color]");
	} else if (basic) {
		AddTxt="[color="+color+"][/color]";
		inputs(AddTxt);
	} else {  
     	txt=prompt("ѡ�����ɫ��: "+color,"����");
		if(txt!=null) {
			AddTxt="[color="+color+"]"+txt;
			inputs(AddTxt);        
			AddTxt="[/color]";
			inputs(AddTxt);
		} 
	}
}
function showsize(size) {
	if (helpstat) {
		alert("���ִ�С���\n�������ִ�С.\n�ɱ䷶Χ 1 - 6.\n 1 Ϊ��С 6 Ϊ���.\n�÷�: [size="+size+"]���� "+size+" ����[/size]");
	} else if (basic) {
		AddTxt="[size="+size+"][/size]";
		inputs(AddTxt);
	} else {                       
		txt=prompt("��С "+size,"����"); 
		if (txt!=null) {             
			AddTxt="[size="+size+"]"+txt;
			inputs(AddTxt);
			AddTxt="[/size]";
			inputs(AddTxt);
		}        
	}
}

function swf() {
	if (helpstat) {
               alert("FLASH\n����FLASH�ļ�.\n�÷�: [swf=���, �߶�]�ļ���ַ[/swf]");
	} else if (basic) {
		AddTxt="[swf=500,350][/swf]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("FLASH�Ŀ�ȣ��߶�","500,350"); 
		if (txt2!=null) {
			txt=prompt("FLASH�ļ��ĵ�ַ","�������ַ");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[swf=500,350]"+txt;
					inputs(AddTxt);
					AddTxt="[/swf]";
					inputs(AddTxt);
				} else {
					AddTxt="[swf="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/swf]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}

function rm() {
	if (helpstat) {
               alert("realplay\n����realplay�ļ�.\n�÷�: [rm=���, �߶�]�ļ���ַ[/rm]");
	} else if (basic) {
		AddTxt="[rm=500,350][/rm]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("��Ƶ�Ŀ�ȣ��߶�","500,350"); 
		if (txt2!=null) {
			txt=prompt("��Ƶ�ļ��ĵ�ַ","�������ַ");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[rm=500,350]"+txt;
					inputs(AddTxt);
					AddTxt="[/rm]";
					inputs(AddTxt);
				} else {
					AddTxt="[rm="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/rm]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}

function mp() {
	if (helpstat) {
               alert("Media Player\n����Media Player�ļ�.\n�÷�: [mp=���, �߶�]�ļ���ַ[/mp]");
	} else if (basic) {
		AddTxt="[mp=500,350][/mp]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("��Ƶ�Ŀ�ȣ��߶�","500,350"); 
		if (txt2!=null) {
			txt=prompt("��Ƶ�ļ��ĵ�ַ","�������ַ");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[mp=500,350]"+txt;
					inputs(AddTxt);
					AddTxt="[/mp]";
					inputs(AddTxt);
				} else {
					AddTxt="[mp="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/mp]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}

function qt() {
	if (helpstat) {
               alert("QuickTime\n����QuickTime�ļ�.\n�÷�: [qt=���, �߶�]�ļ���ַ[/qt]");
	} else if (basic) {
		AddTxt="[qt=500,350][/qt]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("��Ƶ�Ŀ�ȣ��߶�","500,350"); 
		if (txt2!=null) {
			txt=prompt("��Ƶ�ļ��ĵ�ַ","�������ַ");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[qt=500,350]"+txt;
					inputs(AddTxt);
					AddTxt="[/qt]";
					inputs(AddTxt);
				} else {
					AddTxt="[qt="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/qt]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}

function sk() {
	if (helpstat) {
               alert("Shockwave\n����Shockwave�ļ�.\n�÷�: [dir=���, �߶�]�ļ���ַ[/dir]");
	} else if (basic) {
		AddTxt="[dir=500,350][/dir]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("Shockwave�ļ��Ŀ�ȣ��߶�","500,350"); 
		if (txt2!=null) {
			txt=prompt("Shockwave�ļ��ĵ�ַ","�������ַ");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[dir=500,350]"+txt;
					inputs(AddTxt);
					AddTxt="[/dir]";
					inputs(AddTxt);
				} else {
					AddTxt="[dir="+txt2+"]"+txt;
					inputs(AddTxt);
					AddTxt="[/dir]";
					inputs(AddTxt);
				}         
			} 
		}
	}
}

function center() {
if (helpstat) {alert("������\nʹ��������, ����ʹ�ı�����롢���С��Ҷ���.\n�÷�: [align=center|left|right]Ҫ������ı�[/align]");} else if (basic) {
AddTxt="[align=center|left|right][/align]";inputs(AddTxt);} else {txt2=prompt("������ʽ\n���� 'center' ��ʾ����, 'left' ��ʾ�����, 'right' ��ʾ�Ҷ���.","center");
while ((txt2!="") && (txt2!="center") && (txt2!="left") && (txt2!="right") && (txt2!=null)) {txt2=prompt("����!\n����ֻ������ 'center' �� 'left' ���� 'right'.","");}
txt=prompt("Ҫ������ı�","�ı�");if (txt!=null) {AddTxt="\r[align="+txt2+"]"+txt;inputs(AddTxt);AddTxt="[/align]";inputs(AddTxt);}}
}
function setfly() {
if (helpstat){alert("������\nʹ���ַ���.\n�÷�: [fly]����Ϊ��������[/fly]");} else if (basic) {
AddTxt="[fly][/fly]";inputs(AddTxt);} else { txt=prompt("��������","����");
if (txt!=null) { AddTxt="[fly]"+txt;inputs(AddTxt);AddTxt="[/fly]";inputs(AddTxt);}}  
}
function move() {
if (helpstat) {alert("�ƶ����\nʹ���ֲ����ƶ�Ч��.\n�÷�: [move]Ҫ�����ƶ�Ч��������[/move]");} else if (basic) {
AddTxt="[move][/move]";inputs(AddTxt);} else { txt=prompt("Ҫ�����ƶ�Ч��������","����");
if (txt!=null) { AddTxt="[move]"+txt;inputs(AddTxt);AddTxt="[/move]";inputs(AddTxt);}}
}
-->
</script>
<img onClick=bold() src="../inc/img/bold.gif" alt="������" align="absbottom"><img onClick=italicize() src="../inc/img/italicize.gif" alt="б����" align="absbottom"><img onClick=underline() src="../inc/img/underline.gif" alt="�»���" align="absbottom"><img onclick=center() alt=���뷽ʽ src="../inc/img/center.gif" align="absbottom"><img onClick=hyperlink() src="../inc/img/url.gif" alt="���볬������" align="absbottom"><img onClick=image() src="../inc/img/image.gif" alt="����ͼƬ" align="absbottom"><img onClick=swf() src="../inc/img/swf.gif" alt="����Flash" align="absbottom"><img onClick=quoteme() alt=�������� src=../inc/img/quote.gif align="absbottom"><img onclick=setfly() alt=������ src="../inc/img/fly.gif" align="absbottom"><img onclick=move() alt=�ƶ��� src="../inc/img/move.gif" align="absbottom"><img onclick=sk() src="../inc/img/Shockwave.gif" width="23" height="22" alt="Shockwave�ļ�" border="0" align="absbottom"><img onclick=rm() src="../inc/img/rm.gif" width="23" height="22" alt="realplay��Ƶ�ļ�" border="0" align="absbottom"><img onclick=mp() src="../inc/img/mp.gif" width="23" height="22" alt="Media Player��Ƶ�ļ�" border="0" align="absbottom"><img onclick=qt() src="../inc/img/qt.gif" width="23" height="22" alt="QuickTime��Ƶ�ļ�" border="0" align="absbottom"><select onChange=showfont(this.options[this.selectedIndex].value) name=font>
  <option value="����" selected>����</option>
  <option value="����_GB2312">����</option>
  <option value="������">������</option>
  <option value="����">����</option>
  <option value="����">����</option>
  <option value="Andale Mono">Andale Mono</option>
  <option value="Arial">Arial</option>
  <option value="Arial Black">Arial Black</option>
  <option value="Book Antiqua">Book Antiqua</option>
  <option value="Century Gothic">Century Gothic</option>
  <option value="Comic Sans MS">Comic Sans MS</option>
  <option value="Courier New">Courier New</option>
  <option value="Georgia">Georgia</option>
  <option value="Impact">Impact</option>
  <option value="Tahoma">Tahoma</option>
  <option value="Times New Roman">Times New Roman</option>
  <option value="Trebuchet MS">Trebuchet MS</option>
  <option value="Script MT Bold">Script MT Bold</option>
  <option value="Stencil">Stencil</option>
  <option value="Verdana">Verdana</option>
  <option value="Lucida Console">Lucida Console</option>
</select><select onChange=showsize(this.options[this.selectedIndex].value) name=size>
  <option value=1>1</option>
  <option value=2>2</option>
  <option value=3 selected>3</option>
  <option value=4>4</option>
  <option value=5>5</option>
  <option value=6>6</option>
</select><select onChange=showcolor(this.options[this.selectedIndex].value) name=color>
  <option style=background-color:Black;color:Black value=Black selected>Black</option>
  <option style=background-color:White;color:White value=White>White</option>
  <option style=background-color:Red;color:Red value=Red>Red</option>
  <option style=background-color:Yellow;color:Yellow value=Yellow>Yellow</option>
  <option style=background-color:Lime;color:Lime value=Lime>Lime</option>
  <option style=background-color:Aqua;color:Aqua value=Aqua>Aqua</option>
  <option style=background-color:Blue;color:Blue value=Blue>Blue</option>
  <option style=background-color:Fuchsia;color:Fuchsia value=Fuchsia>Fuchsia</option>
  <option style=background-color:Gray;color:Gray value=Gray>Gray</option>
  <option style=background-color:Silver;color:Silver value=Silver>Silver</option>
  <option style=background-color:Maroon;color:Maroon value=Maroon>Maroon</option>
  <option style=background-color:Olive;color:Olive value=Olive>Olive</option>
  <option style=background-color:Green;color:Green value=Green>Green</option>
  <option style=background-color:Teal;color:Teal value=Teal>Teal</option>
  <option style=background-color:Navy;color:Navy value=Navy>Navy</option>
  <option style=background-color:Purple;color:Purple value=Purple>Purple</option>
  <option style=background-color:Transparent;color:Transparent value=Transparent>Transparent</option>
</select>
