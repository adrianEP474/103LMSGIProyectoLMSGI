<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
    <xsl:output method="text" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/network" >
    <xsl:variable name="newline" select="'&#10;'"/>
    <xsl:variable name="newtab" select="'   '"/>
    <xsl:value-of select="concat(name(current()),':')"/>
     <xsl:for-each select="ethernets">  
        <xsl:value-of select="concat($newline,$newtab,name(current()),':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,name,':')"/>
        <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,name(addresses),':')"/>
         <xsl:value-of select="concat($newline,$newtab,$newtab,$newtab,$newtab,addresses)"/>
            <xsl:if test="gateway4">
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, 'routes:')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab,$newtab,$newtab, 'to: default')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab,$newtab,$newtab,'via: ', gateway4)"/>
            </xsl:if>
            <xsl:if test="nameservers">
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, name(nameservers),':')"/>
                <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab,$newtab, 'addresses:')"/>
                <xsl:for-each select="nameservers/addresses">
                    <xsl:value-of select="concat($newline,$newtab, $newtab, $newtab, $newtab,$newtab,text())"/>
                   
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    </xsl:stylesheet>
