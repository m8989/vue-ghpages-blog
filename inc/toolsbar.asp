<script language="JavaScript">
<!--
/* //在所使用的页面中需要有下面三行类似的代码
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
		alert("加粗标记\n使文本加粗.\n用法: [b]这是加粗的文字[/b]");
	} else if (basic) {
		AddTxt="[b][/b]";
		inputs(AddTxt);
	} else {  
		txt=prompt("文字将被变粗.","文字");     
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
		alert("斜体标记\n使文本字体变为斜体.\n用法: [i]这是斜体字[/i]");
	} else if (basic) {
		AddTxt="[i][/i]";
		inputs(AddTxt);
	} else {   
		txt=prompt("文字将变斜体","文字");     
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
		alert("引用标记\n引用一些文字.\n用法: [quote]引用内容[/quote]");
	} else if (basic) {
		AddTxt="[quote][/quote]";
		inputs(AddTxt);
	} else {   
		txt=prompt("被引用的文字","文字");     
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
		alert("超级链接标记\n插入一个超级链接标记\n使用方法: [url]http://ezRick.com[/url]\nUSE: [url=http://ezRick.com]链接文字[/url]");
	} else if (basic) {
		AddTxt="[url][/url]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("链接文本显示.\n如果不想使用, 可以为空, 将只显示超级链接地址. ",""); 
		if (txt2!=null) {
			txt=prompt("超级链接.","http://");      
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
               alert("图片标记\n插入图片\n用法： [img align=Right ]http://ezRick.com/test.gif[/img]");
	} else if (basic) {
		AddTxt="[img align=center][/img]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("图片的对齐方式：Left|center|Right ","Right"); 
		if (txt2!=null) {
			txt=prompt("图片的 URL","http://");
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
		alert("图片标记\n插入图片\n用法： [img]http://ezRick.com/test.gif[/img]");
	} else if (basic) {
		AddTxt="[img][/img]";
		inputs(AddTxt);
	} else {  
		txt=prompt("图片的 URL","http://");    
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
		alert("下划线标记\n给文字加下划线.\n用法: [u]要加下划线的文字[/u]");
	} else if (basic) {
		AddTxt="[u][/u]";
		inputs(AddTxt);
	} else {  
		txt=prompt("下划线文字.","文字");     
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
		alert("字体标记\n给文字设置字体.\n用法: [font="+font+"]改变文字字体为"+font+"[/font]");
	} else if (basic) {
		AddTxt="[font="+font+"][/font]";
		inputs(AddTxt);
	} else {                  
		txt=prompt("要设置字体的文字"+font,"文字");
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
		alert("颜色标记\n设置文本颜色.  任何颜色名都可以被使用.\n用法: [color="+color+"]颜色要改变为"+color+"的文字[/color]");
	} else if (basic) {
		AddTxt="[color="+color+"][/color]";
		inputs(AddTxt);
	} else {  
     	txt=prompt("选择的颜色是: "+color,"文字");
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
		alert("文字大小标记\n设置文字大小.\n可变范围 1 - 6.\n 1 为最小 6 为最大.\n用法: [size="+size+"]这是 "+size+" 文字[/size]");
	} else if (basic) {
		AddTxt="[size="+size+"][/size]";
		inputs(AddTxt);
	} else {                       
		txt=prompt("大小 "+size,"文字"); 
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
               alert("FLASH\n播放FLASH文件.\n用法: [swf=宽度, 高度]文件地址[/swf]");
	} else if (basic) {
		AddTxt="[swf=500,350][/swf]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("FLASH的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("FLASH文件的地址","请输入地址");
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
               alert("realplay\n播放realplay文件.\n用法: [rm=宽度, 高度]文件地址[/rm]");
	} else if (basic) {
		AddTxt="[rm=500,350][/rm]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入地址");
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
               alert("Media Player\n播放Media Player文件.\n用法: [mp=宽度, 高度]文件地址[/mp]");
	} else if (basic) {
		AddTxt="[mp=500,350][/mp]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入地址");
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
               alert("QuickTime\n播放QuickTime文件.\n用法: [qt=宽度, 高度]文件地址[/qt]");
	} else if (basic) {
		AddTxt="[qt=500,350][/qt]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入地址");
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
               alert("Shockwave\n插入Shockwave文件.\n用法: [dir=宽度, 高度]文件地址[/dir]");
	} else if (basic) {
		AddTxt="[dir=500,350][/dir]";
		inputs(AddTxt);
	} else { 
		txt2=prompt("Shockwave文件的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("Shockwave文件的地址","请输入地址");
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
if (helpstat) {alert("对齐标记\n使用这个标记, 可以使文本左对齐、居中、右对齐.\n用法: [align=center|left|right]要对齐的文本[/align]");} else if (basic) {
AddTxt="[align=center|left|right][/align]";inputs(AddTxt);} else {txt2=prompt("对齐样式\n输入 'center' 表示居中, 'left' 表示左对齐, 'right' 表示右对齐.","center");
while ((txt2!="") && (txt2!="center") && (txt2!="left") && (txt2!="right") && (txt2!=null)) {txt2=prompt("错误!\n类型只能输入 'center' 、 'left' 或者 'right'.","");}
txt=prompt("要对齐的文本","文本");if (txt!=null) {AddTxt="\r[align="+txt2+"]"+txt;inputs(AddTxt);AddTxt="[/align]";inputs(AddTxt);}}
}
function setfly() {
if (helpstat){alert("飞翔标记\n使文字飞行.\n用法: [fly]文字为这样文字[/fly]");} else if (basic) {
AddTxt="[fly][/fly]";inputs(AddTxt);} else { txt=prompt("飞翔文字","文字");
if (txt!=null) { AddTxt="[fly]"+txt;inputs(AddTxt);AddTxt="[/fly]";inputs(AddTxt);}}  
}
function move() {
if (helpstat) {alert("移动标记\n使文字产生移动效果.\n用法: [move]要产生移动效果的文字[/move]");} else if (basic) {
AddTxt="[move][/move]";inputs(AddTxt);} else { txt=prompt("要产生移动效果的文字","文字");
if (txt!=null) { AddTxt="[move]"+txt;inputs(AddTxt);AddTxt="[/move]";inputs(AddTxt);}}
}
-->
</script>
<img onClick=bold() src="../inc/img/bold.gif" alt="粗体字" align="absbottom"><img onClick=italicize() src="../inc/img/italicize.gif" alt="斜体字" align="absbottom"><img onClick=underline() src="../inc/img/underline.gif" alt="下划线" align="absbottom"><img onclick=center() alt=对齐方式 src="../inc/img/center.gif" align="absbottom"><img onClick=hyperlink() src="../inc/img/url.gif" alt="插入超级链接" align="absbottom"><img onClick=image() src="../inc/img/image.gif" alt="插入图片" align="absbottom"><img onClick=swf() src="../inc/img/swf.gif" alt="插入Flash" align="absbottom"><img onClick=quoteme() alt=插入引用 src=../inc/img/quote.gif align="absbottom"><img onclick=setfly() alt=飞行字 src="../inc/img/fly.gif" align="absbottom"><img onclick=move() alt=移动字 src="../inc/img/move.gif" align="absbottom"><img onclick=sk() src="../inc/img/Shockwave.gif" width="23" height="22" alt="Shockwave文件" border="0" align="absbottom"><img onclick=rm() src="../inc/img/rm.gif" width="23" height="22" alt="realplay视频文件" border="0" align="absbottom"><img onclick=mp() src="../inc/img/mp.gif" width="23" height="22" alt="Media Player视频文件" border="0" align="absbottom"><img onclick=qt() src="../inc/img/qt.gif" width="23" height="22" alt="QuickTime视频文件" border="0" align="absbottom"><select onChange=showfont(this.options[this.selectedIndex].value) name=font>
  <option value="宋体" selected>宋体</option>
  <option value="楷体_GB2312">楷体</option>
  <option value="新宋体">新宋体</option>
  <option value="黑体">黑体</option>
  <option value="隶书">隶书</option>
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
