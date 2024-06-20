<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> Yatra Service </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>

<BODY>

<FORM METHOD=POST ACTION="usebean.jsp">
<SELECT NAME="sel1">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>

</SELECT>
<%if(request.getParameter("sel1")!=null)
{%>
<SELECT NAME="sel2">
<option value="1"<%=request.getParameter("sel1").equals("1")?"selected":""%>>1</option>
<option value="2"<%=request.getParameter("sel1").equals("2")?"selected":""%>>2</option>
<option value="3"<%=request.getParameter("sel1").equals("3")?"selected":""%>>3</option>
<option value="4" <%=request.getParameter("sel1").equals("4")?"selected":""%>>4</option>

</SELECT>
      <%if(request.getParameter("sel2")!=null)
{%>
<SELECT NAME="sel3">
<option value="1"<%=request.getParameter("sel2").equals("1")?"selected":""%>>1</option>
<option value="2"<%=request.getParameter("sel2").equals("2")?"selected":""%>>2</option>
<option value="3"<%=request.getParameter("sel2").equals("3")?"selected":""%>>3</option>
<option value="4" <%=request.getParameter("sel2").equals("4")?"selected":""%>>4</option>

</SELECT>
      
<%}
%>
<%}
%>
<INPUT TYPE="submit">
</FORM>
</BODY>
</HTML>
