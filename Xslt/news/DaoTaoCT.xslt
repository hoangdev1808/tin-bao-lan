<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="block-section about-2 tbl-detail-edu1">
                <div class="container-fluid wow fadeInDown" data-wow-delay=".3s">
                    <div class="pearson-about">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Section1"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="block-section tbl-detail-edu2 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="block__title text-center text-uppercase">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="tbl-detail-edu2__list">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                            <xsl:apply-templates select="News" mode="Bottom"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="block-section admissions-bg wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="admissions__content">
                        <div class="block__title text-center text-uppercase">
                            <h4>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h4>
                        </div>
                        <xsl:apply-templates select="News" mode="Section3"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="block-section admissions-contact wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="block__title text-center text-uppercase">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Section4"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section1">
        <div class="col-lg-6 col-12 box-left">
            <div class="block__img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
        <div class="col-lg-6 col-12 right-box">
            <div class="block__content">
                <div class="block__title text-uppercase">
                    <h3>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h3>
                </div>
                <div class="block__description">
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Top">
        <xsl:if test="position()!=1">
            <div class="col-md-6 col-sm-6 csvc__item">
                <div class="csvc__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="csvc__content">
                    <div class="csvc__title">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="csvc__desc">
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Bottom">
        <xsl:if test="position()=1">
            <div class="col-md-6 col-sm-6 csvc__item">
                <div class="csvc__content">
                    <div class="csvc__title">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="csvc__desc">
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6 csvc__item">
                <div class="csvc__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section3">
        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        <a class="btn btn__new">
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
        </a>
        <p>
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </p>
    </xsl:template>
    <xsl:template match="News" mode="Section4">
        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
    </xsl:template>
</xsl:stylesheet>