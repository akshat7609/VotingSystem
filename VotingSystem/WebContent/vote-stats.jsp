<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="votingsystem.database.VotingBin" %>
<%@page import="java.util.List" %>
<%@page import="votingsystem.domain.Vote" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<title>Voting System</title>
<%
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
			    if(cookie.getName().equals("username"))
			    	userName = cookie.getValue();
			}
		}
		if(userName == null)
			response.sendRedirect("login.jsp");
	%>
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="section">
				<div
					style="text-align: center; color: white; margin: 0px 0 0px 324px;">
					<h1>Online Voting System</h1>
					<h3>A project by Akshat Jain</h3>
				</div>
			</div>
			<ul>
				<li><a href="index.jsp">Project Description</a></li>
				<li><a href="vote.jsp">Vote Here</a></li>
				<li class="current"><a href="vote-stats.jsp">Voting
						Statistics</a></li>
				<li><a href="contact.jsp">Contact us</a></li>
				<li><a href="JasonServlet">Web Service</a></li>
				<li><a href="logoutServlet">Logout</a></li>
				<li><a class="welcome"><b>Welcome! <%=userName %></b></a></li>
			</ul>
			<%
				VotingBin vb = new VotingBin();
				int author1Count=0, author2Count=0, author3Count=0, author4Count=0;
				List<Vote> list = vb.displayVotingStatistics();
				for(Vote v:list) {
					author1Count = v.getAuthor1();
					author2Count = v.getAuthor2();
					author3Count = v.getAuthor3();
					author4Count = v.getAuthor4();
				}
			%>
			<div id="tagline">
				<div>
					<h2 style="margin: 0px 0px 0px 300px;">Total number of Votes
						registered!</h2>
					<div style="padding: 0px 0px 21px 0;">
						<center>
							<table cellspacing=0 cellpadding="10">
								<tr>
									<td align=left style="color: #295071">Miguel de Cervantes:</td>
									<td><input type="text" id="java" value="<%=author1Count%>" name="java" size="10"
										disabled="disabled"></td>
								</tr>
								<tr>
									<td align=left style="color: #295071">Charles Dickens:</td>
									<td><input type="text" id="dotnet" value="<%=author2Count%>" name="dotnet" size="10"
										disabled="disabled"></td>
								</tr>
								<tr>
									<td align=left style="color: #295071">J.R.R. Tolkien:</td>
									<td><input type="text" id="python" value="<%=author3Count%>" name="python" size="10"
										disabled="disabled"></td>
								</tr>
								<tr>
									<td align=left style="color: #295071">Antoine de Saint-Exuper:</td>
									<td><input type="text" id="python" value="<%=author4Count%>" name="python" size="10"
										disabled="disabled"></td>
								</tr>
							</table>
						</center>
					</div>
				</div>
			</div>
			<div id="footer">
				<div>
					<div class="section">
						<p style="text-align: center;">Copyright &copy; Akshat Jain,
							- All Rights Reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>