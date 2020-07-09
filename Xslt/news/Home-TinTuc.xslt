<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block-section tbl-home-7 wow fadeInUp" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-home-7__content">
					<div class="block__title text-uppercase">
						<h3>
							<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						</h3>
					</div>
					<div class="tbl-home-7__content__list">
						<div class="swiper-container new-home__slide">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
					<div class="block__btn">
						<a class="btn btn__new __hover" href="/gioi-thieu/tin-tuc">xem thêm tất cả</a>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="swiper-slide">
			<figure>
				<div class="new-home-item">
					<div class="new-home__image">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<figcaption>
						<div class="new-home__description">
							<ul>
								<li class="new-home__time">
									<span>
										<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
									</span>
								</li>
								<li class="new-home__title">
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
								<li class="new-home__content lcl lcl-3">
									<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
								</li>
							</ul>
						</div>
					</figcaption>
				</div>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>