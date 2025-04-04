<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/alumnos">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>01-2 XSLT - Informacion de alumnos </title>
            </head>
            <body>
                <xsl:apply-templates select="alumno"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="alumno">
        <p><xsl:value-of select="concat(nombre,' ',apellido)"/></p>
        <xsl:apply-templates select="direccion"/>
           <hr/>
    </xsl:template>
    <xsl:template match="direccion">
        <p>Poblacion: <xsl:value-of select="poblacion"/> </p>
        <p> <xsl:value-of select="cp"/></p>
    </xsl:template>

</xsl:stylesheet>
