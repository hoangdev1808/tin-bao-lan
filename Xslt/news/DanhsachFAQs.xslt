<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="panel active" id="panel-1">
            <div class="block__title">
                <h4>
                    <xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
                </h4>
            </div>
            <div class="acc">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
		<div class="acc__card">
			<div class="__title">
				<p>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</p>
			</div>
			<div class="acc__panel">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</p>
				<a>
					<xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
					<xsl:text>http://www.tblpro.com/</xsl:text>
				</a>
			</div>
		</div>
    </xsl:template>
</xsl:stylesheet>