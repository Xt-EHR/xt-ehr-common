# Laboratory report model - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory report model**

## Logical Model: Laboratory report model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryReport | *Version*:0.2.0 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSLaboratoryReport |

 
EHDS refined base model for Laboratory result report 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/eu.ehds.models|current/StructureDefinition/EHDSLaboratoryReport)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSLaboratoryReport.csv), [Excel](StructureDefinition-EHDSLaboratoryReport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSLaboratoryReport",
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
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryReport",
  "version" : "0.2.0",
  "name" : "EHDSLaboratoryReport",
  "title" : "Laboratory report model",
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
  "description" : "EHDS refined base model for Laboratory result report",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryReport",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDocument",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSLaboratoryReport",
        "path" : "EHDSLaboratoryReport",
        "short" : "Laboratory report model",
        "definition" : "EHDS refined base model for Laboratory result report"
      },
      {
        "id" : "EHDSLaboratoryReport.header",
        "path" : "EHDSLaboratoryReport.header",
        "short" : "Laboratory Report header"
      },
      {
        "id" : "EHDSLaboratoryReport.header.eventType",
        "path" : "EHDSLaboratoryReport.header.eventType",
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSLaboratoryReport.healthInsuranceAndPaymentInformation",
        "path" : "EHDSLaboratoryReport.healthInsuranceAndPaymentInformation",
        "short" : "Health insurance and payment information",
        "definition" : "Health insurance and payment information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCoverage"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.intendedRecipient[x]",
        "path" : "EHDSLaboratoryReport.intendedRecipient[x]",
        "short" : "Intended recipient",
        "definition" : "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable",
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
        "id" : "EHDSLaboratoryReport.body",
        "path" : "EHDSLaboratoryReport.body",
        "short" : "Laboratory Report structured body",
        "definition" : "Laboratory Report structured body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation",
        "path" : "EHDSLaboratoryReport.body.orderInformation",
        "short" : "Order Information (Laboratory Result Report could respond to multiple test orders)",
        "definition" : "Order Information (Laboratory Result Report could respond to multiple test orders)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderId",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderId",
        "short" : "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders.",
        "definition" : "An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderDateAndTime",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderDateAndTime",
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
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderPlacer[x]",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderPlacer[x]",
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
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderReasonText",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderReasonText",
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
        "id" : "EHDSLaboratoryReport.body.orderInformation.orderReason[x]",
        "path" : "EHDSLaboratoryReport.body.orderInformation.orderReason[x]",
        "short" : "An explanation or justification for why this service is being requested in coded form.",
        "definition" : "An explanation or justification for why this service is being requested in coded form.",
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
        "id" : "EHDSLaboratoryReport.body.orderInformation.clinicalQuestion",
        "path" : "EHDSLaboratoryReport.body.orderInformation.clinicalQuestion",
        "short" : "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation.",
        "definition" : "Specification of clinical question (goal of the investigation) to be answered by the laboratory investigation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation",
        "short" : "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements.",
        "definition" : "Additional clinical information about the patient or specimen that may influence the services or their interpretations. This information includes diagnosis, clinical findings and other observations. In laboratory ordering these are typically referred to as 'ask at order entry questions (AOEs).' This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example, reporting the amount of inspired oxygen for blood gas measurements.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.observation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.observation",
        "short" : "Clinical findings and other observations.",
        "definition" : "Clinical findings and other observations.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.condition",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.condition",
        "short" : "Condition that may influence the service or result interpretation.",
        "definition" : "Condition that may influence the service or result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.medicationAdministration",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.medicationAdministration",
        "short" : "Medication administered before ordering the service.",
        "definition" : "Medication administered before ordering the service.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.sexForClinicalUse",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.sexForClinicalUse",
        "short" : "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population",
        "definition" : "A Sex Parameter for Clinical Use is a parameter that provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc.. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population",
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
        "id" : "EHDSLaboratoryReport.body.supportingInformation.vaccination",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.vaccination",
        "short" : "Vaccination history of the patient.",
        "definition" : "Vaccination history of the patient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSImmunisation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.body.supportingInformation.otherSupportingInformation",
        "path" : "EHDSLaboratoryReport.body.supportingInformation.otherSupportingInformation",
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
        "id" : "EHDSLaboratoryReport.specimen",
        "path" : "EHDSLaboratoryReport.specimen",
        "short" : "Specimen information",
        "definition" : "Specimen information",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.serviceRequest",
        "path" : "EHDSLaboratoryReport.serviceRequest",
        "short" : "Specification of requested service or services",
        "definition" : "Specification of requested service or services",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.resultData",
        "path" : "EHDSLaboratoryReport.resultData",
        "short" : "Laboratory report result data",
        "definition" : "Laboratory report result data",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.resultData.commentsInterpretationAndRecommendations",
        "path" : "EHDSLaboratoryReport.resultData.commentsInterpretationAndRecommendations",
        "short" : "Narrative Comments, such as a textual interpretation or advice accompanying the result report, for example.",
        "definition" : "Narrative Comments, such as a textual interpretation or advice accompanying the result report, for example.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Narrative"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.resultData.laboratoryTestResults",
        "path" : "EHDSLaboratoryReport.resultData.laboratoryTestResults",
        "short" : "Observation details (report could consist of multiple observations)",
        "definition" : "Observation details (report could consist of multiple observations)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryReport.attachments[x]",
        "path" : "EHDSLaboratoryReport.attachments[x]",
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
