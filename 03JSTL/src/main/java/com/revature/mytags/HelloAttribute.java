package com.revature.mytags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class HelloAttribute extends TagSupport {
	
	String yourName;

	public void setYourName(String yourName) {
		this.yourName = yourName;
	}
	
	public int doStartTag() throws JspException {  
	    JspWriter out=pageContext.getOut();  
	    try{  
	        out.print("<h2> Hello "+yourName.toUpperCase()+"</h2>");  
	    }catch(Exception e){e.printStackTrace();}  
	      
	    return SKIP_BODY;  
	}  
	
	

}
