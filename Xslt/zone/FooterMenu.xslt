<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
            <div class="card__title">
                <h3><xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h3>
            </div>
            <div class="card__body">
                <ul>
                    <xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
                </ul>
            </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>