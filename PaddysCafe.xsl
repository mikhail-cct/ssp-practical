<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
        <head>
            <title>Paddy's Cafe Menu</title>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <link rel="stylesheet" href="css/PaddysCafe.css" />
            <script type="text/javascript" src="js/PaddysCafe.js">x</script>
        </head>
            <body>
                <h2>
                    <img src="img/PaddysCafe.gif" alt="Javaco Tea Logo" width="58" height="100" />Welcome to Paddy's Cafe</h2>
                <p>Select your entrees from the menu below. To calculate the amount of the bill, click the Calculate Bill button. Check the "Highlight Vegetarian Meals" box to highlight vegetarian dishes.</p>
                <table id="menuTable" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Paddy's Cafe Menu</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entry">
                                <tr>
                                    <xsl:attribute name="vegetarian">
                                        <xsl:value-of select="boolean(@vegetarian)" />
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
                <form class="indent">
                    <p>
                        <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
                Total: €
                <input type="text" name="txtBillAmt" /><input type="checkbox" name="cbOpts" value="isVeg" id="showVeg" /><label for="showVeg">Highlight Vegetarian Meals</label></p>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>