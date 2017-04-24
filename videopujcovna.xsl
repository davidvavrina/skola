<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/videopujcovna">
        [
            <xsl:for-each select="video">
            <xsl:sort select="@nazev" order ="descending"/>
            <xsl:if test="dalsi_info/dostupnost>0">
            {
                    "nazev": "<xsl:value-of select="@nazev"/>",
                    "id": "<xsl:value-of select="@id_v"/>",
                    "reziser": "<xsl:value-of select="nutne_udaje/reziser/@prijmeni"/>",
                    "rok vydani": "<xsl:value-of select="nutne_udaje/datum_vydani/@rok"/>",
                    "delka filmu": "<xsl:value-of select="nutne_udaje/delka_filmu"/>",
                    "zanr": "<xsl:value-of select="nutne_udaje/film/@zanr"/>",
                    "studio": "<xsl:value-of select="dalsi_info/studio"/>",
                    "oblibenost": "<xsl:value-of select="dalsi_info/oblibenost"/>"
                    }<xsl:if test="position() != last()">,</xsl:if>
            </xsl:if>
            </xsl:for-each>

        ]
</xsl:template>
</xsl:stylesheet>




