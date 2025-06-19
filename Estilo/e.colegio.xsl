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
        <!-- Estilo de la flecha -->
            <style>
            .toggle-asignaturas {
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.5rem 1rem;
            background-color: #ec9f48;
            border-radius: 0.5rem;
            margin-bottom: 0.5rem;
            gap: 1rem;
            }
            .toggle-libro {
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.5rem 1rem;
            background-color: #f4b67b;
            border-radius: 0.5rem;
            margin-bottom: 0.5rem;
            gap: 1rem;
            }
            .toggle-alumnos {
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.5rem 1rem;
            background-color: #e1c735;
            border-radius: 0.5rem;
            margin-bottom: 0.5rem;
            gap: 1rem;
            }
            .toggle-profesores {
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0.5rem 1rem;
            background-color: #e1ad35;
            border-radius: 0.5rem;
            margin-bottom: 0.5rem;
            gap: 1rem;
            }


            .toggle-header:hover {
            background-color: #e9ecef;
            }

            .arrow {
            transition: transform 0.3s ease;
            }

            .arrow.rotate {
            transform: rotate(90deg);
            }
        </style>
        <h1 class="mb-4 text-center text primary">Información Del Colegio</h1>
        <br></br>
    </head>
    <body>
        <div class="toggle-alumnos" data-bs-toggle="collapse" data-bs-target="#tablaAlumnos" aria-expanded="false">
            <h2 class="mb-0">Listado De Alumnos</h2>
            <span class="arrow">&#9654;</span>
        </div>
        <div class="collapse" id="tablaAlumnos">
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
                        <td><xsl:value-of select="@EXP"/></td>
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
        <div class="toggle-profesores" data-bs-toggle="collapse" data-bs-target="#tablaProfesores" aria-expanded="false">
            <h2 class="mb-0">Listado De Profesores</h2>
            <span class="arrow">&#9654;</span>
        </div>    
        <div class="collapse" id="tablaProfesores">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>CIDP</th>
                        <th>Nombre</th>
                        <th>Primer Apellido</th>
                        <th>Segundo Apellido</th>
                        <th>Departamento</th>
                        <th>Número De Contacto</th>
                        <th>Correo Electrónico</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="colegio/profesores/profesor">
                      <tr>
                         <td><xsl:value-of select="@CIDP"/></td>
                         <td><xsl:value-of select="nombre"/></td>
                         <td><xsl:value-of select="apellido1"/></td>
                         <td><xsl:value-of select="apellido2"/></td>
                         <td><xsl:value-of select="Departamento"/></td>
                         <td><xsl:value-of select="N.contacto"/></td>
                         <td><xsl:value-of select="Email"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </div>
        <div class="toggle-asignaturas" data-bs-toggle="collapse" data-bs-target="#tablaAsignaturas" aria-expanded="false">
            <h2 class="mb-0">Detalles De Asignaturas</h2>
            <span class="arrow">&#9654;</span>
        </div>
        <div class="collapse" id="tablaAsignaturas">
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Identificador</th>
                        <th>Nombre</th>
                        <th>Cursos Aplicables</th>
                        <th>Libros</th>
                        
                    </tr>
                </thead>
                <tbody>
                     <xsl:for-each select="colegio/asignaturas/asignatura">
                     <tr>
                        <td><xsl:value-of select="@NIDA"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="cursos"/></td>
                     <td>
                        <div class="toggle-libro" data-bs-toggle="collapse" data-bs-target="#tablaLibros" aria-expanded="false">
                            <h3 class="mb-0">+</h3>
                            <span class="arrow"></span>
                        </div>
                        <div class="collapse" id="tablaLibros">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th>Nombre del Libro</th>
                                    <th>Editorial</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="libros/libro">
                                    <tr>
                                        <td><xsl:value-of select="nombre"/></td>
                                        <td><xsl:value-of select="editorial"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                        </div>
                      </td>
                     </tr> 
                    </xsl:for-each>      
                </tbody>
            </table>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
  document.querySelectorAll('[data-bs-toggle="collapse"]').forEach(header => {
    const arrow = header.querySelector('.arrow');
    const targetId = header.getAttribute('data-bs-target');
    const collapseEl = document.querySelector(targetId);

    collapseEl.addEventListener('show.bs.collapse', () => {
      arrow.classList.add('rotate');
    });

    collapseEl.addEventListener('hide.bs.collapse', () => {
      arrow.classList.remove('rotate');
    });
  });
</script>
  
    </body>
  </html>


  </xsl:template>
</xsl:stylesheet>