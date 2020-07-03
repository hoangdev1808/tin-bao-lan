<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block-section tbl-pro-detail1 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-pro-detail1__content">
					<div class="row">
						<div class="col-md-8">
							<div class="product-slide">
								<div class="swiper-container gallery-top">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages">
										</xsl:apply-templates>
									</div>
								</div>
								<div class="thumb">
									<div class="swiper-container gallery-thumbs">
										<div class="swiper-wrapper">
											<xsl:apply-templates select="/ProductDetail/ProductImages">
											</xsl:apply-templates>
										</div>
									</div>
									<div class="swiper-button-next"></div>
									<div class="swiper-button-prev"></div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="product__detail">
								<div class="product__name">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title">
									</xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes">
									</xsl:value-of>
								</div>
								<div class="product__price">
									<span class="sale">
										<xsl:value-of select="/ProductDetail/Price" disable-output-escaping="yes">
										</xsl:value-of>
									</span>
									<xsl:if test="/ProductDetail/OldPrice != ''">
										<span class="promotion">
											<xsl:value-of select="/ProductDetail/OldPrice"
												disable-output-escaping="yes">
											</xsl:value-of>
										</span>
									</xsl:if>
								</div>

								<div class="product__desc">
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
									</xsl:value-of>
								</div>
								<div class="block__btn"><a class="btn btn__new" href="">mua ngay</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="block-section tbl-pro-detail2 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="tbl-pro-detail2__desciption">
					<div class="tab-panels">
						<ul class="tabs">
							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Title">
							</xsl:apply-templates>
							<li rel="panel-99">Đánh giá</li>
						</ul>
						<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content">
						</xsl:apply-templates>
						<div class="panel" id="panel-99">

						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="block-section tbl-product tbl-pro-detail3 wow fadeInDown" data-wow-delay=".3s">
			<div class="container">
				<div class="block__title text-center text-uppercase">
					<h3>sản phẩm khác</h3>
				</div>
				<div class="list-product">
					<div class="swiper-container product__other">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="product__item">
				<div class="product__image">
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
				<div class="product__desc">
					<div class="product__name">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</div>
					<div class="product__infor">
						<div class="product__price">
							<p class="sale">
								<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
							</p>
							<xsl:if test="OldPrice != ''">
								<p class="promotion">
									<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
								</p>
							</xsl:if>
						</div>
						<div class="icon">
							<a href="">
								<i class="fa fa-shopping-cart"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Title">
		<li>
			<xsl:attribute name="rel">
				<xsl:text disable-output-escaping="yes">panel-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</li>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Content">
		<div class="panel">
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">panel-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">panel active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>


</xsl:stylesheet>