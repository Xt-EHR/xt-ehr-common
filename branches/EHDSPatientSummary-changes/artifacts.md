# Artifacts Summary - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### EHDS Patient Summary Logical Models 

Information Models for implementing EEHRxF Patient Summary under EHDS. Format based on ISO 13972 "Health informatics — Clinical information models — Characteristics, structures and requirements. The Patient Summary is currently being defined in a [separate branch](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/branches/patient-summary/artifacts.html#ehds-patient-summary-logical-models)

| | |
| :--- | :--- |
| [Patient summary model](StructureDefinition-EHDSPatientSummary.md) | The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard. |

### EHDS ePrescription and eDispense Logical Models 

Information Models for implementing EEHRxF services for medication prescription and dispense services.

| | |
| :--- | :--- |
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
| [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) | A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Address model](StructureDefinition-EHDSAddress.md) | EHDS refined base model for Address structure |
| [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md) | Healthcare directives concerning life or after life wishes of the patient |
| [Alert model](StructureDefinition-EHDSAlert.md) | A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes. Example 1: intolerance to aspirin due to gastrointestinal bleeding. Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough) Example 3: the patient has a rare disease that requires special treatment Example 4: Airway Alert / Difficult Intubation Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices. Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact. |
| [Allergy intolerance model](StructureDefinition-EHDSAllergyIntolerance.md) | EHDS refined base model for allergy/intolerance |
| [Attachment model](StructureDefinition-EHDSAttachment.md) | EHDS refined base model for This type is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type. |
| [Body structure model](StructureDefinition-EHDSBodyStructure.md) | EHDS refined base model for Body structure |
| [Care plan model](StructureDefinition-EHDSCarePlan.md) | Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains. |
| [Condition model](StructureDefinition-EHDSCondition.md) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern. |
| [Coverage model](StructureDefinition-EHDSCoverage.md) | EHDS refined base model for Coverage |
| [Current pregnancy status model](StructureDefinition-EHDSCurrentPregnancy.md) | Current pregnancy status |
| [DataSet model](StructureDefinition-EHDSDataSet.md) | Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources. |
| [Device model](StructureDefinition-EHDSDevice.md) | EHDS refined base model for Device information |
| [Device use model](StructureDefinition-EHDSDeviceUse.md) | EHDS refined base model for device use information |
| [Document model](StructureDefinition-EHDSDocument.md) | EHDS refined base model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes. |
| [Dosage model](StructureDefinition-EHDSDosage.md) | EHDS refined base model for Dosage |
| [Dosaging model](StructureDefinition-EHDSDosaging.md) | Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case. |
| [Encounter model](StructureDefinition-EHDSEncounter.md) | The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model. |
| [Endpoint model](StructureDefinition-EHDSEndpoint.md) | EHDS refined base model for Endpoint |
| [Functional status](StructureDefinition-EHDSFunctionalStatus.md) | EHDS refined base model for Functional status |
| [Health professional model](StructureDefinition-EHDSHealthProfessional.md) | EHDS refined base model for Health professional (HP) |
| [Human name model](StructureDefinition-EHDSHumanName.md) | EHDS refined base model for Human name |
| [Immunisation model](StructureDefinition-EHDSImmunisation.md) | Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope. |
| [Location model](StructureDefinition-EHDSLocation.md) | EHDS refined base model for Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated. |
| [Media model](StructureDefinition-EHDSMedia.md) | EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare. |
| [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md) | EHDS refined base model for a single medication administration |
| [Medication model](StructureDefinition-EHDSMedication.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries. |
| [Medication statement model](StructureDefinition-EHDSMedicationStatement.md) | Statement about a single medication as part of a medication summary. |
| [Observation model](StructureDefinition-EHDSObservation.md) | EHDS refined base model for Observation information |
| [Organisation model](StructureDefinition-EHDSOrganisation.md) | EHDS refined base model for Health provider or any other type of organisation |
| [Patient Animal model](StructureDefinition-EHDSPatientAnimal.md) | EHDS refined base model for Patient:Animal |
| [Patient model](StructureDefinition-EHDSPatient.md) | EHDS refined base model for patient (subject of care) information |
| [Pregnancy history model](StructureDefinition-EHDSPregnancyHistory.md) | Pregnancy history for one pregnancy |
| [Procedure model](StructureDefinition-EHDSProcedure.md) | The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage. |
| [Related person model](StructureDefinition-EHDSRelatedPerson.md) | EHDS refined base model for Patient/subject guardian and other related person information |
| [Service request model](StructureDefinition-EHDSServiceRequest.md) | EHDS refined base model for Specification of requested service or services |
| [Social history model](StructureDefinition-EHDSSocialHistory.md) | EHDS model for social history observations |
| [Specimen model](StructureDefinition-EHDSSpecimen.md) | EHDS refined base model for a specimen to be used for Analysis |
| [Substance model](StructureDefinition-EHDSSubstance.md) | EHDS refined base model for Substance |
| [Substance use model](StructureDefinition-EHDSSubstanceUse.md) | Statement about using a substance (such as tobacco, alcohol, drugs, etc). |
| [Telecom model](StructureDefinition-EHDSTelecom.md) | EHDS refined base model for Telecommunication contact information structure |
| [Travel history model](StructureDefinition-EHDSTravelHistory.md) | Relevant information about the patient's recent travel history, for one visit |

