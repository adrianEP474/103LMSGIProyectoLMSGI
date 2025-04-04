<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                expand-text="yes"
                version="3.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:include href="../../lib/libhtml.xsl"/>
  <xsl:template match="/prediccion" mode="#all">
   <html>
      <head>
        <xsl:call-template name="meta">
          <xsl:with-param name="titulo" select="'07 XSLT Véronique Grué'"/>
        </xsl:call-template>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
      </head>
      <body>
        <header>
          <h1>Predicción por municipios</h1>
        </header>
        <main>
          <table>
            <caption> EL TIEMPO. <xsl:value-of select="concat(upper-case(municipio/nombre), ' (', upper-case(municipio/provincia), ')')"/></caption>
            
            <thead>
              <tr>
                <th>Dia</th>
                <th>Prob. precip.</th>
                <th>Estado del cielo</th>
                <th>Temperatura (ºC)</th>
                <th>Viento (Km/h)</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="dia"/>
            </tbody>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="dia">
    <tr>
      <td><xsl:value-of select="substring(@fecha, 9, 2)"/></td>
      <td><xsl:value-of select="concat(prob_precipitacion, '%')"/></td>
      <td><img src="{concat('images/', estado_cielo, '.gif')}" alt="{@descripcion}"/></td>
      <td>
        <span class="minima"><xsl:value-of select="temperatura/minima"/></span>
        <xsl:text> / </xsl:text>
        <span class="maxima"><xsl:value-of select="temperatura/maxima"/></span>
      </td>
      <td>
        <img src="{concat('images/', viento/direccion, '.gif')}" alt="{viento/direccion}"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="viento/velocidad"/>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>


  
                  