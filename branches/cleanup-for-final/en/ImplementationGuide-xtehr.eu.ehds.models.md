# Resource EHDS Logical Information Models



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "xtehr.eu.ehds.models",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/ImplementationGuide/xtehr.eu.ehds.models",
  "version" : "1.0.0",
  "name" : "EHDSModels",
  "title" : "EHDS Logical Information Models",
  "status" : "active",
  "date" : "2026-03-29T17:52:51+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "EHDS Logical Information Models",
  "packageId" : "xtehr.eu.ehds.models",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "grouping" : [{
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
      "description" : "Information models for implementing EEHRxF Discharge report under EHDS. Format based on ISO 13972 \"Health informatics — Clinical information models — Characteristics, structures and requirements.\""
    },
    {
      "id" : "EHDSCommonLogicalModels",
      "name" : "EHDS Common Logical Models",
      "description" : "Information models shared across different priority categories. Additional requirements may be provided below in the Obligations section."
    },
    {
      "id" : "EHDSObligations",
      "name" : "EHDS Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. These obligations are default obligations across use cases."
    },
    {
      "id" : "EHDSPatientSummaryObligations",
      "name" : "EHDS Patient Summary Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. For other related models, general obligations apply."
    },
    {
      "id" : "EHDSPrescribingDispensingObligations",
      "name" : "EHDS Prescribing and Dispensing Domain Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. These obligations apply to prescribing and dispensing systems (including repositories). For other related models, general obligations apply."
    },
    {
      "id" : "EHDSLaboratoryObligations",
      "name" : "EHDS Laboratory Domain Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. These obligations apply to laboratory domain use cases."
    },
    {
      "id" : "EHDSImagingObligations",
      "name" : "EHDS Imaging Domain Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. These obligations apply to discharge report domain use cases."
    },
    {
      "id" : "EHDSDischargeReportObligations",
      "name" : "EHDS Discharge Report Domain Obligations",
      "description" : "Information models derived from EHDS information models including obligations for data elements. These obligations apply to discharge report domain use cases."
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAddress"
      },
      "name" : "Address model",
      "description" : "EHDS refined base model for Address structure",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAdministeredDosage"
      },
      "name" : "Administered dosage model",
      "description" : "Model contains elements needed for registering an individual medication administration. It is derived from the full dosage regimen model in order to keep the consistency between the shared elements.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAdvanceDirective"
      },
      "name" : "Advance directive model",
      "description" : "Healthcare directives concerning life or after life wishes of the patient",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAdvanceDirectiveObligations"
      },
      "name" : "Advance directive obligations",
      "description" : "Obligations for the logical model for advance directive.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAlert"
      },
      "name" : "Alert model",
      "description" : "A statement higlighting a fact about the patient that requires clinical attention to ensure safety and prevent adverse outcomes.\nExample 1: intolerance to aspirin due to gastrointestinal bleeding.\nExample 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)\nExample 3: the patient has a rare disease that requires special treatment\nExample 4: Airway Alert / Difficult Intubation\nExample 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.\nExample 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.\nExample 7: participation in a clinical trial that has to be taken into account in a healthcare contact.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAlertObligations"
      },
      "name" : "Alert obligations",
      "description" : "Obligations for the logical model for alert.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAllergyIntolerance"
      },
      "name" : "Allergy intolerance model",
      "description" : "Model for allergy or intolerance.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAllergyIntoleranceObligations"
      },
      "name" : "AllergyIntolerance obligations",
      "description" : "Obligations for the logical model for allergy intolerance.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSAttachment"
      },
      "name" : "Attachment model",
      "description" : "This model is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSBodyStructureLaboratoryObligations"
      },
      "name" : "Body structure laboratory specific obligations",
      "description" : "Obligations for the logical model of body structure in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSBodyStructure"
      },
      "name" : "Body structure model",
      "description" : "Model for body structure",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSCarePlan"
      },
      "name" : "Care plan model",
      "description" : "Simplified model for care plan. The model includes minimal information and is not designed to cover the full functionality of care plans. The model is applicable to different domains.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSConditionLaboratoryObligations"
      },
      "name" : "Condition laboratory specific obligations",
      "description" : "Obligations for the logical model of condition in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSCondition"
      },
      "name" : "Condition model",
      "description" : "Model for a clinical condition, problem, diagnosis, or other event, situation, or issue that has risen to a level of concern.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSConditionObligations"
      },
      "name" : "Condition obligations",
      "description" : "Obligations for the logical model for condition.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/actor-consumer"
      },
      "name" : "Consumer",
      "description" : "A system that receives electronic health data originating from another system and processes or displays that data. In this role, the system is responsible for ingesting and validating the received data and for preserving the meaning, structure, and associated metadata of the information in accordance with the applicable Consumer obligations, ensuring correct interpretation and presentation to end users or other systems.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSCurrentPregnancyObligations"
      },
      "name" : "Current pregnancy obligations",
      "description" : "Obligations for the logical model for current pregnancy.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSCurrentPregnancy"
      },
      "name" : "Current pregnancy status model",
      "description" : "Current pregnancy status",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDataSet"
      },
      "name" : "DataSet model",
      "description" : "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDeviceLaboratoryObligations"
      },
      "name" : "Device laboratory specific obligations",
      "description" : "Obligations for the logical model of device in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDevice"
      },
      "name" : "Device model",
      "description" : "Model for device information",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDeviceObligations"
      },
      "name" : "Device obligations",
      "description" : "Obligations for the logical model for device.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDeviceUse"
      },
      "name" : "Device use model",
      "description" : "Model for information about the use of a device in the care of patient.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDeviceUseObligations"
      },
      "name" : "Device use obligations",
      "description" : "Obligations for the logical model for device use.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDischargeReport"
      },
      "name" : "Discharge Report model",
      "description" : "A generic, flexible model for any kind of discharge report. Different types of encounters may require adding relevant sections and elements, or omitting irrelevant ones, depending on their data needs.",
      "isExample" : false,
      "groupingId" : "EHDSHdrLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDischargeReportObligations"
      },
      "name" : "Discharge Report Obligations",
      "description" : "Obligations for the logical model of discharge report.",
      "isExample" : false,
      "groupingId" : "EHDSDischargeReportObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDocument"
      },
      "name" : "Document model",
      "description" : "Model for common document data elements, including the common header. Data relevant to document type and its content for administrative and searching purposes.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDosage"
      },
      "name" : "Dosage model",
      "description" : "The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSDosageObligations"
      },
      "name" : "Dosage obligations",
      "description" : "Obligations for the logical model for dosage.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSEncounter"
      },
      "name" : "Encounter model",
      "description" : "The model provides a structured way to capture information about a patient’s interaction with a healthcare service. It enables recording details related to individual encounters and supports linking closely related encounters when needed. Tracking broader or longer episodes of care that extend beyond individual encounters is outside the scope of this model.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSEndpoint"
      },
      "name" : "Endpoint model",
      "description" : "Model covers technical details of an endpoint that can be used for electronic services",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSHealthProfessionalLaboratoryObligations"
      },
      "name" : "Health professional laboratory specific obligations",
      "description" : "Obligations for the logical model of health professional in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSHealthProfessional"
      },
      "name" : "Health professional model",
      "description" : "Model for information about a health professional.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSHealthProfessionalObligations"
      },
      "name" : "Health professional obligations",
      "description" : "Obligations for the logical model for health professional.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSHumanName"
      },
      "name" : "Human name model",
      "description" : "Model for human name",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImagingReport"
      },
      "name" : "Imaging report model",
      "description" : "Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice.",
      "isExample" : false,
      "groupingId" : "EHDSImagingLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImagingReportObligations"
      },
      "name" : "Imaging Report Obligations",
      "description" : "Obligations for the logical model of imaging report.",
      "isExample" : false,
      "groupingId" : "EHDSImagingObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImagingStudy"
      },
      "name" : "Imaging study model",
      "description" : "Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images.",
      "isExample" : false,
      "groupingId" : "EHDSImagingLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImagingStudyObligations"
      },
      "name" : "Imaging Study Obligations",
      "description" : "Obligations for the logical model of imaging study.",
      "isExample" : false,
      "groupingId" : "EHDSImagingObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImmunisationLaboratoryObligations"
      },
      "name" : "Immunisation laboratory specific obligations",
      "description" : "Obligations for the logical model of immunisation in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImmunisation"
      },
      "name" : "Immunisation model",
      "description" : "Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSImmunisationObligations"
      },
      "name" : "Immunisation obligations",
      "description" : "Obligations for the logical model for immunisation.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSLaboratoryObservation"
      },
      "name" : "Laboratory observation model",
      "description" : "Model for observation performed by laboratory",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSLaboratoryObservationObligations"
      },
      "name" : "Laboratory observation obligations",
      "description" : "Obligations for the logical model of laboratory observation",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSLaboratoryReport"
      },
      "name" : "Laboratory report model",
      "description" : "Laboratory result report model.",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSLaboratoryReportObligations"
      },
      "name" : "Laboratory Report Obligations",
      "description" : "Obligations for the logical model of laboratory report",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSLocation"
      },
      "name" : "Location model",
      "description" : "Model for details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationObligations"
      },
      "name" : "Medication  model obligations",
      "description" : "Obligations for the logical model for medication.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationAdministrationLaboratoryObligations"
      },
      "name" : "Medication Administration laboratory specific obligations",
      "description" : "Obligations for the logical model of medication administration in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationAdministration"
      },
      "name" : "Medication administration model",
      "description" : "The model covers details about single medication administrations within the scope of imaging and laboratory procedures.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationDispense"
      },
      "name" : "Medication dispense model",
      "description" : "Logical model for medication dispensation (based on a request and dispensed in a pharmacy). Implementers should take into account, if allowed and needed, the calculation of remaining dispensable product based on this information.",
      "isExample" : false,
      "groupingId" : "EHDSPrescriptionDispenseLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationDispenseObligations"
      },
      "name" : "Medication dispense model obligations",
      "description" : "Obligations for the logical model for medication dispense for dispensing/pharmacy systems (producer) and prescribing systems or prescription repositories(consumer).",
      "isExample" : false,
      "groupingId" : "EHDSPrescribingDispensingObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationLaboratoryObligations"
      },
      "name" : "Medication laboratory specific obligations",
      "description" : "Obligations for the logical model of medication in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedication"
      },
      "name" : "Medication model",
      "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and administrations. Each of those may have different restrictions in a FHIR profile. The model is suitable for generic/virtual medications as well as branded/real products. The model aims to have basic alignment with ISO IDMP but it does not cover the full complexity needed for medication registries.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationPrescription"
      },
      "name" : "Medication prescription model",
      "description" : "Logical model for medication prescription. A prescription contains one or more prescription items (medications).",
      "isExample" : false,
      "groupingId" : "EHDSPrescriptionDispenseLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationPrescriptionObligations"
      },
      "name" : "Medication prescription model obligations",
      "description" : "Obligations for the logical model for medication prescription body for prescribing systems (producer) and dispensing systems (consumer).",
      "isExample" : false,
      "groupingId" : "EHDSPrescribingDispensingObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationUseLaboratoryObligations"
      },
      "name" : "Medication Use laboratory specific obligations",
      "description" : "Obligations for the logical model of medication use in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationUse"
      },
      "name" : "Medication use model",
      "description" : "Statement about a single medication as part of a medication summary.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationAdministrationObligations"
      },
      "name" : "MedicationAdministration obligations",
      "description" : "Obligations for the logical model for medication administration.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSMedicationUseObligations"
      },
      "name" : "MedicationUse obligations",
      "description" : "Obligations for the logical model for medication use.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSObservation"
      },
      "name" : "Observation model",
      "description" : "Model for information about an oservation and its results.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSObservationObligations"
      },
      "name" : "Observation Obligations",
      "description" : "Obligations for the logical model of general observation",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSOrganisationLaboratoryObligations"
      },
      "name" : "Organisation laboratory specific obligations",
      "description" : "Obligations for the logical model of organisation in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSOrganisation"
      },
      "name" : "Organisation model",
      "description" : "Model for information about an organisation",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSOrganisationObligations"
      },
      "name" : "Organisation obligations",
      "description" : "Obligations for the logical model for organisation.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPatientLaboratoryObligations"
      },
      "name" : "Patient laboratory specific obligations",
      "description" : "Obligations for the logical model of patient in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPatient"
      },
      "name" : "Patient model",
      "description" : "Model for information about a patient (subject of care).",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPatientObligations"
      },
      "name" : "Patient obligations",
      "description" : "Obligations for the logical model for patient.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPatientSummary"
      },
      "name" : "Patient summary model",
      "description" : "The model is a structured document designed to provide an overview of a patient’s most important health information. The model aims to be compatible with the ISO International Patient Summary standard.",
      "isExample" : false,
      "groupingId" : "EHDSPsLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPatientSummaryObligations"
      },
      "name" : "Patient summary obligations",
      "description" : "Obligations for the logical model for patient summary.",
      "isExample" : false,
      "groupingId" : "EHDSPatientSummaryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSPregnancyHistory"
      },
      "name" : "Pregnancy history model",
      "description" : "Pregnancy history for one pregnancy",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSProcedureLaboratoryObligations"
      },
      "name" : "Procedure laboratory specific obligations",
      "description" : "Obligations for the logical model of procedure in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSProcedure"
      },
      "name" : "Procedure model",
      "description" : "The model provides basic information about a procedure performed on or for a patient. This includes surgical, therapeutic, and diagnostic procedures, as well as specimen collection. The model does not cover procedures in the planning stage.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSProcedureObligations"
      },
      "name" : "Procedure obligations",
      "description" : "Obligations for the logical model for procedure.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/actor-producer"
      },
      "name" : "Producer",
      "description" : "A system that generates or makes available structured electronic health data for exchange. In this role, the system is responsible for being technically capable of populating the relevant data elements in accordance with the applicable “able-to-populate” obligations and for associating the required metadata, such as authorship, provenance, status, and temporal information, before the data are made available to downstream systems.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSRelatedPersonLaboratoryObligations"
      },
      "name" : "Related person laboratory specific obligations",
      "description" : "Obligations for the logical model of related person in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSRelatedPerson"
      },
      "name" : "Related person model",
      "description" : "Model for information about a guardian or other person related to the subject of care",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSRelatedPersonObligations"
      },
      "name" : "Related person obligations",
      "description" : "Obligations for the logical model for related person.",
      "isExample" : false,
      "groupingId" : "EHDSObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSServiceRequestLaboratoryObligations"
      },
      "name" : "Service request laboratory specific obligations",
      "description" : "Obligations for the logical model of service request in the scope of laboratory use case",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSServiceRequest"
      },
      "name" : "Service request model",
      "description" : "The model covers details about a requested service or services. One order may include several requests.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSSpecimen"
      },
      "name" : "Specimen model",
      "description" : "Model for a specimen to be used for analysis",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSSpecimenLaboratoryObligations"
      },
      "name" : "Specimen Obligations",
      "description" : "Obligations for the logical model of specimen",
      "isExample" : false,
      "groupingId" : "EHDSLaboratoryObligations"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSTelecom"
      },
      "name" : "Telecom model",
      "description" : "Model for communication contact information.",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/EHDSTravelHistory"
      },
      "name" : "Travel history model",
      "description" : "Relevant information about the patient's recent travel history, for one visit",
      "isExample" : false,
      "groupingId" : "EHDSCommonLogicalModels"
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "background.html",
        "name" : "background.html",
        "title" : "Background",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "howto.html",
        "name" : "howto.html",
        "title" : "How to read this guide",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "datatypes.html",
        "name" : "datatypes.html",
        "title" : "Data types and references",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "authoring-process.html",
        "name" : "authoring-process.html",
        "title" : "Authoring rules",
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
        "sourceUrl" : "obligations.html",
        "name" : "obligations.html",
        "title" : "Obligations Framework",
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
        "title" : "Medical Test Results and Laboratory Report",
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
        "sourceUrl" : "downloads.html",
        "name" : "downloads.html",
        "title" : "Download",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "changes.html",
        "name" : "changes.html",
        "title" : "Change Log",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
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
      "value" : "release"
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
      "value" : "input/assets"
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
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "i18n-default-lang"
      },
      "value" : "en"
    }]
  }
}

```
