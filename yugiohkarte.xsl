<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

		<xsl:template match="/">
		<xsl:variable name="BrojKarti" select="count(/Karte/Karta)"/>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> </meta>
    <title>Shop</title>
    <link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,600,700,800,300" rel="stylesheet"> </link>
    <link href="stil.css" rel="stylesheet" type="text/css" media="all"> </link>
    
    </head>

    <body>
        <div id="wrapper">
            <div id="menu-wrapper">
                <div id="menu" class="container">
                    <ul id="">
                        <li>YU-GI-OH CARD SHOP</li>
                        <li class="current_page_item"><a href="main.html">Home</a></li>
                        <li><a href="news.html">News</a></li>
                        <li><a href="shop.html">Shop</a></li>
                        
                        
                    </ul>
                </div>
             
            
            </div>

            <div id="page" class="container">
                <div id="content">
                 
                        <h2>CARD SHOP</h2>
                        
                </div>
            </div>

<div id="page" class="container">
				<p>Izaberite jednu od <xsl:value-of select="$BrojKarti"/> karti</p>
				<xsl:template match="/">
					<xsl:apply-templates select="//Karta"/>
				</xsl:template>
				
				
				<xsl:template match="/Karte/Karta">
				<div class="title"><h2><xsl:apply-templates select="Naslov"/></h2></div>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="Slika"/>
					</xsl:attribute>
				</img>
					<br/>
					<p>Vrsta: <b><xsl:apply-templates select="Vrsta"/></b></p>
					<p>LVL: <xsl:apply-templates select="LVL"/></p>
					<p>ATK: <xsl:apply-templates select="ATK"/></p>
                    <p>DEF: <xsl:apply-templates select="DEF"/></p>
                    <p>Godina: <xsl:apply-templates select="Godina"/></p>
                    <p>Izdanje: <xsl:apply-templates select="Izdanje"/></p>
                    <p>Cijena: <xsl:apply-templates select="Cijena"/></p>

					<br/>
				<a href="#">Dodaj u košaricu</a>
				</xsl:template>
             
			</div>
		</div>







            </body>
            </html>

            	</xsl:template>
</xsl:stylesheet>