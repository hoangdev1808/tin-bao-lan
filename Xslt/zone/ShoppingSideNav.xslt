<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="content__sidebar">
			<div class="block__title text-center text-uppercase bg-main">
				<h5 class="color-while">
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>
				</h5>
				<div class="acc__mobile"><i class="fa fa-angle-down"></i></div>
			</div>
			<div class="acc bg-while">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="Zone">
		<div class="acc__card">
			<div class="acc__title text-uppercase">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<span class="material-icons">expand_more</span>
			</div>
			<div class="acc__panel">
				<ul>
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Child">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>