<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>Biblioteca</title>
                <style>
                    h2 {
                        font-family: arial;
                    }
                    table{
                        border: solid black 2px;
                        font-family: arial;
                    }
                    th{
                        background-color:#232023;
                        color:white;
                    }
                    td {
                        padding:6px;
                        border: solid black 1px;
                    }
                </style>
            </head>
            <body>

                <h2>Listado de libros</h2>

                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Año</th>
                        <th>Precio</th>
                        <th>Estado</th>
                        <th>Categoría</th>
                    </tr>

                    <xsl:for-each select="//libro">
                        <xsl:sort select="@categoria" data-type="text" />
                        <xsl:sort select="anio" order="descending" data-type="number" />
                            <tr>

                            <td>
                                <xsl:value-of select="titulo" />
                            </td>

                            <td>
                                <xsl:value-of select="autor" />
                            </td>

                            <td>
                                <xsl:value-of select="anio" />
                            </td>

                            <xsl:choose>
                                <xsl:when test="precio > 30">
                                    <td>
                                        <xsl:value-of select="precio" /><p> 🥑</p>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="precio" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                            
                            <xsl:choose>
                                    <xsl:when test="@disponible = 'si'">
                                        <td>
                                            <p>Disponible</p>
                                        </td>
                                    </xsl:when>
                                    <xsl:when test="@disponible = 'no'">
                                        <td>
                                            <p>No disponible</p>
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>

                                    </xsl:otherwise>
                            </xsl:choose>

                            <td>
                                <xsl:value-of select="@categoria" />
                            </td>
                                
                        </tr>
                    </xsl:for-each>

                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>