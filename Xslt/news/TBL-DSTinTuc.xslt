<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="block__title text-uppercase text-center">
            <h3>
                <xsl:value-of select="/NewsList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
            </h3>
        </div>
        <div class="news-block__content__hot">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
            </div>
        </div>
        <div class="news-block__content__list">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position()=1">
            <div class="col-md-6 box-left">
                <div class="box__img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
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
            </div>
            <div class="col-md-6 box-right">
                <div class="box__content">
                    <ul>
                        <li class="box__time">
                            <p>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </li>
                        <li class="box__title">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </a>
                        </li>
                        <li class="box__desc">
                            <p>
                                <xsl:value-of select="BriefContent"></xsl:value-of>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <xsl:if test="position()>1">
            <div class="col-md-4">
                <div class="news__item">
                    <div class="news__image">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
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
                    <div class="news__description">
                        <ul>
                            <li class="new__time">
                                <span>
                                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </span>
                            </li>
                            <li class="news__title">
                                <a class="lcl lcl-2">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </a>
                            </li>
                            <li class="news__content lcl lcl-3">
                                <p>
                                    <xsl:value-of select="BriefContent"></xsl:value-of>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
