# Medication use model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication use model**

## Logical Model: Medication use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse | *Version*:0.2.1 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSMedicationUse |

 
Statement about usage of a medication: this can be a more generic statement like an entry in medication summary, or a documentation of a single administration. When documenting a single administration fact, further restrictions may apply (e.g. no repeats in dosaging information) 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationUse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationUse.csv), [Excel](StructureDefinition-EHDSMedicationUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationUse",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse",
  "version" : "0.2.1",
  "name" : "EHDSMedicationUse",
  "title" : "Medication use model",
  "status" : "draft",
  "date" : "2026-01-23T09:50:12+00:00",
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
  "description" : "Statement about usage of a medication: this can be a more generic statement like an entry in medication summary, or a documentation of a single administration. When documenting a single administration fact, further restrictions may apply (e.g. no repeats in dosaging information)",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationUse",
        "path" : "EHDSMedicationUse",
        "short" : "Medication use model",
        "definition" : "Statement about usage of a medication: this can be a more generic statement like an entry in medication summary, or a documentation of a single administration. When documenting a single administration fact, further restrictions may apply (e.g. no repeats in dosaging information)"
      },
      {
        "id" : "EHDSMedicationUse.header.status",
        "path" : "EHDSMedicationUse.header.status",
        "short" : "Status of actual administration of the medicine (administration status or adherence, according to the use case)",
        "requirements" : "MyHealth@EU",
        "binding" : {
          "strength" : "preferred",
          "description" : "For medication lists: HL7 MedicationStatement Adherence Codes (status of the exchanged statement record is assumed to be 'recorded'). For single administrations: HL7 MedicationAdministration Status Codes."
        }
      },
      {
        "id" : "EHDSMedicationUse.medication",
        "path" : "EHDSMedicationUse.medication",
        "short" : "Describes the medicinal product. Depending on the use case, it may be a generic description of medication type, or a specific instance.",
        "definition" : "Describes the medicinal product. Depending on the use case, it may be a generic description of medication type, or a specific instance.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.reason[x]",
        "path" : "EHDSMedicationUse.reason[x]",
        "short" : "Coded reason for the use of the medication (typically diagnosis or symptom)",
        "definition" : "Coded reason for the use of the medication (typically diagnosis or symptom)",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.reasonText",
        "path" : "EHDSMedicationUse.reasonText",
        "short" : "Reason for the use of the medication (diagnosis, observation, or a procedure) as free text.",
        "definition" : "Reason for the use of the medication (diagnosis, observation, or a procedure) as free text.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.dosageInstructions",
        "path" : "EHDSMedicationUse.dosageInstructions",
        "short" : "Details of how medication is/was taken or should be taken. Example: 1 tablet every 24h, for 10 days. For factual single administration tracking, all repeats are registered as separate instances.",
        "definition" : "Details of how medication is/was taken or should be taken. Example: 1 tablet every 24h, for 10 days. For factual single administration tracking, all repeats are registered as separate instances.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.timeOfUse[x]",
        "path" : "EHDSMedicationUse.timeOfUse[x]",
        "short" : "The time frame for which the medication use statement applies. In case of unbounded period (continuous therapy), the Period end element will be valued with an exceptional value.",
        "definition" : "The time frame for which the medication use statement applies. In case of unbounded period (continuous therapy), the Period end element will be valued with an exceptional value.",
        "requirements" : "eHN PS Guideline, ISO IPS, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.relatedRequest",
        "path" : "EHDSMedicationUse.relatedRequest",
        "short" : "Link to prescriptions related to this use statement",
        "definition" : "Link to prescriptions related to this use statement",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.relatedDispense",
        "path" : "EHDSMedicationUse.relatedDispense",
        "short" : "Link to a dispense record related to this use statement, not applicable to explicit administration records",
        "definition" : "Link to a dispense record related to this use statement, not applicable to explicit administration records",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense"
          }
        ]
      },
      {
        "id" : "EHDSMedicationUse.note",
        "path" : "EHDSMedicationUse.note",
        "short" : "Textual information about the intended use or administration of the medication",
        "definition" : "Textual information about the intended use or administration of the medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
