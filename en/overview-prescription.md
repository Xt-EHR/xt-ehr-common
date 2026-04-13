# ePrescription - EHDS Logical Information Models v1.0.0

## ePrescription

### Information Models

#### Conceptual view

Components of a prescription and its representation as EHDS information models:

* Prescription: [EHDSMedicationPrescription](StructureDefinition-EHDSMedicationPrescription.md)
* Patient: [EHDSPatient](StructureDefinition-EHDSPatient.md)
* Prescriber: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.md)
* Medication: [EHDSMedication](StructureDefinition-EHDSMedication.md)
* Usage instructions: [EHDSDosage](StructureDefinition-EHDSDosage.md)

### FHIR Implementation Guide

FHIR Implementation Guide based on the models in this guide has been developed in a cross-project working group lead by HL7 Europe and IHE Pharmacy. Approved requirements are adopted by HL7 Europe MPD FHIR IG:

* [R4 MPD FHIR IG](https://hl7.eu/fhir/mpd/)
* [R5 MPD FHIR IG](https://hl7.eu/fhir/mpd-r5/)

### IHE Profile

[IHE Medication Prescription and Dispense profile](https://profiles.ihe.net/PHARM/MPD/) has a global scope and is not part of Xt-EHR deliverable. The joint working group has facilitated the alignment between European and global guide, and European guide makes use of IHE transaction definitions.

### Supporting Information

* [eHealth Network Guideline on ePrescription and eDispensation of Authorised Medicinal Products](https://health.ec.europa.eu/document/download/b744f30b-a05e-4b9c-9630-ad96ebd0b2f0_en?filename=ehn_guidelines_eprescriptions_en.pdf)
* [IHE Medication Prescription and Dispense profile](https://profiles.ihe.net/PHARM/MPD/)
* ISO/DIS 17523 "Health informatics - Requirements for electronic prescriptions"
* MyHealth@EU [requirements catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/1.+MyHealth@EU+Requirements+Catalogue) and [CDA specification](https://art-decor.ehdsi.eu/publication/)
* [SNOMED CT Medicinal Product Model Specification](https://confluence.ihtsdotools.org/display/DOCMPM)
* [EDQM Standard Terms](https://standardterms.edqm.eu/)
* [European Medicines Agency ISO IDMP implementation guidance](https://www.ema.europa.eu/en/human-regulatory-overview/research-development/data-medicines-iso-idmp-standards-overview/substance-product-organisation-referential-spor-master-data/substance-product-data-management-services), including [FHIR IG](https://www.ema.europa.eu/en/documents/regulatory-procedural-guideline/product-management-services-pms-implementation-international-organisation-standardization-iso-standards-identification-medicinal-products-idmp-europe-chapter-2_en.pdf)
* [EMA SPOR](https://spor.ema.europa.eu/sporwi/)
* UNICOM project: [web page](https://unicom-project.eu/), [FHIR IG](https://hl7-eu.github.io/unicom-ig), [public deliverables](https://unicom-project.eu/public-deliverables/)
* [Links to national medicines registers](https://www.ema.europa.eu/en/medicines/national-registers-authorised-medicines)

