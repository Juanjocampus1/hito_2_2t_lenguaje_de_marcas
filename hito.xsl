<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Pedidos</title>
        <style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #2c2640, #2a2a2a);
    color: #eee;
  }

  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.05);
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    backdrop-filter: blur(10px);
  }

  h1 {
    text-align: center;
    margin-bottom: 30px;
  }

  .anio {
    margin-bottom: 30px;
    padding-bottom: 20px;
    border-bottom: 2px solid #7c6c8a;
  }

  .anio h2 {
    color: #ccc;
    font-size: 24px;
    margin-bottom: 10px;
  }

  .trimestre {
    margin-bottom: 20px;
  }

  .pedido {
    background-color: rgba(255, 255, 255, 0.05);
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    padding: 20px;
    margin-bottom: 20px;
  }

  .pedido h3 {
    color: #ccc;
    font-size: 20px;
    margin-top: 0;
    margin-bottom: 15px;
  }

  .pedido-info {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 20px;
  }

  .pedido-info div {
    flex-basis: 48%;
    margin-bottom: 10px;
  }

  .pedido-info label {
    font-weight: bold;
    color: #999;
  }

  .producto-table {
    width: 100%;
    border-collapse: collapse;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    margin-top: 10px;
  }

  .producto-table th, .producto-table td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  .producto-table th {
    background-color: rgba(255, 255, 255, 0.05);
    color: #ccc;
  }

  .producto-table td {
    background-color: rgba(255, 255, 255, 0.1);
    color: #eee;
  }
</style>
      </head>
      <body>
        <div class="container">
          <h1>Pedidos</h1>
          <xsl:apply-templates select="//anio"/>
        </div>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="anio">
    <div class="anio">
      <h2>Año: <xsl:value-of select="@year"/></h2>
      <xsl:apply-templates select=".//trimestre"/>
    </div>
  </xsl:template>
  
  <xsl:template match="trimestre">
    <div class="trimestre">
      <h3>Trimestre: <xsl:value-of select="@num"/></h3>
      <xsl:apply-templates select=".//pedido"/>
    </div>
  </xsl:template>
  
  <xsl:template match="pedido">
    <div class="pedido">
      <h3>Numero de Pedido: <xsl:value-of select="detalle_pedido/numero_pedido"/></h3>
      <div class="pedido-info">
        <div>
          <p><label>Nombre:</label> <xsl:value-of select="cliente/nombre"/></p>
          <p><label>Apellidos:</label> <xsl:value-of select="cliente/apellidos"/></p>
          <p><label>Telefono:</label> <xsl:value-of select="cliente/telefono"/></p>
          <p><label>Correo:</label> <xsl:value-of select="cliente/correo"/></p>
        </div>
        <div>
          <p><label>Fecha de Inclusion:</label> <xsl:value-of select="fecha_inclusion"/></p>
          <p><label>Fecha de Compra:</label> <xsl:value-of select="detalle_pedido/fecha_compra"/></p>
          <p><label>Fecha de Entrega:</label> <xsl:value-of select="detalle_pedido/fecha_entrega"/></p>
          <p><label>Total de Factura:</label> <xsl:value-of select="detalle_pedido/total_factura"/></p>
        </div>
      </div>
      <xsl:apply-templates select="detalle_pedido/productos/producto"/>
    </div>
  </xsl:template>
  
  <xsl:template match="producto">
    <h4>Detalles del Producto:</h4>
    <table class="producto-table">
      <tr>
        <th>Nombre del Producto</th>
        <th>Referencia</th>
        <th>Precio</th>
        <th>Unidades</th>
      </tr>
      <tr>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="referencia"/></td>
        <td><xsl:value-of select="precio"/></td>
        <td><xsl:value-of select="unidades"/></td>
      </tr>
    </table>
  </xsl:template>
</xsl:stylesheet>
