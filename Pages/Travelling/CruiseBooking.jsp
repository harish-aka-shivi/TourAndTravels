<%@include file="../Common/Global.jsp"%>
<SCRIPT>
function doSubmit()
{
var strErrMsg;
strErrMsg = "";			
strErrMsg = doValidations();
if (strErrMsg == "" )
{				
document.mainform.action = "<%=path+"/cruiseconfirm"%>";				
document.mainform.submit();
}
else
{alert(strErrMsg);}
}
function doValidations()
{
var ddIndex;
var strTemp;
var strFld;
var frmDoc;
var strErrMsg;
strErrMsg = "";
frmDoc = document.mainform;			
strFld = frmDoc.cardno
if (strFld.value == ""|| strFld.value.length<4 || strFld.value.length >4 ) 		
strErrMsg = strErrMsg + " Credit Crad No. is Invalid\n";
return strErrMsg;
}
</SCRIPT>
<TABLE WIDTH=580 align=center cellspacing=0 cellpadding=0 style="font:bold 11px verdana">
	<TR><Td align=center><BR>Search&nbsp;:&nbsp;<input type=text name=search class=input>&nbsp;&nbsp;<button accesskey='S'><u>S</u>earch</button>&nbsp;&nbsp;<a href='advanced.htm'>Advanced Search</a><BR><BR></Th></TR>
<TR><Th style='color:green'><BR><B><center>Travel Management</center></B><BR></TD></TR></TABLE>
<FORM name=mainform method=post action="<%=path+"/login"%>">
<table cellspacing=0 cellpadding=4>

	<%
		String status=request.getAttribute("Response")!=null?"<TR><TD colspan=2 align=center style='color:maroon'>"+request.getAttribute("Response").toString()+"</TD></TR>":"";
		out.println(status);
	%>
<TR>
	<TD align=right>Customer Id&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="loginid" type="text" class=input value="<%=user%>">
		</TR>
		<TR>
			<td align=right>Departure From&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<td><select name="source" id="select33">
<option value="ND" selected>New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH">Chennai</option>
<option value="MB">Mumbai</option>
<option value="VS">Vishakapatnam</option>
<option value="MG">Manglore</option>
<option value="LK">Lucknow</option>
<option value="GO">Goa</option>
</select></TD></TR>
		<TR>
			<TD align=right>Arrival To&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="destination" id="select34">
<option value="ND">New Delhi</option>
<option value="KL">Kolkata</option>
<option value="CH" selected>Chennai</option>
<option value="MB">Mumbai</option>
<option value="VS">Vishakapatnam</option>
<option value="MG">Manglore</option>
<option value="LK">Lucknow</option>
<option value="GO">Goa</option>
</select></TD></TR>
		<tr><td align=right>Departure Date&nbsp;&nbsp;:&nbsp;&nbsp;</td>
		<td><select name="sdd" id="sdd">
<option value="1">01</option>
<option value="2">02</option>
<option value="3">03</option>
<option value="4">04</option>
<option value="5">05</option>
<option value="6">06</option>
<option value="7">07</option>
<option value="8">08</option>
<option value="9">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13" selected>13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select><select name="smm" id="smm">
<option value="1">JAN</option>
<option value="2">FEB</option>
<option value="3">MAR</option>
<option value="4">APR</option>
<option value="5">MAY</option>
<option value="6">JUN</option>
<option value="7">JUL</option>
<option value="8">AUG</option>
<option value="9">SEP</option>
<option value="10">OCT</option>
<option value="11" selected>NOV</option>
<option value="12">DEC</option>
</select> 
<select name="syy" id="syy">
<option value="04" selected>2004</option>
<option value="05">2005</option>
<option value="06">2006</option>
<option value="07">2007</option>
<option value="08">2008</option>
<option value="09">2009</option>
</select></td>
		</tr>
		<TR>
			<TD align=right>Cruise Lines&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><SELECT name=cruiselines size=1 id="cruiselines">
<OPTION value=1>Carnival Cruise Lines</OPTION>
<option value="2">Celebrity Cruises</option>
<option value="3">Costa Cruises</option>
<option value="4">Crystal Cruises</option>
<option value="5">Cunard Line</option>
<option value="6">Disney Cruise Line</option>
</SELECT></TD></TR>
	<TR>
			<TD align=right>No of Nights&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="nights" id="nights">
<option value="1">1-6 Nights</option>
<option value="2">7-9 Nights</option>
<option value="3">10 Nights+</option>
</select></TD></TR>

	<TR>
			<TD align=right>No.of Tickets.&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="tickets" size="1" id="tickets">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select></TD>
		</TR>
	<TR>
			<TD align=right>No.of Children&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><select name="children" id="children">
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select></TD>
		</TR>

	<TR>
		<TD align=right>Enter last four digits of your Credit Card No&nbsp;&nbsp;:&nbsp;&nbsp;</TD>
			<TD><input name="cardno" type="text" class=input>
		</TR>

<TR><Td colspan=2 align=center><button onclick="javascript:doSubmit()">Book Cruise</button>
</TD></TR></tABLE></form>
<!--<SCRIPT>setFooter("<%=path%>","<%=path+"/Images/Shipbg.jpg"%>")</SCRIPT>-->


