<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <head>
                <title>Libros</title>
                <meta charset="UTF-8"/>
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
                <h2>Biblioteca</h2>
                <table>
                    <tr>
                        <th>Titulo</th>
                        <th>Precio</th>
                        <th>Categoría</th>
                    </tr>
                    <xsl:for-each select="//libro">
                        <tr>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="precio"/> €</td>
                            <td><xsl:value-of select="@categoria"/></td>
                        </tr>
                    </xsl:for-each>   
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
