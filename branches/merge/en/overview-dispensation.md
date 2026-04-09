# eDispensation - EHDS Logical Information Models v1.0.0

## eDispensation

### Information Models

#### Conceptual view

Components of a dispense and their representation as EHDS information models:

* Dispense: [EHDSMedicationDispense](StructureDefinition-EHDSMedicationDispense.md)
* Patient: [EHDSPatient](StructureDefinition-EHDSPatient.md)
* Dispenser: [EHDSHealthProfessional](StructureDefinition-EHDSHealthProfessional.md)
* Medication: [EHDSMedication](StructureDefinition-EHDSMedication.md)
* Usage instructions: [EHDSDosage](StructureDefinition-EHDSDosage.md)
* Location: [EHDSLocation](StructureDefinition-EHDSLocation.md)

Please note that dispense can only include one medication - therefore, in case of multi-line prescriptions, the dispense should reference the prescription item rather than just the full prescription.

### FHIR Implementation Guide

FHIR Implementation Guide based on the models in this guide has been developed in a cross-project working group lead by HL7 Europe and IHE Pharmacy. Approved requirements are adopted by HL7 Europe MPD FHIR IG:

* [R4 MPD FHIR IG](https://hl7.eu/fhir/mpd/)
* [R5 MPD FHIR IG](https://hl7.eu/fhir/mpd-r5/)

### IHE Profile

[IHE Medication Prescription and Dispense profile](https://profiles.ihe.net/PHARM/MPD/) has a global scope and is not part of Xt-EHR deliverable. The joint working group has facilitated the alignment between European and global guide, and European guide makes use of IHE transaction definitions.

### Supporting Information

See [ePrescription page](overview-prescription.md).

