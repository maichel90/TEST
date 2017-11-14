<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
	xmlns:val="http://www.validartarjeta.com.co/ValidadorTarjeta/"
	xmlns:kal="http://kallSonys.pica.com.co">
	<xsl:output method="xml" omit-xml-declaration="yes" />
	<xsl:template match="/">	
		<val:CreditCardPaymentRequest>
			<ccType>
				<xsl:value-of select="ccType" />
			</ccType>
			<ccNum>
				<xsl:value-of select="ccNum" />
			</ccNum>
		</val:CreditCardPaymentRequest>
	</xsl:template>
</xsl:stylesheet>