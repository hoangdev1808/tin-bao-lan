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
            <section class="block-section about-1 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
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
                                        <xsl:apply-templates select="News" mode="GioiThieu"></xsl:apply-templates>
                                    </ul>
                                </div>
                                <div class="block__description">
                                    <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                                </div>
                                <div class="block__btn">
                                    <a class="btn btn__new bg-while">
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:text>về chúng tôi</xsl:text>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <xsl:apply-templates select="News" mode="TacPhong"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="block-section about-2 wow fadeInDown" data-wow-delay=".3s">
                <div class="container-fluid">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Section2"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="block-section about-3 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="block__title text-center text-uppercase">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="list-partner">
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="logo-block-slide partner">
                        <div class="swiper-container partner__slide">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Slider"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="block-section about-4 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="about-4__content">
                        <div class="block__title text-center text-uppercase">
                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h3>
                        </div>
                        <div class="logo-block-slide customer">
                            <div class="swiper-container customer__slide">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="News" mode="Custommer"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="block-section about-5 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="about-5__content">
                        <div class="block__title text-center text-uppercase">
                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h3>
                        </div>
                        <div class="chart-box">
                            <xsl:apply-templates select="News" mode="Chart"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=6">
            <section class="block-section about-6 wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="about-6__content">
                        <div class="block__title text-center text-uppercase">
                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h3>
                        </div>
                        <div class="block-prize">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="News" mode="Prize"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section2">
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
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Top">
        <xsl:if test="position() &lt;4">
            <div class="col-lg-4 col-sm-4">
                <div class="item-partner">
                    <div class="item__image">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="item__desc">
                        <h5>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </h5>
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Slider">
        <div class="swiper-slide">
            <div class="logo__image">
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
    </xsl:template>
    <xsl:template match="News" mode="Custommer">
        <div class="swiper-slide">
            <div class="logo__image">
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
    </xsl:template>
    <xsl:template match="News" mode="Chart">
        <img >
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
        </img>
    </xsl:template>
    <xsl:template match="News" mode="Prize">
        <div class="swiper-slide">
            <div class="img">
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
    </xsl:template>
    <xsl:template match="News" mode="GioiThieu">
        <xsl:if test="position()!=4">
            <li>
                <h3>
                    <span class="counter">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </span>
                    <span>
                        <xsl:text disable-output-escaping="yes">+</xsl:text>
                    </span>
                </h3>
                <span>
                    <xsl:value-of select="SubTitle"></xsl:value-of>
                </span>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TacPhong">
        <xsl:if test="position()=4">
            <div class="col-lg-3 col-12">
                <div class="block-video">
                    <ul class="block__content">
                        <li>
                            <h4>
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </h4>
                        </li>
                        <li>
                            <xsl:value-of select="FullContent"></xsl:value-of>
                        </li>
                        <li>
                            <div class="img">
                                <img >
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                </img>
                                <div class="block__icon">
                                    <a>
                                        <xsl:attribute name="data-fancybox">
                                            <xsl:value-of select="SubTitle"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="SubTitle"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="SubTitle"></xsl:value-of>
                                        </xsl:attribute>
                                        <img src="/Data/Sites/1/skins/default/assets/icons/play-button.png" alt=""></img>
                                    </a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>