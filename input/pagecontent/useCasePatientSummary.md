### Information Models
#### Conceptual view

Patient summary report could be divided into several basic parts: document header, body and optionally it could also have various attachments.

##### Patient Summary Report
<figure>
  {% include PsReport_CIM.svg %}
</figure>

##### Patient Summary Report header
<figure>
  {% include PsReportHeader_CIM.svg %}
</figure>

##### Patient Summary Report body
<figure>
  {% include PsReportBody_CIM.svg %}
</figure>

Detailed EHDS information models for **Patient Summary**:
- Patient Summary Document: [EHDSPatientSummary](StructureDefinition-EHDSPatientSummary.html)
- Patient Summary Header: [EHDSPatientSummaryHeader](StructureDefinition-EHDSPatientSummaryHeader.html)
- Patient Summary Body: [EHDSPatientSummaryBody](StructureDefinition-EHDSPatientSummaryBody.html)

### FHIR Implementation Guide

Patient Summary FHIR Implementation Guide is based on International Patient Summary FHIR IG.

The work for building the European specialisation of International Patient Summary is ongoing in a joint working group of Xt-EHR, XpanDH, xShare and HL7 Europe. Any interested stakeholder is welcome to join the group - please see the detailed [information about the meetings](https://confluence.hl7.org/display/HEU/Meetings+PS-HDR-Base).

The European Patient Summary FHIR Implementation Guide:
- [R4 version](https://build.fhir.org/ig/hl7-eu/eps/)
- R5 - not available (also, not available for IPS)


### Supporting information

- [International Patient Summary](https://international-patient-summary.net/)
- [eHealth Network Patient Summary guidelines](https://health.ec.europa.eu/document/download/e020f311-c35b-45ae-ba3d-03212b57fa65_en?filename=ehn_guidelines_patientsummary_en.pdf)
- [MyHealth@EU Requirements Catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/05.01.+Create+the+MyHealth@EU+Patient+Summary+content)
- [MyHealth@EU CDA specification](https://art-decor.ehdsi.eu/publication/epsos-html-20240422T073854/tmp-1.3.6.1.4.1.12559.11.10.1.3.1.1.3-2024-04-19T100332.html)
