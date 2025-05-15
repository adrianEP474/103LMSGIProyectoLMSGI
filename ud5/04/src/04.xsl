<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="3.0">
    <xsl:param name="corregido" select="'no'"/>
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/examen">
        <html>
            <head>
                <title>4 Adrian EP</title>
                <meta charset="UTF-8"/>
                <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="datos/nombreCiclo"/></h1>
                    <h2><xsl:value-of select="document('../input/modulosdaw1.xml')/modulos/modulo[@codM=current()/datos/nombreModulo]"/></h2>
                    <h3>Fecha: <xsl:value-of select="format-number(datos/fecha/dia, '00')"/> de 
                        <xsl:value-of select="document('../input/meses.xml')/meses/mes[@id=current()/datos/fecha/mes]"/> de
                        <xsl:value-of select="datos/fecha/anyo"/></h3>
                </header>
                <main>
                    <form action="text.php" methodo="GET" id="preguntasf">
                        <xsl:for-each select="preguntas/pregunta">
                            <div class="pregunta">
                                <div class="enunciado"> 
                                    <xsl:value-of select="@id"/>.-
                                    <xsl:value-of select="enunciado"/>
                                </div>
                                <xsl:for-each select="respuestas/respuesta">  
                                    <div class="respuestas"> 
                                        <label>
                                            <xsl:element name="input">
                                                <xsl:attribute name="type" select="'radio'"/>
                                                <xsl:attribute name="name" select="concat('p', ../../@id)"/>
                                                <xsl:attribute name="value" select="position()"/>
                                                <xsl:if test="$corregido='yes' and @correcta='correcta'">
                                                    <xsl:attribute name="checked"/>
                                                </xsl:if>
                                                <xsl:if test="$corregido='yes'">
                                                    <xsl:attribute name="disabled"/>
                                                </xsl:if>
                                            </xsl:element>
                                            <xsl:value-of select="./text()"/>
                                        </label>
                                    </div> 
                                </xsl:for-each>
                            </div>
                        </xsl:for-each>
                    </form>
                    <xsl:if test="$corregido='no'">
                        <div class="botones">
                            <input type="submit" value="Enviar formulario" form="preguntasf"/>
                            <input type="reset" value="Borrar formulario"/>
                        </div>
                    </xsl:if>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>