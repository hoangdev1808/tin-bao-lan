<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="block-section news-detail wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="block__title">
                            <h3>
                                <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h3>
                        </div>
                        <div class="block__timeline">
                            <div class="time">
                                <p>
                                    <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </p>
                            </div>
                            <div class="icon-social">
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://twitter.com/home?status=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="block-news-content">
                            <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="orther-news">
                            <div class="block__title text-uppercase text-center">
                                <h4>tin tức khác</h4>
                            </div>
                            <div class="news-list">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <xsl:if test="position()&lt;4">
            <div class="news__item">
                <div class="news__img">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="news__desc">
                    <ul>
                        <li>
                            <p><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></p>
                        </li>
                        <li>
                            <a class="lcl lcl-2" href="">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
