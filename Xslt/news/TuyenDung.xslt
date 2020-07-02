<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-tabel">
            <div class="block__title text-center">
                <h4><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h4>
            </div>
            <table class="table table-striped table-hover">
                <tr class="title">
                    <th scope="col">STT</th>
                    <th scope="col">Vị trí ứng tuyển</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Khu vực</th>
                    <th scope="col">Thời hạn</th>
                </tr>
                <tbody>
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </tbody>
            </table>
        </div>
    </xsl:template>
    <xsl:template match="News">
		<tr>
			<th scope="row">
				<xsl:value-of select="position()"></xsl:value-of>
			</th>
			<td>
				<a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td class="text-center">
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</td>
			<td class="text-center">
				<xsl:value-of select="BriefContent"></xsl:value-of>
			</td>
			<td class="text-center">
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</td>
		</tr>
    </xsl:template>
</xsl:stylesheet>