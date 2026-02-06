# Medication administration model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication administration model**

## Logical Model: Medication administration model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration | *Version*:0.2.1 |
| Draft as of 2026-02-02 | *Computable Name*:EHDSMedicationAdministration |

 
EHDS refined base model for a single medication administration 

**Usages:**

* Use this Logical Model: [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationAdministration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationAdministration.csv), [Excel](StructureDefinition-EHDSMedicationAdministration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationAdministration",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration",
  "version" : "0.2.1",
  "name" : "EHDSMedicationAdministration",
  "title" : "Medication administration model",
  "status" : "draft",
  "date" : "2026-02-02T09:08:36+00:00",
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
  "description" : "EHDS refined base model for a single medication administration",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationAdministration",
        "path" : "EHDSMedicationAdministration",
        "short" : "Medication administration model",
        "definition" : "EHDS refined base model for a single medication administration"
      },
      {
        "id" : "EHDSMedicationAdministration.header.status",
        "path" : "EHDSMedicationAdministration.header.status",
        "short" : "Status of the administration (e.g. completed, not-done, on-hold, in-progress, unknown)",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MedicationAdimnistrationStatusCodes"
        }
      },
      {
        "id" : "EHDSMedicationAdministration.medication",
        "path" : "EHDSMedicationAdministration.medication",
        "short" : "Administered medication",
        "definition" : "Administered medication",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.occurrence[x]",
        "path" : "EHDSMedicationAdministration.occurrence[x]",
        "short" : "Specific date/time or interval of time during which the administration took place (or did not take place)",
        "definition" : "Specific date/time or interval of time during which the administration took place (or did not take place)",
        "min" : 1,
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
        "id" : "EHDSMedicationAdministration.reason[x]",
        "path" : "EHDSMedicationAdministration.reason[x]",
        "short" : "Condition or observation that supports why the medication was administered",
        "definition" : "Condition or observation that supports why the medication was administered",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.note",
        "path" : "EHDSMedicationAdministration.note",
        "short" : "Textual information about the administration",
        "definition" : "Textual information about the administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationAdministration.dosage",
        "path" : "EHDSMedicationAdministration.dosage",
        "short" : "Details of how medication was taken",
        "definition" : "Details of how medication was taken",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage"
          }
        ]
      }
    ]
  }
}

```
