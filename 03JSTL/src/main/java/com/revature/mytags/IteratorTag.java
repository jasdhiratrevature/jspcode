package com.revature.mytags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class IteratorTag extends TagSupport{

	private int counter = 0;
	  private String[] names = null;

	  public int doStartTag()
	  {
	    names = (String[]) pageContext.getAttribute("names");
	    return EVAL_BODY_INCLUDE;
	  }

	  public int doAfterBody() throws JspException
	  {
	    try{
	      pageContext.getOut().print(" " + names[counter] + "<BR>");
	    } catch(Exception e){
	      throw new JspException(e.toString());
	    }
	    counter++;
	    if(counter >= names.length) {
	      return SKIP_BODY;
	    }
	    return EVAL_BODY_AGAIN;
	  }
}
