<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="3">Art Gallery</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Article</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="artlist/artType">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="sales">
                        <tr id="{position()}">
                            <xsl:attribute name="onSale">
                                <xsl:value-of select="boolean(@onSale)" />
                            </xsl:attribute>
                            <td align="center">
                                <input name="article0" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="article" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>