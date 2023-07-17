<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" />
	<xsl:template match="/">
		<xsl:for-each select="dishes/dish[cena &gt; 150]">
			<xsl:sort select="cena" data-type="number"/> <!-- Řazení podle hodnoty cena vzestupně -->
			<xsl:choose>
				<xsl:when test="bezlepkovy=1"> <!-- Vybirame jen jidla kde hodnota bezlepkovy = 1-->
					<xsl:if test="position() != 1">,</xsl:if>
					<xsl:text>{ "Name" : "</xsl:text>
					<xsl:value-of select="name"/>
					<xsl:text>",</xsl:text>
					<xsl:text>"Cena" : </xsl:text>
					<xsl:value-of select="cena"/>
					<xsl:text>,</xsl:text>
					<xsl:text>"Alergeny" : "</xsl:text>
					<xsl:value-of select="alergeny"/>
					<xsl:text>",</xsl:text>
					<xsl:text>{&#xa;</xsl:text>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
		<xsl:text> ] }</xsl:text>
	</xsl:template>
</xsl:stylesheet>