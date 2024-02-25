﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Pedidos</title>
                <style type="text/css">
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                    }
                    h1 {
                        color: #333;
                        text-align: center;
                    }
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        border-radius: 10px;
                        overflow: hidden;
                        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                        margin-bottom: 20px;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Lista de Pedidos</h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Teléfono</th>
                        <th>Dirección</th>
                        <th>Correo Electrónico</th>
                        <th>Fecha de Inclusión</th>
                        <th>Número de Pedido</th>
                        <th>Fecha de Compra</th>
                        <th>Fecha de Entrega</th>
                        <th>Total de Factura</th>
                        <th>Nombre del Producto</th>
                        <th>Referencia</th>
                        <th>Precio</th>
                        <th>Unidades</th>
                    </tr>
                    <!-- Primer pedido -->
                    <tr>
                        <td>Juan</td>
                        <td>García Pérez</td>
                        <td>123456789</td>
                        <td>Calle Mayor 123, Madrid, 28001, Madrid</td>
                        <td>juan@example.com</td>
                        <td>2021-01-05</td>
                        <td>001</td>
                        <td>2021-01-05</td>
                        <td>2021-01-10</td>
                        <td>120.00</td>
                        <td>Zapatillas deportivas</td>
                        <td>ZD001</td>
                        <td>60.00</td>
                        <td>2</td>
                    </tr>
                    <!-- Segundo pedido -->
                    <tr>
                        <td>María</td>
                        <td>Gómez Martínez</td>
                        <td>987654321</td>
                        <td>Avenida Central 456, Barcelona, 08001, Barcelona</td>
                        <td>maria@example.com</td>
                        <td>2021-01-10</td>
                        <td>002</td>
                        <td>2021-01-10</td>
                        <td>2021-01-15</td>
                        <td>85.00</td>
                        <td>Pantalones vaqueros</td>
                        <td>PV001</td>
                        <td>45.00</td>
                        <td>1</td>
                    </tr>
                    <!-- Tercer pedido -->
                    <tr>
                        <td>Pablo</td>
                        <td>Ruiz Sánchez</td>
                        <td>555666777</td>
                        <td>Calle del Sol 789, Sevilla, 41001, Sevilla</td>
                        <td>pablo@example.com</td>
                        <td>2021-02-15</td>
                        <td>003</td>
                        <td>2021-02-15</td>
                        <td>2021-02-20</td>
                        <td>150.00</td>
                        <td>Zapatos de vestir</td>
                        <td>ZV001</td>
                        <td>80.00</td>
                        <td>1</td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
