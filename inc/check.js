//***JavaScript �����д������*******//

function outcheck(check_value){
	if(check_value != ""){
		alert(check_value)
		return false; 
	}
	return true;
}

function checkvalue(obj, low, up, mode, lable){
/*
Mode = 1 ����Ƿ�Ϊ��   2�Ƿ�������  4�Ƿ�����
8�Ƿ���Ϊ���֡���ĸ��_.-
16 �Զ����ַ����
32 ���ȼ��
64 ���ִ�С���
*/
    var temp,type;
    var length, i, base, str;
    
    str=getformvalue(obj);
    if(str==null){
		lenght=0;
		str="";
	}	
	else{	
		length = str.length
	}	
    temp=""
    if( mode % 2 >= 1 ){
        if( str == "" ){
            temp = temp + "��" + lable + "��" + "����Ϊ�գ�" + "\n";
        }
    }
    
    if( mode % 4 >= 2 ){
        base = "0123456789."
        for(i = 0;i<=length-1;i++)
            if( base.indexOf(str.substring(i, i+1)) == -1  ){
				temp = temp + "��" + lable + "��" + "���������֣�" + "\n";
				break;
            }    
    }
    
    if( mode % 8 >= 4 ){
        base = "0123456789"
        for(i = 0;i<=length-1;i++)
            if( base.indexOf(str.substring(i, i+1)) == -1  ){
                temp = temp + "��" + lable + "��" + "������������" + "\n";
                break;
            }    
    }
    
    if( mode % 16 >= 8 ){
        base = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789_-."
        for(i = 0;i<=length-1;i++)
            if( base.indexOf(str.substring(i, i+1)) == -1  ){
                temp = temp + "��" + lable + "��" + "�����Ƿ��ַ�����ֻ������ĸ�����ֺ͡�- _ .����" + "\n";
                break;
            }
    }
    
    if( mode % 32 >= 16 ){
        base = low.replace("[a-z]", "abcdefghijklmnopqrstuvwxyz")
        base = base.replace("[a-z]", "abcdefghijklmnopqrstuvwxyz")
        base = base.replace( "[0-9]", "0123456789")
        for(i = 0;i<=length-1;i++)
            if( base.indexOf(str.substring(i, i+1)) == -1 ){
                temp = temp + "��" + lable + "��" + "�����Ƿ��ַ�����ֻ����" + up + "��" + "\n";
                break;
            }
    }
    
    if( mode % 64 >= 32 ){
        if( ! (length >= low && length <= up) ){
               temp = temp + "��" + lable + "��" + "�ĳ��ȱ�����" + low + "��" + up + "֮�䣡" + "\n";
        }
    }
    
     if( mode % 128 >= 64 ){
        if( ! (parseInt(str) >= parseInt(low) && parseInt(str) <= parseInt(up)) ){
               temp = temp + "��" + lable + "��" + "������" + low + "��" + up + "֮�䣡" + "\n";
        }

    }
    if(temp!=""){
    	alert(temp);
    	type=(getformtype(obj));
    	if(type!="radio" && type!="checkbox"){
    		obj.focus();
    	}
	return false; 
   }
   return true;
    
}

function getformtype(obj){
	var type;
	type=obj.type;
	if(typeof(type)=="undefined"){

		type=obj[0].type;
	}
	return type;		
}
function getformvalue(input){
//ȡ�����ֵ
	var type,temp;
	temp="";
	
	type=getformtype(input);	

	switch(type){
		case "radio":	//��ѡ��
			n=input.length-1;

			if(isNaN(n)==true){
				if(input.checked == true){
					temp = input.value;
				}else{
					temp = "";
				}	
			}else{
				for(i=0;i<=n;i++){
					if(input[i].checked == true){
						return(input[i].value);
					}
				}
				break;
			}
			case "checkbox":	//��ѡ��
			n=input.length-1;
			if(isNaN(n)==true){
				if(input.checked == true){
					temp = input.value;
				}else{
					temp = "";
				}	
			}else{
				for(i=0;i<=n;i++){
					if(input[i].checked == true){
						if(temp!=""){
							temp += ",";
						}
						temp += input[i].value;

					}	
				}
			}
			return(temp);
			break;
			
		case "select-one" :	//��ѡ�б��
			n=input.length-1;	
			for(i=0;i<=n;i++){
				if(input.options[i].selected == true){
					temp = input.options[i].value;
					break;
				}			
			}
			return(temp);
			break;				
		case "select-multiple":	//��ѡ�б��
			n=input.length-1;	
			for(i=0;i<=n;i++){
				if(input.options[i].selected == true){
					if(temp!=""){
						temp+=",";
					}					
					temp+=input.options[i].value;
				}			
			}
			return(temp);
			break;			
		default:				//����
			return(input.value);
			break;
	
	}
	
	return(input.value);

}

function ischecked(group,value){
	var i,n;
	n=group.length-1;
	for(i=0;i<=n;i++){
		if(value==group[i]){
			return true;			
		}
	}
	return false;
}

function SetTrueFalse(value){
	var value=value
	if (value=="True"){   //�������ݿ��еġ��桱���ɡ�1��
		value="1";
	}
	if (value=="False"){	//�������ݿ��еġ��١����ɡ�0��
		value="0";
	}
	return value;
}

function SetSelectedAndChecked(input,value){
//���ñ����ѡ��
	var type,temp,i,n;
	var split_value = new Array();
	value=SetTrueFalse(value)
	temp="";
	
	type=input.type;
	
	if(typeof(type)=="undefined"){
		type=input[0].type;
	}
	

	switch(type){
		case "radio":	//��ѡ��
			n=input.length-1;

			if(isNaN(n)==true){
				if(input.value = value){
					input.checked = true;
				}else{
					input.checked = false;
				}	
			}else{
				for(i=0;i<=n;i++){
					if(input[i].value == value){
						input[i].checked = true;
					}else{
						input[i].checked = false;					
					}
				}
			}
			break;

		case "checkbox":	//��ѡ��
			n=input.length-1;
			split_value=value.split(",");
			if(isNaN(n)==true){
				if(ischecked(split_value,input.value)){
					input.checked = true;
				}else{
					input.checked = false;
				}	
			}else{
				for(i=0;i<=n;i++){
					if(ischecked(split_value,input[i].value)){
						input[i].checked = true;
					}else{
						input[i].checked = false;					
					}					
				}
				
			}
			break;
			
		case "select-one" :	//��ѡ�б��
			n=input.options.length-1;	
			for(i=0;i<=n;i++){
				if(input.options[i].value == value){
					input.options[i].selected = true;
				}else{
					input.options[i].selected = false;				
				}
						
			}
			break;				
		case "select-multiple":	//��ѡ�б��
			n=input.options.length-1;	
			split_value=value.split(",");
			for(i=0;i<=n;i++){
				if(ischecked(split_value,input.options[i].value)){
						input.options[i].selected = true;
				}else{
						input.options[i].selected = false;				
				}			
			}
			break;			
		default:				//����
			return false;
			break;
	
	}
	
	return true;

}

function split_long_str(str1)
	{
			/*�ָ�ǳ������ı������ݣ���ΪIE����ֻ�ܴ���50000�������µĵ����ִ�*/
 			/*����IE�İ汾��ͬ���ɴ�����ִ����޳��ȿ���Ҳ��ͬ**������*ע*/
	    var textLength = str1.length;	/* Maxinum number of records to return? */
	    var p=0;     /*point textstring*/
	    var str;	/* part od htmlstring*/
		var i=0;
		var nm="content";
		var nm1;
		while ( p <textLength && i<50 ){
			nm1=nm+i;
			//str =  str1.substr( p,50000);
			str =  str1.substr( p,50000);
			//window.form1.elements(nm1).value = str;
			document.add.elements(nm1).value = str;
			//document.add.elements(nm1).value = str;
			p=p+50000;
			i=i+1;
		
		}
		//document.add.n_body.value = "";
		//window.add.submit();
	} 