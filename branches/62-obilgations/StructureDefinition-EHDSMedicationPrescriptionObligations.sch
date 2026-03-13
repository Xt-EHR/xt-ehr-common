<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EHDSMedicationPrescription
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions">
      <sch:assert test="count(f:renderedDosageInstruction) &lt;= 1">renderedDosageInstruction: maximum cardinality of 'renderedDosageInstruction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails">
      <sch:assert test="count(f:sequence) &lt;= 1">sequence: maximum cardinality of 'sequence' is 1</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
      <sch:assert test="count(f:repeat) &lt;= 1">repeat: maximum cardinality of 'repeat' is 1</sch:assert>
      <sch:assert test="count(f:asNeeded) &lt;= 1">asNeeded: maximum cardinality of 'asNeeded' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 1">bodySite: maximum cardinality of 'bodySite' is 1</sch:assert>
      <sch:assert test="count(f:routeOfAdministration) &lt;= 1">routeOfAdministration: maximum cardinality of 'routeOfAdministration' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:doseAndRate</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:doseAndRate">
      <sch:assert test="count(f:dose[x]) &lt;= 1">dose[x]: maximum cardinality of 'dose[x]' is 1</sch:assert>
      <sch:assert test="count(f:rate[x]) &lt;= 1">rate[x]: maximum cardinality of 'rate[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat">
      <sch:assert test="count(f:bounds) &lt;= 1">bounds: maximum cardinality of 'bounds' is 1</sch:assert>
      <sch:assert test="count(f:duration) &lt;= 1">duration: maximum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:frequency) &lt;= 1">frequency: maximum cardinality of 'frequency' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat/f:bounds</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat/f:bounds">
      <sch:assert test="count(f:duration) &lt;= 1">duration: maximum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat/f:frequency</sch:title>
    <sch:rule context="f:EHDSMedicationPrescription/f:prescriptionItem/f:dosageInstructions/f:dosageDetails/f:repeat/f:frequency">
      <sch:assert test="count(f:numberOfTimes) &lt;= 1">numberOfTimes: maximum cardinality of 'numberOfTimes' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
