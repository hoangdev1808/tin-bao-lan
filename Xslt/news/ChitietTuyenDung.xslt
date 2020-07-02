<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="block-section hr-detail wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="hr-detail__content">
                    <div class="row">
                        <div class="col-lg-8 col-md-12 col-12">
                            <div class="box-left">
                                <div class="box-left__title">
                                    <h4>
                                        <xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
										<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                                    </h4>
                                </div>
                                <div class="box-left__timeline">
                                    <div class="time">
                                        <p>
                                            <xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
                                        </p>
                                    </div>
                                    <div class="icon-social">
                                        <ul>
                                            <li>
                                                <a href="">
												<xsl:attribute name="href">
													<xsl:text disable-output-escaping="yes">
														https://www.facebook.com/sharer/sharer.php?u=
													</xsl:text>
													<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
												</xsl:attribute>
                                                    <i class="fa fa-facebook"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
													<xsl:attribute name="href">
													<xsl:text disable-output-escaping="yes">
														https://twitter.com/home?status=
													</xsl:text>
													<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullUrl"></xsl:value-of>
												</xsl:attribute>
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="box-left__content">
									<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-12">
                            <div class="box-right">
                                <div class="box-right__btn">
                                    <a class="hvr-sweep-to-right btn btn__new" href="">
                                         <xsl:attribute name="href">
											<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"/>
											</xsl:attribute>
											<xsl:value-of select="/NewsDetail/Apply"></xsl:value-of>
											 <xsl:text>ứng tuyển ngay</xsl:text>
                                    </a>
                                    <a class="btn btn__new" href="">tải form ứng tuyển</a>
                                </div>
                                <div class="box-right__content">
                                    <div class="box-right__content__list">
                                        <div class="box-left__content__list__title">
                                            <span class="icon">
                                                <img src="/Data/Sites/1/skins/default/assets/icons/thontin.png" alt=""></img>
                                            </span>
                                            <h5>Thông tin tuyển dụng</h5>
                                        </div>
                                        	<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                                    </div>
                                    <div class="box-right__content__list">
                                        <div class="box-left__content__list__title">
                                            <span class="icon">
                                                <img src="/Data/Sites/1/skins/default/assets/icons/vitrikhac.png" alt=""></img>
                                            </span>
                                            <h5>Vị trí khác</h5>
                                        </div>
                                        <div class="box-right__content__list__job-more">
                                            <ul>
                                                 <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsAttributes">
		<div class="box-left__content__list">
			<div class="box-left__content__list__title">
			<span class="icon">
			<xsl:choose>
				<xsl:when test="position() = 1">
					<img src="/Data/Sites/1/skins/default/assets/icons/phucloi.png" alt=""></img>
				</xsl:when>
				<xsl:when test="position() = 2">
					<img src="/Data/Sites/1/skins/default/assets/icons/tomtat.png" alt=""></img>
				</xsl:when>
				<xsl:when test="position() = 3">
					<img src="/Data/Sites/1/skins/default/assets/icons/mota.png" alt=""></img>
				</xsl:when>
				<xsl:when test="position() = 4">
					<img src="/Data/Sites/1/skins/default/assets/icons/mission.png" alt=""></img>
				</xsl:when>
				<xsl:when test="position() = 5">
					<img src="/Data/Sites/1/skins/default/assets/icons/yeucau.png" alt=""></img>
				</xsl:when>
			</xsl:choose>
			</span>
				<h5>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h5>
			</div>
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<li>
			<p><xsl:value-of select="CreatedDate"></xsl:value-of></p>
			<a>
				 <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				 <xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			<p><xsl:value-of select="BriefContent"></xsl:value-of></p>
		</li>
	</xsl:template>
</xsl:stylesheet>