### Information Models

#### EHDS information models for **ePrescription**:

Components of a prescription and their representation as EHDS information models:
<figure>
  {% include prescription.svg %}
</figure>

- Prescription: [EHDSMedicationPrescription](StructureDefinition-EHDSMedicationPrescription.html)
- Patient: [EHDSPatient](StructureDefinition-EHDSPatient.html)
- Prescriber: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.html)
- Medication: [EHDSMedication](StructureDefinition-EHDSMedication.html)
- Usage instructions: [EHDSDosaging](StructureDefinition-EHDSDosaging.html)

#### EHDS information models for **eDispensation**:

<figure>
  {% include dispense.svg %}
</figure> 

- Dispense: [EHDSMedicationDispense](StructureDefinition-EHDSMedicationDispense.html)
- Patient: [EHDSPatient](StructureDefinition-EHDSPatient.html)
- Dispenser: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.html)
- Medication: [EHDSMedication](StructureDefinition-EHDSMedication.html)
- Usage instructions: [EHDSDosaging](StructureDefinition-EHDSDosaging.html)
- Location: [EHDSLocation](StructureDefinition-EHDSLocation.html)

Please note that dispense can only include one medication - therefore, in case of multi-line prescriptions, the dispense should reference the prescription item rather than just the full prescription.

Components of **declining a dispense** and their representation as EHDS information models:
<figure>
  {% include dispenseDecline.svg %}
</figure> 

- DispenseDecline: [EHDSDispenseDecline](StructureDefinition-EHDSDispenseDecline.html)
- Patient: [EHDSPatient](StructureDefinition-EHDSPatient.html)
- Dispenser: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.html)

Dispense can be declined for the whole prescription or just for a prescription item.

### FHIR Implementation Guide

FHIR Implementation Guide is being developed in a cross-project working group lead by HL7 Europe and IHE (see [working group information](https://confluence.hl7.org/display/HEU/Medication+Prescription+and+Dispense%2C+Edition+1)). Business and data requirements defined in Xt-EHR Task 6.2 are discussed further in the working group in order to gather feedback from the implementers. Approved requirements are adopted by HL7 Europe MPD FHIR IG.

**Ongoing work:**
- [R4 FHIR IG](https://build.fhir.org/ig/hl7-eu/mpd/)
- [R5 FHIR IG](https://build.fhir.org/ig/hl7-eu/mpd/branches/r5/)


### IHE Profile

FHIR-based IHE profile for this use case is in draft status, please see [IHE Medication Prescription and Delivery profile](https://build.fhir.org/ig/IHE/pharm-mpd/) for more information.

IHE Profile has a global scope and is not part of Xt-EHR deliverable. However, the HL7 Europe / IHE joint working group (see above) allows mutually beneficial cooperation and early alignment.


### Supporting Information

- [eHealth Network Guideline on ePrescription and eDispensation of Authorised Medicinal Products](https://health.ec.europa.eu/document/download/b744f30b-a05e-4b9c-9630-ad96ebd0b2f0_en?filename=ehn_guidelines_eprescriptions_en.pdf)
- [IHE Medication Prescription and Delivery profile](https://build.fhir.org/ig/IHE/pharm-mpd/) (draft)
- ISO/DIS 17523 "Health informatics - Requirements for electronic prescriptions"
- MyHealth@EU [requirements catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/1.+MyHealth@EU+Requirements+Catalogue) and [CDA specification](https://art-decor.ehdsi.eu/publication/)
- [SNOMED CT Medicinal Product Model Specification](https://confluence.ihtsdotools.org/display/DOCMPM)
- [EDQM Standard Terms](https://standardterms.edqm.eu/)
- [European Medicines Agency ISO IDMP implementation guidance](https://www.ema.europa.eu/en/human-regulatory-overview/research-development/data-medicines-iso-idmp-standards-overview/substance-product-organisation-referential-spor-master-data/substance-product-data-management-services), including [FHIR IG](https://www.ema.europa.eu/en/documents/regulatory-procedural-guideline/product-management-services-pms-implementation-international-organization-standardization-iso-standards-identification-medicinal-products-idmp-europe-chapter-2_en.pdf)
- [EMA SPOR](https://spor.ema.europa.eu/sporwi/)
- UNICOM project: [web page](https://unicom-project.eu/), [FHIR IG](https://build.fhir.org/ig/hl7-eu/unicom-ig/), [public deliverables](https://unicom-project.eu/public-deliverables/)
- [Links to national medicines registers](https://www.ema.europa.eu/en/medicines/national-registers-authorised-medicines)

