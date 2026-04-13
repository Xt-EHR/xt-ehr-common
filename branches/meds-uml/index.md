# Home - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/ImplementationGuide/xtehr.eu.ehds.models | *Version*:0.2.1 |
| Draft as of 2026-02-06 | *Computable Name*:EHDSModels |

This is the second preview release of the EHDS Logical Information Models developed under the Xt-EHR Joint Action. This is a release candidate version and may be subject to future refinement.

### Introduction

This implementation guide includes logical information models created in [Xt-EHR project](https://www.xt-ehr.eu/work-packages). These models are the basis for designing the EHDS data exchange format (EEHRxF).

### Specification

This guide includes EHDS models for all the priority categories, and many of the models are shared between use cases.

HL7 FHIR Implementation Guides for the EEHRxF are created in cooperation with other EU projects working on EHDS implementation (please find the links under specific use cases).

Logical Information Models IG should be used as a basis for all the use cases to make sure common data objects (patient, medication, etc) are modelled in a consistent way. Use case specific FHIR implementation guides shall include mappings to the models.

The principles of metada management, including information models, are described in [Xt-EHR Metadata IG](https://xt-ehr.github.io/xt-ehr-metadata/).

Content of the guide is based on many earlier works. Common sources for all use cases include:

* [eHealth Network guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) (including the results from eHN Subgroup of Semantics guideline consistency task force);
* [MyHealth@EU requirements catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/1.+MyHealth@EU+Requirements+Catalogue);
* [X-eHealth project](https://x-ehealth.min-saude.pt/);
* [XpanDH project](https://build.fhir.org/ig/hl7-eu/xpandh/).

### Authors and contributors

This Implementation Guide is a work result across different work packages:

* WP5 Task 5.4 "Metadata management",
* WP6 Task 6.1 "Patient Summary",
* WP6 Task 6.2 "ePrescription and eDispensation",
* WP7 Task 7.1 "Medical Results and Reports",
* WP7 Task 7.2 "Medical Images and Reports",
* WP7 Task 7.3 "Discharge Reports".

In order to contribute to the Logical Information Models IG authoring, do one of the following:

* as a project participant, join any of the tasks mentioned above for discussing the content;
* as a project participant, join the IG authoring group by creating a [GitHub issue](https://github.com/Xt-EHR/xt-ehr-common/issues) with access request;
* as an interested stakeholder, review the work in the draft IG and give feedback in [GitHub issues](https://github.com/Xt-EHR/xt-ehr-common/issues);
* as a FHIR implementer, join any of the HL7 Europe working groups for specific use cases.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "xtehr.eu.ehds.models",
  "url" : "http://www.xt-ehr.eu/fhir/models/ImplementationGuide/xtehr.eu.ehds.models",
  "version" : "0.2.1",
  "name" : "EHDSModels",
  "title" : "EHDS Logical Information Models",
  "status" : "draft",
  "date" : "2026-02-06T10:07:41+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.xt-ehr.eu/"
        }
      ]
    }
  ],
  "description" : "EHDS Logical Information Models",
  "packageId" : "xtehr.eu.ehds.models",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r5",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r5",
      "version" : "5.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r5#0.9.0"
      }
    ],
    "grouping" : [
      {
        "id" : "EHDSPsLogicalModels",
        "name" : "EHDS Patient Summary Logical Models",
        "description" : "Information Models for implementing EEHRxF Patient Summary under EHDS. Format based on ISO 13972 \"Health informatics — Clinical information models — Characteristics, structures and requirements. The Patient Summary is currently being defined in a [separate branch](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/branches/patient-summary/artifacts.html#ehds-patient-summary-logical-models)"
      },
      {
        "id" : "EHDSPrescriptionDispenseLogicalModels",
        "name" : "EHDS ePrescription and eDispense Logical Models",
        "description" : "Information Models for implementing EEHRxF services for medication prescription and dispense services."
      },
      {
        "id" : "EHDSLaboratoryLogicalModels",
        "name" : "EHDS Laboratory Domain Logical Models",
        "description" : "Information Models for implementing EEHRxF services in the laboratory domain under EHDS. Format based on ISO 13972 \"Health informatics — Clinical information models — Characteristics, structures and requirements.\""
      },
      {
        "id" : "EHDSImagingLogicalModels",
        "name" : "EHDS Imaging Domain Logical Models",
        "description" : "Information Models for implementing EEHRxF services in the imaging domain under EHDS. Format based on ISO 13972 \"Health informatics — Clinical information models — Characteristics, structures and requirements.\""
      },
      {
        "id" : "EHDSHdrLogicalModels",
        "name" : "EHDS Discharge Report Domain Logical Models",
        "description" : "Information Models for implementing EEHRxF Discharge report under EHDS. Format based on ISO 13972 \"Health informatics — Clinical information models — Characteristics, structures and requirements.\""
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAddress"
        },
        "name" : "Address model",
        "description" : "EHDS refined base model for Address structure",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAdministeredDosage"
        },
        "name" : "Administered dosage model",
        "description" : "Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAdvanceDirective"
        },
        "name" : "Advance directive model",
        "description" : "Healthcare directives concerning life or after life wishes of the patient",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAlert"
        },
        "name" : "Alert model",
        "description" : "A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes.\nExample 1: intolerance to aspirin due to gastrointestinal bleeding.\nExample 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)\nExample 3: the patient has a rare disease that requires special treatment\nExample 4: Airway Alert / Difficult Intubation\nExample 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.\nExample 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.\nExample 7: participation in a clinical trial that has to be taken into account in a healthcare contact.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAllergyIntolerance"
        },
        "name" : "Allergy intolerance model",
        "description" : "Model for allergy or intolerance.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSAttachment"
        },
        "name" : "Attachment model",
        "description" : "This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSBodyStructure"
        },
        "name" : "Body structure model",
        "description" : "Model for body structure",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSCarePlan"
        },
        "name" : "Care plan model",
        "description" : "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSCondition"
        },
        "name" : "Condition model",
        "description" : "Model for a clinical condition, problem, diagnosis, or other event, situation, or issue that has risen to a level of concern.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSCurrentPregnancy"
        },
        "name" : "Current pregnancy status model",
        "description" : "Current pregnancy status",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDataSet"
        },
        "name" : "DataSet model",
        "description" : "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDevice"
        },
        "name" : "Device model",
        "description" : "Model for device information",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDeviceUse"
        },
        "name" : "Device use model",
        "description" : "Model for information about the use of a device in the care of patient.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDischargeReport"
        },
        "name" : "Discharge Report model",
        "description" : "A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs.",
        "isExample" : false,
        "groupingId" : "EHDSHdrLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDocument"
        },
        "name" : "Document model",
        "description" : "Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSDosage"
        },
        "name" : "Dosage model",
        "description" : "The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSEncounter"
        },
        "name" : "Encounter model",
        "description" : "The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSEndpoint"
        },
        "name" : "Endpoint model",
        "description" : "Model covers technical details of an endpoint that can be used for electronic services",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSHealthProfessional"
        },
        "name" : "Health professional model",
        "description" : "Model for information about a health professional.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSHumanName"
        },
        "name" : "Human name model",
        "description" : "Model for human name",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSImagingReport"
        },
        "name" : "Imaging report model",
        "description" : "Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice.",
        "isExample" : false,
        "groupingId" : "EHDSImagingLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSImagingStudy"
        },
        "name" : "Imaging study model",
        "description" : "Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images.",
        "isExample" : false,
        "groupingId" : "EHDSImagingLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSImmunisation"
        },
        "name" : "Immunisation model",
        "description" : "Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSLaboratoryObservation"
        },
        "name" : "Laboratory observation model",
        "description" : "Model for observation performed by laboratory",
        "isExample" : false,
        "groupingId" : "EHDSLaboratoryLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSLaboratoryReport"
        },
        "name" : "Laboratory report model",
        "description" : "Laboratory result report model.",
        "isExample" : false,
        "groupingId" : "EHDSLaboratoryLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSLocation"
        },
        "name" : "Location model",
        "description" : "Model for details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSMedicationAdministration"
        },
        "name" : "Medication administration model",
        "description" : "The model covers details about single medication administrations within the scope of imaging and laboratory procedures.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSMedicationDispense"
        },
        "name" : "Medication dispense model",
        "description" : "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information.",
        "isExample" : false,
        "groupingId" : "EHDSPrescriptionDispenseLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSMedication"
        },
        "name" : "Medication model",
        "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSMedicationPrescription"
        },
        "name" : "Medication prescription model",
        "description" : "Logical model for medication prescription. A prescription contains one or more prescription items (medications).",
        "isExample" : false,
        "groupingId" : "EHDSPrescriptionDispenseLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSMedicationUse"
        },
        "name" : "Medication use model",
        "description" : "Statement about a single medication as part of a medication summary.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSObservation"
        },
        "name" : "Observation model",
        "description" : "Model for information about an oservation and its results.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSOrganisation"
        },
        "name" : "Organisation model",
        "description" : "Model for information about an organisation",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSPatient"
        },
        "name" : "Patient model",
        "description" : "Model for information about a patient (subject of care).",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSPatientSummary"
        },
        "name" : "Patient summary model",
        "description" : "The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard.",
        "isExample" : false,
        "groupingId" : "EHDSPsLogicalModels"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSPregnancyHistory"
        },
        "name" : "Pregnancy history model",
        "description" : "Pregnancy history for one pregnancy",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSProcedure"
        },
        "name" : "Procedure model",
        "description" : "The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSRelatedPerson"
        },
        "name" : "Related person model",
        "description" : "Model for information about a guardian or other person related to the subject of care",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSServiceRequest"
        },
        "name" : "Service request model",
        "description" : "The model covers details about a requested service or services. One order may include several requests.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSSpecimen"
        },
        "name" : "Specimen model",
        "description" : "Model for a specimen to be used for analysis",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSTelecom"
        },
        "name" : "Telecom model",
        "description" : "Model for communication contact information.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/EHDSTravelHistory"
        },
        "name" : "Travel history model",
        "description" : "Relevant information about the patient's recent travel history, for one visit",
        "isExample" : false
      }
    ],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "sourceUrl" : "index.html",
          "name" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "howto.html",
          "name" : "howto.html",
          "title" : "How to read this guide",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "knownIssues.html",
          "name" : "knownIssues.html",
          "title" : "Known issues",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "scope.html",
          "name" : "scope.html",
          "title" : "Scope and Content",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "wow.html",
          "name" : "wow.html",
          "title" : "Ways of working",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-prescription.html",
          "name" : "overview-prescription.html",
          "title" : "ePrescription",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-dispensation.html",
          "name" : "overview-dispensation.html",
          "title" : "eDispensation",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-patientsummary.html",
          "name" : "overview-patientsummary.html",
          "title" : "Patient Summary",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-medicaltestresult.html",
          "name" : "overview-medicaltestresult.html",
          "title" : "Laboratory Report",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-medicalimages.html",
          "name" : "overview-medicalimages.html",
          "title" : "Medical Images",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "overview-dischargereport.html",
          "name" : "overview-dischargereport.html",
          "title" : "Discharge Report",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "obligationsLabReport.html",
          "name" : "obligationsLabReport.html",
          "title" : "Obligations for Laboratory Report",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "downloads.html",
          "name" : "downloads.html",
          "title" : "Download",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "copyrightyear"
        },
        "value" : "2022+"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "releaselabel"
        },
        "value" : "qa-preview"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "produce-jekyll-data"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "autoload-resources"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/capabilities"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/examples"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/extensions"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/models"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/operations"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/profiles"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/vocabulary"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/maps"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/testing"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/history"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "fsh-generated/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "template/config"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "input/images"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "template/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "input/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-qa"
        },
        "value" : "temp/qa"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-temp"
        },
        "value" : "temp/pages"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-output"
        },
        "value" : "output"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-tx-cache"
        },
        "value" : "input-cache/txcache"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-suppressed-warnings"
        },
        "value" : "input/ignoreWarnings.txt"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-history"
        },
        "value" : "http://www.xt-ehr.eu/fhir/models/history.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-html"
        },
        "value" : "template-page.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-md"
        },
        "value" : "template-page-md.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-contact"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-context"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-copyright"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-jurisdiction"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-license"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-publisher"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-version"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-wg"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "active-tables"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "fmm-definition"
        },
        "value" : "http://hl7.org/fhir/versions.html#maturity"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "propagate-status"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludelogbinaryformat"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "tabbed-snapshots"
        },
        "value" : "true"
      }
    ]
  }
}

```
