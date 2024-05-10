<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="text" />
    <xsl:template match="/">
        <xsl:text>author,number_of_posts&#10;</xsl:text>
        <xsl:for-each select="//author/@who[not(.=preceding::author/@who)]">
            <xsl:variable name="currentAuthor" select="." />
            <xsl:value-of select="." />
            <xsl:text>,</xsl:text>
            <xsl:value-of select="count(//author[@who=$currentAuthor])"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
  
    </xsl:template>

</xsl:stylesheet>