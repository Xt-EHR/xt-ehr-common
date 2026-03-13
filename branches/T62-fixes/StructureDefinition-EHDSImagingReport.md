# Imaging report model - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Imaging report model**

## Logical Model: Imaging report model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImagingReport | *Version*:0.2.0 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSImagingReport |

 
Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice. 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/eu.ehds.models|current/StructureDefinition/EHDSImagingReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSImagingReport.csv), [Excel](StructureDefinition-EHDSImagingReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSImagingReport",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImagingReport",
  "version" : "0.2.0",
  "name" : "EHDSImagingReport",
  "title" : "Imaging report model",
  "status" : "draft",
  "date" : "2026-01-23T07:00:19+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://Xt-EHR.eu"
        }
      ]
    }
  ],
  "description" : "Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImagingReport",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSImagingReport",
        "path" : "EHDSImagingReport",
        "short" : "Imaging report model",
        "definition" : "Imaging report reflects the observations and interpretations of one or more imaging studies, contains elements such as the reason why the study is requested, relevant contextual medical information, the modality used to acquire images and its settings, procedures and body localisations that were used, a description of the observations and findings, exposure information, conclusion and advice."
      },
      {
        "id" : "EHDSImagingReport.header",
        "path" : "EHDSImagingReport.header",
        "short" : "Imaging Report header"
      },
      {
        "id" : "EHDSImagingReport.header.authorship",
        "path" : "EHDSImagingReport.header.authorship",
        "short" : "Report authoring details"
      },
      {
        "id" : "EHDSImagingReport.header.authorship.author[x]",
        "path" : "EHDSImagingReport.header.authorship.author[x]",
        "short" : "Author by whom the document was/were authored. Multiple authors could be provided."
      },
      {
        "id" : "EHDSImagingReport.header.status",
        "path" : "EHDSImagingReport.header.status",
        "short" : "Status of the document"
      },
      {
        "id" : "EHDSImagingReport.header.documentType",
        "path" : "EHDSImagingReport.header.documentType",
        "short" : "Type of document (code for medical imaging report)"
      },
      {
        "id" : "EHDSImagingReport.header.accessionNumber",
        "path" : "EHDSImagingReport.header.accessionNumber",
        "short" : "Accession number - an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study(ies) and related imaging report(s). As it is prefixed by the registration authority it is a globally unique ID, usable both nationally and cross-border.",
        "definition" : "Accession number - an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study(ies) and related imaging report(s). As it is prefixed by the registration authority it is a globally unique ID, usable both nationally and cross-border.",
        "requirements" : "eHN Guideline IMG (v1.1): A.1.8.11",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.header.healthInsuranceAndPaymentInformation",
        "path" : "EHDSImagingReport.header.healthInsuranceAndPaymentInformation",
        "short" : "Health insurance and payment information",
        "definition" : "Health insurance and payment information",
        "requirements" : "eHN Guideline IMG (v1.1): A.1.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCoverage"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.header.intendedRecipient[x]",
        "path" : "EHDSImagingReport.header.intendedRecipient[x]",
        "short" : "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable",
        "definition" : "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable",
        "requirements" : "eHN Guideline IMG (v1.1): A.1.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSRelatedPerson"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body",
        "path" : "EHDSImagingReport.body",
        "short" : "Imaging Report structured body",
        "definition" : "Imaging Report structured body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation",
        "path" : "EHDSImagingReport.body.orderInformation",
        "short" : "Order Information (Imaging Result Report could respond to multiple orders).",
        "definition" : "Order Information (Imaging Result Report could respond to multiple orders).",
        "requirements" : "eHN Guideline IMG (v1.1): A.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.orderId",
        "path" : "EHDSImagingReport.body.orderInformation.orderId",
        "short" : "Identifier(s) of the imaging service order.",
        "definition" : "Identifier(s) of the imaging service order.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.orderDateAndTime",
        "path" : "EHDSImagingReport.body.orderInformation.orderDateAndTime",
        "short" : "Date and time of the order placement.",
        "definition" : "Date and time of the order placement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.orderPlacer[x]",
        "path" : "EHDSImagingReport.body.orderInformation.orderPlacer[x]",
        "short" : "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself.",
        "definition" : "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.orderReasonText",
        "path" : "EHDSImagingReport.body.orderInformation.orderReasonText",
        "short" : "An explanation or justification for why this service is being requested in textual form.",
        "definition" : "An explanation or justification for why this service is being requested in textual form.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.orderReason[x]",
        "path" : "EHDSImagingReport.body.orderInformation.orderReason[x]",
        "short" : "An explanation or justification for why this service is being requested in coded or structured form.",
        "definition" : "An explanation or justification for why this service is being requested in coded or structured form.",
        "requirements" : "eHN Guideline IMG (v1.1): A.3.1, A3.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSImagingReport.body.orderInformation.clinicalQuestion",
        "path" : "EHDSImagingReport.body.orderInformation.clinicalQuestion",
        "short" : "Specification of clinical question (goal of the investigation) to be answered by the imaging investigation.",
        "definition" : "Specification of clinical question (goal of the investigation) to be answered by the imaging investigation.",
        "requirements" : "eHN Guideline IMG (v1.1): A.3.3",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation",
        "path" : "EHDSImagingReport.body.supportingInformation",
        "short" : "Additional clinical information about the patient or specimen that may affect service delivery or interpretation.",
        "definition" : "This information includes diagnosis, clinical findings and other observations. This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order.  For example, reporting the metal implants present in patient's body.",
        "requirements" : "eHN Guideline IMG (v1.1): A3.2?",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.observation",
        "path" : "EHDSImagingReport.body.supportingInformation.observation",
        "short" : "Clinical findings and other observations (e.g., height and weights of the patient).",
        "definition" : "Clinical findings and other observations (e.g., height and weights of the patient).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.condition",
        "path" : "EHDSImagingReport.body.supportingInformation.condition",
        "short" : "Conditions that may influence the service or result interpretation.",
        "definition" : "Conditions that may influence the service or result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.medicationAdministration",
        "path" : "EHDSImagingReport.body.supportingInformation.medicationAdministration",
        "short" : "Medication administered before ordering the service specifically for this procedure.",
        "definition" : "Medication administered before ordering the service specifically for this procedure.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.devices",
        "path" : "EHDSImagingReport.body.supportingInformation.devices",
        "short" : "List of implants or devices that affect the course of the examination or its interpretation (e.g. metal implants).",
        "definition" : "List of implants or devices that affect the course of the examination or its interpretation (e.g. metal implants).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.pregnancyStatus",
        "path" : "EHDSImagingReport.body.supportingInformation.pregnancyStatus",
        "short" : "Pregnancy status when the imaging examination was performed (e.g., pregnant, not pregnant, unknown).",
        "definition" : "Pregnancy status when the imaging examination was performed (e.g., pregnant, not pregnant, unknown).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCurrentPregnancy"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.sexForClinicalUse",
        "path" : "EHDSImagingReport.body.supportingInformation.sexForClinicalUse",
        "short" : "Sex parameter for clinical use - provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population.",
        "definition" : "Sex parameter for clinical use - provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 sex-parameter-for-clinical-use"
        }
      },
      {
        "id" : "EHDSImagingReport.body.supportingInformation.otherSupportingInformation",
        "path" : "EHDSImagingReport.body.supportingInformation.otherSupportingInformation",
        "short" : "Any other type of relevant supporting information",
        "definition" : "Any other type of relevant supporting information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Resource"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.specimen",
        "path" : "EHDSImagingReport.body.specimen",
        "short" : "Specimen information. Note: A specimen (not attached to a body) can be used for diagnostic, forensic and medical research purposes.",
        "definition" : "Specimen information. Note: A specimen (not attached to a body) can be used for diagnostic, forensic and medical research purposes.",
        "requirements" : "eHN Guideline IMG (v1.1): A.4",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.serviceRequest",
        "path" : "EHDSImagingReport.body.serviceRequest",
        "short" : "Specification of requested service(s).",
        "definition" : "Specification of requested service(s).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.exposureInformation",
        "path" : "EHDSImagingReport.body.exposureInformation",
        "short" : "Information on total exposure to ionising radiation. This information is required by regulations in several EU countries.",
        "definition" : "Information on total exposure to ionising radiation. This information is required by regulations in several EU countries.",
        "requirements" : "eHN Guideline IMG (v1.1): B.1.4.4, Article 2 Imaging report definition",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.exposureInformation.effectiveDose",
        "path" : "EHDSImagingReport.body.exposureInformation.effectiveDose",
        "short" : "Effective dose - sum of equivalent doses to all organs, from external and/or internal exposures, each adjusted to account for the sensitivity of the organ to radiation. [mSv]",
        "definition" : "Effective dose - sum of equivalent doses to all organs, from external and/or internal exposures, each adjusted to account for the sensitivity of the organ to radiation. [mSv]",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM (for units)"
        }
      },
      {
        "id" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation",
        "path" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation",
        "short" : "Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv].",
        "definition" : "Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv].",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation.equivalentDose",
        "path" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation.equivalentDose",
        "short" : "Equivalent dose is a measure of the radiation dose to tissue where an attempt has been made to allow for the different relative biological effects of different types of ionizing radiation. Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv].",
        "definition" : "Equivalent dose is a measure of the radiation dose to tissue where an attempt has been made to allow for the different relative biological effects of different types of ionizing radiation. Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv].",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM (for units)"
        }
      },
      {
        "id" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation.tissueType",
        "path" : "EHDSImagingReport.body.exposureInformation.equivalentDoseInformation.tissueType",
        "short" : "Type of the tissue for which do dosage was enumerated.",
        "definition" : "Type of the tissue for which do dosage was enumerated.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport",
        "path" : "EHDSImagingReport.body.examinationReport",
        "short" : "Examination report content.",
        "definition" : "Examination report content.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.modality",
        "path" : "EHDSImagingReport.body.examinationReport.modality",
        "short" : "Imaging modality (or modalities) used during imaging investigation (DICOM CID029).",
        "definition" : "Imaging modality (or modalities) used during imaging investigation (DICOM CID029).",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.1.1",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "DICOM Modality"
        }
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.bodyPart",
        "path" : "EHDSImagingReport.body.examinationReport.bodyPart",
        "short" : "All body parts investigated",
        "definition" : "All body parts investigated",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.1.6",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.imagingProcedures",
        "path" : "EHDSImagingReport.body.examinationReport.imagingProcedures",
        "short" : "Imaging procedure performed during imaging study.",
        "definition" : "Imaging procedure performed during imaging study.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.1.2-A.5.1.9",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.medication",
        "path" : "EHDSImagingReport.body.examinationReport.medication",
        "short" : "Information about medication administered (contrast, sedation, stress agents), etc.",
        "definition" : "Information about medication administered (contrast, sedation, stress agents), etc.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.adverseReaction",
        "path" : "EHDSImagingReport.body.examinationReport.adverseReaction",
        "short" : "Adverse reactions manifested during imaging investigation.",
        "definition" : "Adverse reactions manifested during imaging investigation.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSAllergyIntolerance"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.resultData",
        "path" : "EHDSImagingReport.body.examinationReport.resultData",
        "short" : "Imaging report result data",
        "definition" : "Imaging report result data",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.4",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.resultData.resultText",
        "path" : "EHDSImagingReport.body.examinationReport.resultData.resultText",
        "short" : "Comments and narrative representation of the observation results and findings.",
        "definition" : "Comments and narrative representation of the observation results and findings.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.resultData.observationResults",
        "path" : "EHDSImagingReport.body.examinationReport.resultData.observationResults",
        "short" : "Observation details (report could consist of multiple observations)",
        "definition" : "Observation details (report could consist of multiple observations)",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.4.1, A.5.4.3",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.conclusion",
        "path" : "EHDSImagingReport.body.examinationReport.conclusion",
        "short" : "A concise and clinically contextualised summary including interpretation/impression of the diagnostic report.",
        "definition" : "A concise and clinically contextualised summary including interpretation/impression of the diagnostic report.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.5",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.conclusion.impression",
        "path" : "EHDSImagingReport.body.examinationReport.conclusion.impression",
        "short" : "Narrative description of the clinical conclusion (impression).",
        "definition" : "Narrative description of the clinical conclusion (impression).",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.5.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.examinationReport.conclusion.conditionOrFinding[x]",
        "path" : "EHDSImagingReport.body.examinationReport.conclusion.conditionOrFinding[x]",
        "short" : "Condition or finding from imaging investigation.",
        "definition" : "Condition or finding from imaging investigation.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.5.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.recommendation",
        "path" : "EHDSImagingReport.body.recommendation",
        "short" : "Recommendations for additional imaging tests or other actions",
        "definition" : "Recommendations for additional imaging tests or other actions",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.6",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.recommendation.description",
        "path" : "EHDSImagingReport.body.recommendation.description",
        "short" : "Narrative description of the recommended activities including additional test, medication etc.",
        "definition" : "Narrative description of the recommended activities including additional test, medication etc.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.6.1",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.recommendation.carePlan",
        "path" : "EHDSImagingReport.body.recommendation.carePlan",
        "short" : "A complex and structured information about recommended goals, activities and objectives in the form of one or more formal care plan.",
        "definition" : "A complex and structured information about recommended goals, activities and objectives in the form of one or more formal care plan.",
        "requirements" : "eHN Guideline IMG (v1.1): A.5.6.2",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCarePlan"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.body.comparisonStudy",
        "path" : "EHDSImagingReport.body.comparisonStudy",
        "short" : "Documentation (reference) of a prior Imaging Report to which the current images were compared.",
        "definition" : "Documentation (reference) of a prior Imaging Report to which the current images were compared.",
        "requirements" : "eHN Guideline IMG (v1.1): A.7",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImagingReport"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.dicomStudyMetadata",
        "path" : "EHDSImagingReport.dicomStudyMetadata",
        "short" : "Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.",
        "definition" : "Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities.",
        "requirements" : "eHN Guideline IMG (v1.1): A.6",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImagingStudy"
          }
        ]
      },
      {
        "id" : "EHDSImagingReport.attachments[x]",
        "path" : "EHDSImagingReport.attachments[x]",
        "short" : "Report attachments data elements",
        "definition" : "Report attachments data elements",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSAttachment"
          },
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSMedia"
          }
        ]
      }
    ]
  }
}

```
