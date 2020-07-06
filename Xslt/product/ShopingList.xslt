<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <div class="container">
      <div class="block__filter">
        <h4>BỘ LỌC</h4>
        <div class="filter__icon"><i class="fa fa-filter"></i></div>
        <ul class="nav">
          <li class="nav-item">
              <div class="form-group nice-select" tabindex="0"><span>Thương Hiệu:</span><span class="current">Tất cả</span>
                <ul class="list">
                  <li class="option selected focus" data-value="Tất cả"><a href="">Tất cả</a></li>
                  <li class="option" data-value="Thương hiệu 1"><a href="">Thương hiệu 1</a></li>
                  <li class="option" data-value="Thương hiệu 2"><a href="">Thương hiệu 2</a></li>
                </ul>
              </div>
            </li>
          <xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
          <li class="nav-item">
            <div class="form-group">
              <span>Hiển thị: <xsl:apply-templates select="/ProductList/PageSize"></xsl:apply-templates>
              </span>
            </div>
          </li>
        </ul>
      </div>
      <div class="list-product">
        <div class="row">
          <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="PageSize">
    <a class="d-inline-block mr-1">
      <xsl:attribute name="href">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="Title"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Title"></xsl:value-of>
    </a>
  </xsl:template>

  <xsl:template match="SortBy">
    <li class="nav-item">
      <div class="form-group">
        <input name="sortBy" type="radio">
        <xsl:attribute name="id">
          <xsl:text disable-output-escaping="yes">sort-</xsl:text>
          <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="checked">
            <xsl:text>checked</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="value">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        </input>
        <label for="radio1">
          <xsl:attribute name="for">
            <xsl:text disable-output-escaping="yes">sort-</xsl:text>
            <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
          </xsl:attribute>
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
          </a>
        </label>
      </div>
    </li>
  </xsl:template>

  <xsl:template match="Product">
    <div class="col-lg-3 col-md-4 col-sm-6">
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
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
</xsl:stylesheet>