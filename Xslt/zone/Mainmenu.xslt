<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<ul class="navbar-nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:if test="count(Zone)>0">
					<span class="submenu-toggle mobile">
						<i class="fa fa-angle-down"></i>
					</span>
				</xsl:if>
			</a>
			<xsl:if test="count(Zone)>0">
				<xsl:choose>
					<xsl:when test="ZoneId!=126">
						<ul class="nav-item__dropdownmenu">
							<xsl:apply-templates select="Zone" mode="Dropdown"></xsl:apply-templates>
						</ul>
					</xsl:when>
					<xsl:otherwise>
						<ul class="nav-item__dropdownmenu mobile">
							<xsl:apply-templates select="Zone" mode="Mega-Mbile"></xsl:apply-templates>
						</ul>
						<div class="menu-mega nav-item__dropdownmenu">
							<div class="container">
								<div class="row">
									<xsl:apply-templates select="Zone" mode="Mega-Desktop"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</xsl:otherwise>
				</xsl:choose>

			</xsl:if>

		</li>
	</xsl:template>

	<!-- Danh sách Dropdown -->
	<xsl:template match="Zone" mode="Dropdown">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="dropdown-item">
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

	<!-- Mega menu mobile -->
	<xsl:template match="Zone" mode="Mega-Mobile">
		<li>
			<a class="dropdown-item">
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

	<!-- Mega Desktop -->
	<xsl:template match="Zone" mode="Mega-Desktop">
		<div class="col-2dot4">
			<div class="product-menu">
				<div class="product-menu__img">
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
						</img>
					</a>
				</div>
				<div class="product-menu__name text-uppercase">
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
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>