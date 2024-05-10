<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="text" />
    
    <xsl:key name="author-key" match="author" use="@who" />
    
    <xsl:template match="/">
        <xsl:text>author,number_of_posts&#10;</xsl:text>
        <xsl:apply-templates select="//author[generate-id() = generate-id(key('author-key', @who)[1])]" />
    </xsl:template>
    
    <xsl:template match="author">
        <xsl:value-of select="@who" />
        <xsl:text>,</xsl:text>
        <xsl:value-of select="count(key('author-key', @who))" />
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>