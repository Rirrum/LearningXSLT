
<xsl:stylesheet version="1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/class">
        { "Class": [
            <xsl:for-each select="*">
            <xsl:comment><xsl:if test="position() != 1">, </xsl:if></xsl:comment>
                {"Student": "<xsl:value-of select="first"/>   <xsl:value-of select="last"></xsl:value-of>"},
            </xsl:for-each>
       ]}
    </xsl:template>

</xsl:stylesheet>