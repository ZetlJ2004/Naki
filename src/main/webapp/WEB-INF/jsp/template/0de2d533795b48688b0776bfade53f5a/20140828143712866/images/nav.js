window.onload=function(){  
		var oUl=document.getElementById('easynav'); 
		for(var i=0; i<oUl.childNodes.length; i++){  
		childNode=oUl.childNodes[i];  
			if(childNode.nodeName=='LI'){ 
				childNode.onmouseover=function(){this.className='show';}     
				childNode.onmouseout=function(){this.className='';}}     
			}  
			}