<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:if test="count(/ZoneList/Zone) > 0">
            <div class="block__title text-uppercase">
                <h4>
                    <xsl:value-of select="/ZoneList/RootTitle" disable-output-escaping="yes"></xsl:value-of>
                </h4>
            </div>
            <div class="left__sidebar">
                <ul>
                  <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                </ul>
            </div>
        </xsl:if>
    </xsl:template>

    <xsl:template match="Zone">
      <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>