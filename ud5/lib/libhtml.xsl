<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
<xsl:template name="meta">
<xsl:param name="titulo"/>
<meta name="description" content="Formulario para rellenar datos personales de animales domésticos"/>
<meta name="author" content="Véronique Grué"/>
<meta name="robots" content="index, follow"/>
<meta name="language" content="es"/>
<meta name="generator" content="Visual Studio Code"/>
<meta name="keywords" content="HTML, formulario, animales domésticos, mascotas"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title><xsl:value-of select="$titulo"/></title>
</xsl:template>
</xsl:stylesheet>

