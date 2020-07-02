<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="career-page clearfix">
      <div class="container">
        <h2 class="postname">
          <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
        </h2>
        <div class="table-responsive">
          <table class="table table-striped table-hover">
										<tr class="title">
											<th scope="col">STT</th>
											<th scope="col">Vị trí ứng tuyển</th>
											<th scope="col">Số lượng</th>
											<th scope="col">Khu vực</th>
											<th scope="col">Thời hạn</th>
										</tr>
										<tbody>

										</tbody>
									</table>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="News">
    <tr>
      <td>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
      </td>
      <td>
        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </td>
      <td>
        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
      </td>
      <td>
        <xsl:value-of select="FileUrl" disable-output-escaping="yes"></xsl:value-of>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>