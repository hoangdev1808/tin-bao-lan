<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:if test="count(/ZoneList/Zone) > 0">
            <section class="block-section wow fadeInDown" data-wow-delay=".3s">
                <div class="container">
                    <div class="block__title text-uppercase text-center">
                        <h3>
                            <xsl:value-of disable-output-escaping="yes" select="/ZoneList/RootTitle"></xsl:value-of>
                        </h3>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
	<xsl:template match="Zone">
        <div class="col-md-4">
            <div class="block-item">
                <div class="item__img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="item__img-hover">
                    <div class="content">
                        <div class="text-center">
                            <h5>
                                <xsl:apply-templates select="Title"></xsl:apply-templates>
                            </h5>
                            <a class="btn btn__new">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>