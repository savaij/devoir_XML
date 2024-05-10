<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text" />
    <xsl:template match="/">
        <xsl:variable name="main-root" select="/"/>
        <xsl:text>author,number_of_posts&#10;</xsl:text>
        <xsl:for-each select="distinct-values(//author/@who)">
            <xsl:variable name="currentAuthor" select="."/>
            <xsl:value-of select="$currentAuthor" />
            <xsl:text>,</xsl:text>
            <xsl:value-of select="count($main-root//author[@who=$currentAuthor])"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>