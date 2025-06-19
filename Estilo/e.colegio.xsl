<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">

  <html lang="es">
    <head>
        <meta charset="UTF-8"/>
        <title>Base De Datos Colegio</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>  
    </head>
    <body>
        <div class="container mt-5">
            <h1> class="mb-4" Listado De Alumnos</h1>

            <table class="table table-bordered table-striped">
              <thead class="table-dark">
                <tr>
                    <th>N.Expediente</th>
                    <th>Nombre</th>
                    <th>Primer Apellido</th>
                    <th>Segundo Apellido</th>
                    <th>Edad</th>
                    <th>Curso</th>
                    <th>Número De Contacto</th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="colegio/alumnos/alumno">
                    <tr>
                        <td><xsl:value-of select="EXP"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="apellido1"/></td>
                        <td><xsl:value-of select="apellido2"/></td>
                        <td><xsl:value-of select="edad"/></td>
                        <td><xsl:value-of select="curso"/></td>
                        <td><xsl:value-of select="N.contacto"/></td>
                    </tr>
                </xsl:for-each>
              </tbody>
            </table>
        </div>
    </body>
  </html>


  </xsl:template>
</xsl:stylesheet>