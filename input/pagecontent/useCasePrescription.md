### Information Models

Components of a prescriptions and its representation as EHDS information models:
<figure>
  {% include prescription.svg %}  
</figure>

EHDS information models for **ePrescription**:
- Prescription: [EHDSMedicationPrescription](StructureDefinition-EHDSMedicationPrescription)  
- Patient: [EHDSPatient](StructureDefinition-EHDSPatient)  
- Prescriber: [EHDSHealthProfessional)](StructureDefinition-EHDSHealthProfessional)  
- Medication: [EHDSMedication](StructureDefinition-EHDSMedication)  
- Usage instructions: [EHDSDosaging](StructureDefinition-EHDSDosaging)  

EHDS information models for **eDispensation**:
- Dispensation: [EHDSMedicationDispense](StructureDefinition-EHDSMedicationDispense)  
- Patient: [EHDSPatient](StructureDefinition-EHDSPatient)  
- Dispenser: [EHDSHealthProfessional)](StructureDefinition-EHDSHealthProfessional)  
- Medication: [EHDSMedication](StructureDefinition-EHDSMedication)  
- Usage instructions: [EHDSDosaging](StructureDefinition-EHDSDosaging)  


### FHIR Implementation Guide

FHIR Implementation Guide is being developed in a cross-project working group lead by HL7 Europe and IHE (see [working group information](https://confluence.hl7.org/display/HEU/Medication+Prescription+and+Dispense%2C+Edition+1)). Business and data requirements defined in Xt-EHR Task 6.2 are discussed further in the working group in order to gather feedback from the implementers. Approved requirements are adopted by HL7 Europe MPD FHIR IG.  

**Ongoing work:**  
- [R4 FHIR IG](https://build.fhir.org/ig/hl7-eu/mpd/)  
- [R5 FHIR IG](https://build.fhir.org/ig/hl7-eu/mpd/branches/fhir-r5/)  


### Supporting Materials

- [eHealth Network Guideline on ePrescription and eDispensation of Authorised Medicinal Products](https://health.ec.europa.eu/document/download/b744f30b-a05e-4b9c-9630-ad96ebd0b2f0_en?filename=ehn_guidelines_eprescriptions_en.pdf)
- [IHE Medication Prescription and Delivery profile](https://build.fhir.org/ig/IHE/pharm-mpd/) (draft)

