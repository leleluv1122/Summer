<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>
<script type="text/javascript">
	function selectCheck(form) {
		form.submit();
	}
	function monthDown(form) {
		if (form.month.value > 1) {
			form.month.value--;
		} else {
			form.month.value = 12;
			form.year.value--;
		}
		form.submit();
	}
	function monthUp(form) {
		if (form.month.value < 12) {
			form.month.value++;
		} else {
			form.month.value = 1;
			form.year.value++;
		}
		form.submit();
	}
</script>
</head>
<body>
	<%
		//���� ��¥ ����
		Calendar cr = Calendar.getInstance();
		int year = cr.get(Calendar.YEAR);
		int month = cr.get(Calendar.MONTH);
		int date = cr.get(Calendar.DATE); //���� ��¥ 
		String today = year + ":" + (month + 1) + ":" + date; //������ ���� / �� 
		String input_year = request.getParameter("year");
		String input_month = request.getParameter("month");
		if (input_month != null) {
			month = Integer.parseInt(input_month) - 1;
		}
		if (input_year != null) {
			year = Integer.parseInt(input_year);
		} // 1�Ϻ��� �����ϴ� �޷��� ����� ���� ������ ����,���� �����ϰ� �Ϻκ��� 1�� �����Ѵ�. 
		cr.set(year, month, 1);
		// ������ ��¥�� ���� �Ʒ� ������ ���� 
		// �ش� ���� ù���� ���� 
		int startDate = cr.getMinimum(Calendar.DATE); // �ش� ���� ������ ���� ���� 
		int endDate = cr.getActualMaximum(Calendar.DATE); // 1���� ������ ���� 
		int startDay = cr.get(Calendar.DAY_OF_WEEK);
		int count = 0;
	%>
	<form method="post" action="calendar.jsp" name="change">
		<table width="400" cellpadding="2" cellspacing="0" border="0"
			align="center">
			<tr>
				<td width="140" align="right"><input type="button" value="��"
					onClick="monthDown(this.form)"></td>
				<td width="120" align="center"><select name="year"
					onchange="selectCheck(this.form)">
						<%
							for (int i = year - 10; i < year + 10; i++) {
								String selected = (i == year) ? "selected" : "";
								String color = (i == year) ? "#CCCCCC" : "#FFFFFF";
								out.print("<option value=" + i + " " + selected + " style=background:" + color + ">" + i + "</option>");
							}
						%>
				</select> <select name="month" onchange="selectCheck(this.form)">
						<%
							for (int i = 1; i <= 12; i++) {
								String selected = (i == month + 1) ? "selected" : "";
								String color = (i == month + 1) ? "#CCCCCC" : "#FFFFFF";
								out.print("<option value=" + i + " " + selected + " style=background:" + color + ">" + i + "</option>");
							}
						%>
				</select></td>
				<td width="140"><input type="button" value="��"
					onClick="monthUp(this.form)"></td>
			</tr>
			<tr>
				<td align="right" colspan="3"><a href="calendar.jsp"><font
						size="2">Today : <%=today%></font></a></td>
			</tr>
		</table>
	</form>
	<table align="center">
		<colgroup>
			<col width="14%" />
			<col width="14%" />
			<col width="14%" />
			<col width="14%" />
			<col width="14%" />
			<col width="14%" />
		</colgroup>
		<tr height="30">
			<td><font size="4">sun</font></td>
			<td><font size="4">mon</font></td>
			<td><font size="4">tue</font></td>
			<td><font size="4">wed</font></td>
			<td><font size="4">thu</font></td>
			<td><font size="4">fri</font></td>
			<td><font size="4">sat</font></td>
		</tr>
		<tr height="30">
			<%
				for (int i = 1; i < startDay; i++) {
					count++;
			%>
			<td>&nbsp;</td>
			<%
				}
				for (int i = startDate; i <= endDate; i++) {
					String bgcolor = (today.equals(year + ":" + (month + 1) + ":" + i)) ? "#fffdc2" : "#FFFFFF";
					String color = (count % 7 == 0 || count % 7 == 6) ? "red" : "black";
					count++;
			%>
			<td bgcolor="<%=bgcolor%>"><font size="2" color=<%=color%>><%=i%></font></td>
			<%
				if (count % 7 == 0 && i < endDate) {
			%>
		</tr>
		<tr height="30">
			<%
				}
				}
				while (count % 7 != 0) {
			%>
			<td>&nbsp;</td>
			<%
				count++;
				}
			%>
		</tr>
	</table>
</body>
</html>




<%-- <%@page import="java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"

	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

</head>

<body>

	<%

		Calendar tDay = Calendar.getInstance();



		int y = tDay.get(Calendar.YEAR);

		int m = tDay.get(Calendar.MONTH);

		int d = tDay.get(Calendar.DATE);



		Calendar dSet = Calendar.getInstance();

		dSet.set(y, m, 1);

		int yo = dSet.get(Calendar.DAY_OF_WEEK);



		int last_day = tDay.getActualMaximum(Calendar.DATE);

	%>

	<table border="1">

		<tr>

			<td align="center"colspan="7"><%=y%>��<%=(m+1)%>�� �޷�</td>

		</tr>

		<tr>

			<%

				String[] a = { "sun", "mon", "tue", "wed", "thu", "fri", "sat" };

				for (int i = 0; i < 7; i++) {%>

			<td width="35"><%=a[i]%></td>

			<%}%>

		</tr>

		<tr>

			<%for (int k = 1; k < yo; k++) {%>

			<td></td>

			<%}%>

			<%for (int j = 1; j <= last_day; j++) {%>

			<td><%=j%>

				<%if ((yo+j-1) % 7 == 0) {%>

				</td></tr><tr>

			<%}}for(int e=1;e<(7-yo);e++){%>

			<td></td>

			<%} %>

		</tr>

	</table>

</body>

</html> --%>