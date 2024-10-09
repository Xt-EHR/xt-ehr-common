### Information Models
#### Conceptual view

Laboratory result report could be divided into several parts: document header, body and optionally it could also have various attachments.

##### Laboratory Result Report
<figure>
  {% include labReport_CIM.svg %}
</figure>

##### Laboratory Result header
<figure>
  {% include labReportHeader_CIM.svg %}
</figure>

##### Laboratory Result body
<figure>
  {% include labReportBody_CIM.svg %}
</figure>

##### UML representation
Components of laboratory result report and its representation using UML notation:
<figure>
  {% include laboratory_report.svg %}
</figure>

Main laboratory report specific parts:
- [Laboratory Report Document](StructureDefinition/EHDSLaboratoryReport)
- [Laboratory Report Header](StructureDefinition/EHDSLaboratoryReportHeader)
- [Laboratory Report Body](StructureDefinition/EHDSLaboratoryReportBody)
- [Laboratory Observation](StructureDefinition/EHDSLaboratoryObservation)


### FHIR Implementation Guide

Laboratory Report FHIR Implementation Guide has been published by HL7 Europe ([published version](https://hl7.eu/fhir/laboratory/index.html)).
Latest build version can be found [here](https://build.fhir.org/ig/hl7-eu/laboratory/). The changes proposed by Xt-EHR project and approved by the community will be included in the future version of the specification.

MyHealth@EU has adopted HL7 Europe's FHIR IG for laboratory report crossborder service (see [crossborder adaption](https://fhir.ehdsi.eu/laboratory/)).

### Supporting Materials

- [eHealth Network Guideline on Laboratory Results](https://health.ec.europa.eu/publications/ehn-laboratory-result-guidelines_en)

