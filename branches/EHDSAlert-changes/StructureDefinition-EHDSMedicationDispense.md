# Medication dispense model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication dispense model**

## Logical Model: Medication dispense model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense | *Version*:0.2.1 |
| Draft as of 2026-01-05 | *Computable Name*:EHDSMedicationDispense |

 
Logical model for medication dispensation (based on request or independently) 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationDispense.csv), [Excel](StructureDefinition-EHDSMedicationDispense.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationDispense",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense",
  "version" : "0.2.1",
  "name" : "EHDSMedicationDispense",
  "title" : "Medication dispense model",
  "status" : "draft",
  "date" : "2026-01-05T17:31:43+00:00",
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
  "description" : "Logical model for medication dispensation (based on request or independently)",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationDispense",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationDispense",
        "path" : "EHDSMedicationDispense",
        "short" : "Medication dispense model",
        "definition" : "Logical model for medication dispensation (based on request or independently)"
      },
      {
        "id" : "EHDSMedicationDispense.header.authorship.datetime",
        "path" : "EHDSMedicationDispense.header.authorship.datetime",
        "short" : "Date and time of issuing dispense record"
      },
      {
        "id" : "EHDSMedicationDispense.dispenseLocation",
        "path" : "EHDSMedicationDispense.dispenseLocation",
        "short" : "Location of dispense",
        "definition" : "Location of dispense",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.receiver[x]",
        "path" : "EHDSMedicationDispense.receiver[x]",
        "short" : "Identification of the person who received the dispensed medication, especially when it was not the patient",
        "definition" : "Identification of the person who received the dispensed medication, especially when it was not the patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.relatedRequest",
        "path" : "EHDSMedicationDispense.relatedRequest",
        "short" : "Identifier of the prescription or prescription item the dispense is related to",
        "definition" : "Identifier of the prescription or prescription item the dispense is related to",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.medication",
        "path" : "EHDSMedicationDispense.medication",
        "short" : "Exact dispensed product",
        "definition" : "Exact dispensed product",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.dispensedQuantity",
        "path" : "EHDSMedicationDispense.dispensedQuantity",
        "short" : "Number of dispensed packages if the pack size is known, or number of smaller items/units",
        "definition" : "Number of dispensed packages if the pack size is known, or number of smaller items/units",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM, EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationDispense.timeOfDispensation",
        "path" : "EHDSMedicationDispense.timeOfDispensation",
        "short" : "Date and time of dispensation. When not present, the time of dispensation is assumed to be the time of issuing dispense record.",
        "definition" : "Date and time of dispensation. When not present, the time of dispensation is assumed to be the time of issuing dispense record.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.substitution",
        "path" : "EHDSMedicationDispense.substitution",
        "short" : "Indicated whether substitution was made by the dispenser",
        "definition" : "Indicated whether substitution was made by the dispenser",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.substitution.substitutionOccurred",
        "path" : "EHDSMedicationDispense.substitution.substitutionOccurred",
        "short" : "Indicated whether substitution was made by the dispenser",
        "definition" : "Indicated whether substitution was made by the dispenser",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.substitution.type",
        "path" : "EHDSMedicationDispense.substitution.type",
        "short" : "What kind of substitution was made by the dispenser",
        "definition" : "What kind of substitution was made by the dispenser",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.substitution.reason",
        "path" : "EHDSMedicationDispense.substitution.reason",
        "short" : "Reason why the substitution was made or why the expected substitution was not made.",
        "definition" : "Reason why the substitution was made or why the expected substitution was not made.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.dosageInstructions",
        "path" : "EHDSMedicationDispense.dosageInstructions",
        "short" : "Dosaging and administration instructions",
        "definition" : "Dosaging and administration instructions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging"
          }
        ]
      },
      {
        "id" : "EHDSMedicationDispense.comment",
        "path" : "EHDSMedicationDispense.comment",
        "short" : "Additional information or comments",
        "definition" : "Additional information or comments",
        "min" : 0,
        "max" : "*",
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
