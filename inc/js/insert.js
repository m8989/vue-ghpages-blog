function insert_to_table(str1)
	{

	    var textLength = str1.length;	/* Maxinum number of records to return? */
	    var p=0;     /*point textstring*/
	    var str;	/* part od htmlstring*/
		var i=0;
		var nm="content";
		var nm1;
		while ( p <textLength && i<50 ){
			nm1=nm+i;
			str =  str1.substr( p,60000);
			window.form1.elements(nm1).value = str;
			p=p+60000;
			i=i+1;
		}
	} 
   