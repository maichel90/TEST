<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:kal="http://kallSonys.pica.com.co"
	xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:dhl="http://www.dhl.com.co/DhlServices/">
	<xsl:output method="xml" omit-xml-declaration="yes" />
	<xsl:template match="/">

		<dhl:fullfillShipment>
			<shipment>
				<partner>Kallsonys</partner>
				<supplier>
					<xsl:value-of select="shipment/supplier" />
				</supplier>
				<orderId>
					<xsl:value-of select="shipment/orderId" />
				</orderId>
				<addresseeName>
					<xsl:value-of select="shipment/addresseeName" />
				</addresseeName>
				<addresseeLastName>
					<xsl:value-of select="shipment/addresseeLastName" />
				</addresseeLastName>
				<country>
					<xsl:value-of select="shipment/country" />
				</country>
				<city>
					<xsl:value-of select="shipment/city" />
				</city>
				<street>
					<xsl:value-of select="shipment/street" />
				</street>
				<state>
					<xsl:value-of select="shipment/state" />
				</state>
				<zipcode>
					<xsl:value-of select="shipment/zipcode" />
				</zipcode>
			</shipment>
		</dhl:fullfillShipment>

	</xsl:template>
</xsl:stylesheet>