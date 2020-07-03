<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<section class="block-section tbl-home-2 wow fadeInUp" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-home-2__content">
					<div class="row">
						<div class="col-lg-9">
							<div class="block-about">
								<div class="block__title text-uppercase">
									<h3>
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									</h3>
								</div>
								<div class="block__list">
									<ul class="block__content">
										<xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
									</ul>
								</div>
								<div class="block__description">
									<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
								</div>
								<div class="block__btn">
									<a class="btn btn__new bg-while" href="">về chúng tôi</a>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-12 wow fadeInUp" data-wow-delay=".3s">
							<div class="block-video">
								<xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Left">
		<xsl:if test="position() &lt; 4">

			<li>
				<h3>
					<span class="counter" data-count="13">
						<xsl:attribute name="data-count">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">0</xsl:text>
					</span>
				</h3>
				<span>
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</span>
			</li>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News" mode="Right">
		<xsl:if test="position() = 4">
			<ul class="block__content">
				<li>
					<h4>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</h4>
				</li>
				<li>
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</li>
				<li>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
						<div class="block__icon">
							<a data-fancybox="">
								<xsl:attribute name="href">
									<xsl:value-of select="SubTitle"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img src="/Data/Sites/1/skins/default/assets/icons/play-button.png" />
							</a>
						</div>
					</div>
				</li>
			</ul>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>