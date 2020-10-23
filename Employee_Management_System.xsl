<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html> 
<body>
<center>
  <h2>Employee Management System</h2>
  <table border="1" width="75%" cellpadding="15px">
    <tr bgcolor="Sky blue">
      <th style="text-align:center">ID</th>
      <th style="text-align:center">Name</th>
      <th style="text-align:center">Age</th>
      <th style="text-align:center">Salary</th>
      <th style="text-align:center">Email</th>
      <th style="text-align:center">Phone</th>
      <th style="text-align:center">Designation</th>
	  <th style="text-align:center">Promotion</th>
	  
    </tr>
    <xsl:for-each select="Company/Employee">
    <tr>
	  <td><xsl:value-of select="@eid"/></td>
      <td><xsl:value-of select="Emp-name"/></td>
      <td><xsl:value-of select="Emp-age"/></td>
      <td><xsl:value-of select="Emp-salary"/></td>
      <td><xsl:value-of select="Emp-emailid"/></td>
      <td><xsl:value-of select="Emp-Phonenum"/></td>
      <td><xsl:value-of select="Emp-designation"/></td>
	  <xsl:choose>
									<xsl:when test="empage >= 50">
									<td>Associate Project Manager</td>
									</xsl:when>
									<xsl:when test="empage >= 40">
									<td>Team Leader</td>
									</xsl:when>
									<xsl:otherwise>
									<td>Developer</td>
									</xsl:otherwise>
	  </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
  </center>
</body>
</html>
	</xsl:template>
</xsl:stylesheet>