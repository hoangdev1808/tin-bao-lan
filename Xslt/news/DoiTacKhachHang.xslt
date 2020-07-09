<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block-section tbl-home-8 wow fadeInUp" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-home-8__content">
					<div class="block__title text-uppercase">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						</h3>
					</div>
					<div class="block__partner">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<div class="block__btn"><a class="btn btn__new" href="">xem thêm tất cả</a></div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="item__image">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>