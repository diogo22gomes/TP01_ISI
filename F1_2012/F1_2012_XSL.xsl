<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="ISO-8859-1"/>

  <xsl:template match="/Rows">
    <html>
      <head>
        <title>Resultados F1 2012</title>
        <style type="text/css">
          table {
            width: 100%;
            border-collapse: collapse;
          }

          th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
          }

          tr:nth-child(even) {
            background-color: #f2f2f2;
          }

          th {
            background-color: #FF0000; /* Cor de fundo vermelha para o cabeçalho */
            color: white;
          }

          h1 {
            text-align: center;
          }
        </style>
      </head>
      <body>
        <h1>Resultados Formula 1 - 2012</h1> <!-- Título personalizado -->
        <table>
          <tr>
            <th>Ronda</th>
            <th>Nome_GP</th>
            <th>Data</th>
            <th>Nome_Circuito</th>
            <th>Localização</th>
            <th>País</th>
            <th>Numero_Piloto</th>
            <th>Nome_Piloto</th>
            <th>Apelido_Piloto</th>
            <th>Nome_Equipa</th>
          </tr>
          <xsl:for-each select="Row">
            <tr>
              <td>
                <xsl:apply-templates select="Ronda"/>
              </td>
              <td>
                <xsl:apply-templates select="Nome_GP"/>
              </td>
              <td>
                <xsl:apply-templates select="Data"/>
              </td>
              <td>
                <xsl:apply-templates select="Nome_Circuito"/>
              </td>
              <td>
                <xsl:apply-templates select="Localização"/>
              </td>
              <td>
                <xsl:apply-templates select="País"/>
              </td>
              <td>
                <xsl:apply-templates select="Numero_Piloto"/>
              </td>
              <td>
                <xsl:apply-templates select="Nome_Piloto"/>
              </td>
              <td>
                <xsl:apply-templates select="Apelido_Piloto"/>
              </td>
              <td>
                <xsl:apply-templates select="Nome_Equipa"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="text()">
    <xsl:value-of select="."/>
  </xsl:template>
</xsl:stylesheet>
