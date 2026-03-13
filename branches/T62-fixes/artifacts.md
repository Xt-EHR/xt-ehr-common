# Artifacts Summary - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### EHDS Patient Summary Logical Models 

Information Models for implementing EEHRxF Patient Summary under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements. The Patient Summary is currently being defined in a [separate branch](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/branches/patient-summary/artifacts.html#ehds-patient-summary-logical-models)

| | |
| :--- | :--- |
| [Patient summary model](StructureDefinition-EHDSPatientSummary.md) | EHDS refined base model for Patient Summary |

### EHDS ePrescription and eDispense Logical Models 

Information Models for implementing EEHRxF services for medication prescription and dispense services.

| | |
| :--- | :--- |
| [Medication dispense decline model](StructureDefinition-EHDSDispenseDecline.md) | Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment). |
| [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md) | Logical model for medication dispensation (based on request or independently) |
| [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md) | Logical model for medication prescription. A prescription contains one or more prescription items. |

### EHDS Laboratory Domain Logical Models 

Information Models for implementing EEHRxF services in the laboratory domain under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md) | EHDS refined base model for Observation performed by laboratory |
| [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) | EHDS refined base model for Laboratory result report |

### EHDS Imaging Domain Logical Models 

Information Models for implementing EEHRxF services in the imaging domain under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Imaging report model](StructureDefinition-EHDSImagingReport.md) | Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice. |
| [Imaging study model](StructureDefinition-EHDSImagingStudy.md) | Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images. |

### EHDS Discharge Report Domain Logical Models 

Information Models for implementing EEHRxF Discharge report under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements."

| | |
| :--- | :--- |
| [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) | EHDS refined base model for Discharge Report |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Address model](StructureDefinition-EHDSAddress.md) | EHDS refined base model for Address structure |
| [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md) | Healthcare directives concerning life or after life wishes of the patient |
| [Alert model](StructureDefinition-EHDSAlert.md) | Alert flag |
| [Allergy intolerance model](StructureDefinition-EHDSAllergyIntolerance.md) | EHDS refined base model for allergy/intolerance |
| [Attachment model](StructureDefinition-EHDSAttachment.md) | EHDS refined base model for This type is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type. |
| [Body structure model](StructureDefinition-EHDSBodyStructure.md) | EHDS refined base model for Body structure |
| [Care plan model](StructureDefinition-EHDSCarePlan.md) | EHDS simplified model for care plan. The model includes very minimal information and is not designed to cover the full functionality of care plans. |
| [Condition model](StructureDefinition-EHDSCondition.md) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. |
| [Coverage model](StructureDefinition-EHDSCoverage.md) | EHDS refined base model for Coverage |
| [Current pregnancy status model](StructureDefinition-EHDSCurrentPregnancy.md) | Current pregnancy status |
| [DataSet model](StructureDefinition-EHDSDataSet.md) | Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources. |
| [Device model](StructureDefinition-EHDSDevice.md) | EHDS refined base model for Device information |
| [Device use model](StructureDefinition-EHDSDeviceUse.md) | EHDS refined base model for device use information |
| [Document model](StructureDefinition-EHDSDocument.md) | EHDS refined base model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes. |
| [Dosage model](StructureDefinition-EHDSDosage.md) | EHDS refined base model for Dosage |
| [Dosaging model](StructureDefinition-EHDSDosaging.md) | Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case. |
| [Encounter model](StructureDefinition-EHDSEncounter.md) | EHDS refined base model for Encounter |
| [Endpoint model](StructureDefinition-EHDSEndpoint.md) | EHDS refined base model for Endpoint |
| [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md) | EHDS refined base model for Episode of care |
| [Family member history model](StructureDefinition-EHDSFamilyMemberHistory.md) | EHDS refined base model for family member history |
| [Functional status](StructureDefinition-EHDSFunctionalStatus.md) | EHDS refined base model for Functional status |
| [Health professional model](StructureDefinition-EHDSHealthProfessional.md) | EHDS refined base model for Health professional (HP) |
| [Human name model](StructureDefinition-EHDSHumanName.md) | EHDS refined base model for Human name |
| [Immunisation model](StructureDefinition-EHDSImmunisation.md) | EHDS refined base model for Immunisation |
| [Infectious contact model](StructureDefinition-EHDSInfectiousContact.md) | EHDS refined base model for an infectious contact |
| [Location model](StructureDefinition-EHDSLocation.md) | EHDS refined base model for Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated. |
| [Media model](StructureDefinition-EHDSMedia.md) | EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare. |
| [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md) | EHDS refined base model for a single medication administration |
| [Medication model](StructureDefinition-EHDSMedication.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products. |
| [Medication statement model](StructureDefinition-EHDSMedicationStatement.md) | Statement about a single medication as part of a medication summary. |
| [Observation model](StructureDefinition-EHDSObservation.md) | EHDS refined base model for Observation information |
| [Organisation model](StructureDefinition-EHDSOrganisation.md) | EHDS refined base model for Health provider or any other type of organisation |
| [Patient Animal model](StructureDefinition-EHDSPatientAnimal.md) | EHDS refined base model for Patient:Animal |
| [Patient model](StructureDefinition-EHDSPatient.md) | EHDS refined base model for patient (subject of care) information |
| [Pregnancy history model](StructureDefinition-EHDSPregnancyHistory.md) | Pregnancy history for one pregnancy |
| [Procedure model](StructureDefinition-EHDSProcedure.md) | EHDS refined base model for an action that is or was performed on or for a patient |
| [Related person model](StructureDefinition-EHDSRelatedPerson.md) | EHDS refined base model for Patient/subject guardian and other related person information |
| [Service request model](StructureDefinition-EHDSServiceRequest.md) | EHDS refined base model for Specification of requested service or services |
| [Social history model](StructureDefinition-EHDSSocialHistory.md) | EHDS model for social history observations |
| [Specimen model](StructureDefinition-EHDSSpecimen.md) | EHDS refined base model for A sample to be used for Analysis |
| [Substance model](StructureDefinition-EHDSSubstance.md) | EHDS refined base model for Substance |
| [Substance use model](StructureDefinition-EHDSSubstanceUse.md) | Statement about using a substance (such as tobacco, alcohol, drugs, etc). |
| [Telecom model](StructureDefinition-EHDSTelecom.md) | EHDS refined base model for Telecommunication contact information structure |
| [Travel history model](StructureDefinition-EHDSTravelHistory.md) | Relevant information about the patient's recent travel history, for one visit |

