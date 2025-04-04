<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/root" >
    <root>
       <xsl:for-each select="row">
            <row>
                <anyo><xsl:value-of select="@Anyo"/></anyo>
                <concepto><xsl:value-of select="@Concepto"/></concepto>
                <Usuarios_registrados><xsl:value-of select="@Usuarios_registrados"/></Usuarios_registrados>
            </row>
       </xsl:for-each>
    </root>
    </xsl:template>
</xsl:stylesheet>