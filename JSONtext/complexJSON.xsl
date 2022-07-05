<xsl:stylesheet version="1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/r">
        { "Routes": [
           <xsl:for-each select="*">
            <xsl:sort select="@Date"/>
            <xsl:if test="position() != 1">, </xsl:if>
            {"CO": "<xsl:value-of select="@CO"/>", 
            "Date": "<xsl:value-of select="@Date"/>",
            "Zone": "<xsl:value-of select="@Zone"/>",
            "Truck": "<xsl:value-of select="@Truck"/>", 
            "Line": "<xsl:value-of select="local-name()"/>"}            
           </xsl:for-each>
       ]}
    </xsl:template>

</xsl:stylesheet>