<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <head>
                <title>Libros</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                <p>Hola Mundo</p>
                <h1><xsl:value-of select="/libros/libro[precio=40]/titulo"/></h1>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
