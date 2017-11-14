<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform"	
	xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:env="http://www.kallsonys.com.co/EnvioServices/"
	version="1.0">
	<xsl:output 
		method="text" doctype-public="XSLT-compat"
		omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
	
	<xsl:template match="/">
		<xsl:text>{</xsl:text>
			<xsl:text>"city":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/city" />
			<xsl:text>",</xsl:text>
			<xsl:text>"fname":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/addressName" />
			<xsl:text>",</xsl:text>
			<xsl:text>"lname":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/addressLastName" />
			<xsl:text>",</xsl:text>
			<xsl:text>"pais":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/country" />
			<xsl:text>",</xsl:text>
			<xsl:text>"status":false</xsl:text>
			<xsl:text>,</xsl:text>
			<xsl:text>"street":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/street" />
			<xsl:text>",</xsl:text>
			<xsl:text>"zipcode":"</xsl:text>
				<xsl:value-of select="soapenv:Envelope/soapenv:Body/env:fullfillShipment/shipment/zipcode" />
			<xsl:text>",</xsl:text>
			<xsl:text>"kallsonysistems":null</xsl:text>
		<xsl:text>}</xsl:text>
	</xsl:template>
</xsl:transform>