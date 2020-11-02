<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<body>
		<h1 align="center">Employee Management System</h1>
		<table bgcolor="Blue" border="1" width="75%" cellpadding="15px" align="center">
		<tr>
		<th>Id</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>SALARY</th>
		<th>EMAIL ID</th>
		<th>PHONE NO</th>
		<th>DESIGNATION</th>
		<th>PROMOTION</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<tr bgcolor="Sky blue">
		<td><xsl:value-of select="@ID"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-name"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-age"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-salary"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-emailid"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-Phonenum"></xsl:value-of></td>
		<td><xsl:value-of select="Emp-designation"></xsl:value-of></td>
		<td>
		<xsl:choose>
		<xsl:when test="Emp-age &gt; 50">Associate Project Manager</xsl:when>
		<xsl:when test="Emp-age &gt; 40">Team Leader</xsl:when>
		<xsl:otherwise>Developer</xsl:otherwise>
		</xsl:choose>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>