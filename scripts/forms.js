/* JavaScript Document
 * Created by: Bruno da Gama Porciuncula (bgamap@gmail.com)
 *
 * Form validation.
 */

function $( elementId ) {
	return document.getElementById( elementId ); 
}

function usrFName( strPar ) {
	return  fNames[strPar]; 
}

function isblank(s) {
    for(var i = 0; i < s.length; i++) {
        var c = s.charAt(i);
        if ((c != ' ') && (c != '\n') && (c != '\t')) return false;
    }
    return true;
}

function checkEmptyFields( strFormId ) {
	var f = document.getElementById( strFormId );
	var j =	f.length;
	var fEInvalid = new Array();
	var fEInvalidCount = 0;
	
	for ( var i=0;i<j;i++ ) {
		var fE = f.elements[i];
		if ( ( (fE.type == "text") || (fE.type == "textarea") ) && !fE.optional ) {
			if ( (fE.value == "") || ( fE.value== null ) || isblank(fE.value) ) {				
				fEInvalid[fEInvalidCount] = i;
				fEInvalidCount++;
			}
		}
	}
	if ( fEInvalid.length > 0 ) {
		var msg ="Os campos abaixo devem ser preenchidos:";
		for ( var i=0;i<fEInvalid.length;i++ ) {
			if ( fEInvalid[i] != "undefined" ) msg += "\n"+usrFName(f.elements[fEInvalid[i]].name);
		}
		alert(msg);
		return false;
	} else {
		return true;
	}
}

function checkDate() {
	var monthLength = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	var f = document.getElementById('formulario');
	var j = f.length;	
	//TODO SELECT OR INPUT
	var d = getServerDay();
	var m = getServerMonth();
	var y = getServerYear();
		
}

function checkEmail( strFormId ) {
	var chk = true;
	var f = document.getElementById( strFormId );
	var j = f.length;
	
	for ( var i=0;i<j;i++ ) {
		var fE = f.elements[i];
		if ( fE.name == "fEmail" ) {
			var filter=/^.+@.+\..{2,3}$/;
			var str = fE.value;
			if (filter.test(str)) return chk;
			else {
				chk = false;
				alert('O E-mail digitado é inválido');
				return chk;
			}
		}
	}
}

function checkForm() {
	var strFormId = document.forms[0].id;
	var chkForm = true;
	if ( chkForm && !checkEmptyFields( strFormId ) ) {
		chkForm = false;
	}
	if ( chkForm && !checkEmail( strFormId ) ) {
		chkForm = false;
	}
	return chkForm;
}


function resetDefaultValues( strFormId ) {
	var f = document.getElementById( strFormId );
	for ( var i=0;i<f.length;i++ ) {
		var fE = f.elements[i];
		if ( (fE.indexOf('text') > -1) || (fE.indexOf('password') > -1) || (fE.indexOf('hidden') > -1) ) {
			fE.elements[i].value = fE.elements[i].defaultValue;
		}
	}

}

menus = new Array("concessionarias","oficina","produtos");
function navMenu(strElementId) {
	for ( var i=0;i<menus.length;i++ ) {
		DOMElement = $(menus[i]);
		DOMElementsA = DOMElement.getElementsByTagName("A");
		DOMElementsA[0].className = ""+menus[i]+"";
		DOMElementsUL = DOMElement.getElementsByTagName("UL");
		DOMElementsUL[0].className = "";
	}
	DOMElement = $(strElementId);
	DOMElementsA = DOMElement.getElementsByTagName("A");
	DOMElementsA[0].className = ""+strElementId+"Selected";
	DOMElementsUL = DOMElement.getElementsByTagName("UL");
	DOMElementsUL[0].className = "selected";

}