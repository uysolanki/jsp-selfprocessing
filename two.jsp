<%@ include file="header.jsp" %>
	  <head>
      <title> EnumTech
      </title>
			<link 
			type="text/css"
			href="mystylesenumtech.css"
			rel="stylesheet">
			</link>
	  </head>
	  <body>
	  <form name="f1" method="post" action="titanic">
	  
	  Enter Name: <input type="text" name="t1"><br>
	 
	 <input type="submit" name="s1" value="Show">
	 
	 </form>

<%! String strMyText =""; %>
<%
  
  if(request.getParameter("s1")!=null)
  {
		if(request.getParameter("t1")!="")
		{
		strMyText=request.getParameter("t1");
		int a=Integer.parseInt(application.getInitParameter("vara"));
		int b=Integer.parseInt(application.getInitParameter("varb"));
		int c= a+b;
		out.println("Context Addition is "+c);
		
		session.setAttribute("applicationans",c); 
		
		int x=Integer.parseInt(config.getInitParameter("varc"));
		int y=Integer.parseInt(config.getInitParameter("vard"));
		int z= x+y;
		out.println("Config Addition is "+z);
		session.setAttribute("configans",z);
		%>
		
		<h1>Welcome <%= strMyText %></h1>
		<h1>Welcome <%= session.getAttribute("applicationans") %></h1>
		<p>Welcome <%= session.getAttribute("configans") %></p>
		
		<%
		}
		else
		{
		out.println("Textbox cannot be Empty");	
		} 
  
  }  
		
%>

