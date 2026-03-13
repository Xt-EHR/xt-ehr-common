<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EHDSImmunisation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct">
      <sch:assert test="count(f:productName) &lt;= 1">productName: maximum cardinality of 'productName' is 1</sch:assert>
      <sch:assert test="count(f:marketingAuthorisationHolder) &lt;= 1">marketingAuthorisationHolder: maximum cardinality of 'marketingAuthorisationHolder' is 1</sch:assert>
      <sch:assert test="count(f:doseForm) &lt;= 1">doseForm: maximum cardinality of 'doseForm' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:batch) &lt;= 1">batch: maximum cardinality of 'batch' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:marketingAuthorisationHolder</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:marketingAuthorisationHolder">
      <sch:assert test="count(f:organisationName) &lt;= 1">organisationName: maximum cardinality of 'organisationName' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:item</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:item">
      <sch:assert test="count(f:doseForm) &lt;= 1">doseForm: maximum cardinality of 'doseForm' is 1</sch:assert>
      <sch:assert test="count(f:ingredient) &gt;= 1">ingredient: minimum cardinality of 'ingredient' is 1</sch:assert>
      <sch:assert test="count(f:unitOfPresentation) &lt;= 1">unitOfPresentation: maximum cardinality of 'unitOfPresentation' is 1</sch:assert>
      <sch:assert test="count(f:containedQuantity) &lt;= 1">containedQuantity: maximum cardinality of 'containedQuantity' is 1</sch:assert>
      <sch:assert test="count(f:amount) &lt;= 1">amount: maximum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:packageType) &lt;= 1">packageType: maximum cardinality of 'packageType' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:item/f:ingredient</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:item/f:ingredient">
      <sch:assert test="count(f:isActive) &lt;= 1">isActive: maximum cardinality of 'isActive' is 1</sch:assert>
      <sch:assert test="count(f:substance) &gt;= 1">substance: minimum cardinality of 'substance' is 1</sch:assert>
      <sch:assert test="count(f:substance) &lt;= 1">substance: maximum cardinality of 'substance' is 1</sch:assert>
      <sch:assert test="count(f:strengthInfo) &lt;= 1">strengthInfo: maximum cardinality of 'strengthInfo' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:item/f:ingredient/f:strengthInfo</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:item/f:ingredient/f:strengthInfo">
      <sch:assert test="count(f:strength) &gt;= 1">strength: minimum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:strength) &lt;= 1">strength: maximum cardinality of 'strength' is 1</sch:assert>
      <sch:assert test="count(f:basisOfStrengthSubstance) &lt;= 1">basisOfStrengthSubstance: maximum cardinality of 'basisOfStrengthSubstance' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:device</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:device">
      <sch:assert test="count(f:deviceQuantity) &gt;= 1">deviceQuantity: minimum cardinality of 'deviceQuantity' is 1</sch:assert>
      <sch:assert test="count(f:deviceQuantity) &lt;= 1">deviceQuantity: maximum cardinality of 'deviceQuantity' is 1</sch:assert>
      <sch:assert test="count(f:device[x]) &gt;= 1">device[x]: minimum cardinality of 'device[x]' is 1</sch:assert>
      <sch:assert test="count(f:device[x]) &lt;= 1">device[x]: maximum cardinality of 'device[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:characteristic</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:characteristic">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSImmunisation/f:administeredProduct/f:batch</sch:title>
    <sch:rule context="f:EHDSImmunisation/f:administeredProduct/f:batch">
      <sch:assert test="count(f:lotNumber) &lt;= 1">lotNumber: maximum cardinality of 'lotNumber' is 1</sch:assert>
      <sch:assert test="count(f:expirationDate) &lt;= 1">expirationDate: maximum cardinality of 'expirationDate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
