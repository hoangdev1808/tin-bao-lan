<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
			<div class="home-banner">
				<div class="swiper-container banner-main">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner" mode="Slider"></xsl:apply-templates>
					</div>
				</div>
			</div>
	</xsl:template>
	<xsl:template match="Banner" mode="Slider">
		<div class="swiper-slide">
			<div class="banner__img">
				<xsl:attribute name="setBackground">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>