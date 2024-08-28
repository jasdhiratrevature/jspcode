package com.revature.mytags;

import java.io.IOException;
import java.io.StringWriter;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class HelloBodyTag extends SimpleTagSupport {
	StringWriter sw = new StringWriter();

	public void doTag() throws JspException, IOException {
		getJspBody().invoke(sw);
		getJspContext().getOut().println(sw.toString().toUpperCase());
	}
}
