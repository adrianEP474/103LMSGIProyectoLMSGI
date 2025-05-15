<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/*" mode="#all">

        <xsl:copy>
            <xsl:for-each select="row">
            <xsl:copy>
               <xsl:for-each select="@*">
                <xsl:element name="{name()}">
                    <xsl:value-of select="."/>
                </xsl:element>
               </xsl:for-each>
            </xsl:copy>
                
            </xsl:for-each>
        </xsl:copy> 
    </xsl:template>
</xsl:stylesheet>