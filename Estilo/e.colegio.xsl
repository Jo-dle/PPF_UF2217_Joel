<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">

  <html lang="es">
    
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!--Datatables-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"/>
        <meta charset="UTF-8"/>
        <title>Base De Datos Colegio</title>
        
        <h1 class="mb-4 text-center text primary">Información Del Colegio</h1>
        <br></br>
    </head>
    <body>
        <!-- Pestañas -->
            <nav>
          <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <button class="nav-link active" id="nav-Alumnos-tab" data-bs-toggle="tab" data-bs-target="#alumnos" type="button" role="tab" aria-controls="alumnos" aria-selected="true">Alumnos</button>
            <button class="nav-link" id="nav-Profesores-tab" data-bs-toggle="tab" data-bs-target="#profesores" type="button" role="tab" aria-controls="profesores" aria-selected="false">Profesores</button>
            <button class="nav-link" id="nav-Asignaturas-tab" data-bs-toggle="tab" data-bs-target="#asignaturas" type="button" role="tab" aria-controls="asignaturas" aria-selected="false">Asignaturas</button>
          </div>
        </nav>

       <div class="tab-content mt-3" id="nav-tabContent">

  <!-- Tab Alumnos -->
  <div class="tab-pane fade show active" id="alumnos" role="tabpanel" aria-labelledby="nav-Alumnos-tab">
    
    <h2 class="mb-0">Listado De Alumnos</h2>
    <!--Agregar Alumnos-->
    <h3 class="mt-4">Añadir Nuevo Alumno</h3>
    <div class="col-md-4">
        <label class="form-label">Expediente</label>
        <input type="text" name="EXP" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Nombre</label>
        <input type="text" name="nombre" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Primer Apellido</label>
        <input type="text" name="apellido1" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Segundo Apellido</label>
        <input type="text" name="apellido2" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Edad</label>
        <input type="text" name="edad" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Curso</label>
        <input type="text" name="curso" class="form-control"/>
    </div>
    <div class="col-md-4">
        <label class="form-label">Número De Contacto</label>
        <input type="number" name="tlf" class="form-control"/>
    </div>
    <table id="tablaAlumnos" class="table table-bordered table-striped">
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

  <!-- Tab Profesores -->
  <div class="tab-pane fade" id="profesores" role="tabpanel" aria-labelledby="nav-Profesores-tab">
    <h2 class="mb-0">Listado De Profesores</h2>
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

  <!-- Tab Asignaturas -->
  <div class="tab-pane fade" id="asignaturas" role="tabpanel" aria-labelledby="nav-Asignaturas-tab">
    <h2 class="mb-0">Detalles De Asignaturas</h2>
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
            </td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </div>
</div>


        <!--Scripts-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
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