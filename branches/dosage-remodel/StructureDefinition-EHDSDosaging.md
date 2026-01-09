# Dosaging model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosaging model**

## Logical Model: Dosaging model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging | *Version*:0.2.1 |
| Draft as of 2025-12-29 | *Computable Name*:EHDSDosaging |

 
Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case. 

**Usages:**

* Use this Logical Model: [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md) and [Medication statement model](StructureDefinition-EHDSMedicationStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDosaging)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDosaging.csv), [Excel](StructureDefinition-EHDSDosaging.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDosaging",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging",
  "version" : "0.2.1",
  "name" : "EHDSDosaging",
  "title" : "Dosaging model",
  "status" : "draft",
  "date" : "2025-12-29T14:15:11+00:00",
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
  "description" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDosaging",
        "path" : "EHDSDosaging",
        "short" : "Dosaging model",
        "definition" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case."
      },
      {
        "id" : "EHDSDosaging.renderedDosageInstruction",
        "path" : "EHDSDosaging.renderedDosageInstruction",
        "short" : "Full dosaging information as human-readable text",
        "definition" : "Full dosaging information as human-readable text",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails",
        "path" : "EHDSDosaging.dosageDetails",
        "short" : "Details of single dosaging scheme step",
        "definition" : "Details of single dosaging scheme step",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.patientInstruction",
        "path" : "EHDSDosaging.dosageDetails.patientInstruction",
        "short" : "Patient oriented instructions as free text for this dosaging step",
        "definition" : "Patient oriented instructions as free text for this dosaging step",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.doseAndRate",
        "path" : "EHDSDosaging.dosageDetails.doseAndRate",
        "short" : "Amount of medication administered per one dose (= one timing)",
        "definition" : "Amount of medication administered per one dose (= one timing)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.doseAndRate.dose[x]",
        "path" : "EHDSDosaging.dosageDetails.doseAndRate.dose[x]",
        "short" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "definition" : "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Range"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.doseAndRate.rate[x]",
        "path" : "EHDSDosaging.dosageDetails.doseAndRate.rate[x]",
        "short" : "Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
        "definition" : "Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat",
        "path" : "EHDSDosaging.dosageDetails.repeat",
        "short" : "Repetition of the administration.",
        "definition" : "Repetition of the administration.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.bounds",
        "path" : "EHDSDosaging.dosageDetails.repeat.bounds",
        "short" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
        "definition" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.bounds.duration",
        "path" : "EHDSDosaging.dosageDetails.repeat.bounds.duration",
        "short" : "Number of time units, e.g 10 days",
        "definition" : "Number of time units, e.g 10 days",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.bounds.period",
        "path" : "EHDSDosaging.dosageDetails.repeat.bounds.period",
        "short" : "Start and end date, 05.08.2023 - 10.08.2023",
        "definition" : "Start and end date, 05.08.2023 - 10.08.2023",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.duration",
        "path" : "EHDSDosaging.dosageDetails.repeat.duration",
        "short" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "definition" : "Duration of administration (e.g '5 minutes', '1 hour')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.frequency",
        "path" : "EHDSDosaging.dosageDetails.repeat.frequency",
        "short" : "Frequency of intake/administration (e.g 'three times a day')",
        "definition" : "Frequency of intake/administration (e.g 'three times a day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.frequency.numberOfTimes",
        "path" : "EHDSDosaging.dosageDetails.repeat.frequency.numberOfTimes",
        "short" : "Number of times per period (e.g '3 times')",
        "definition" : "Number of times per period (e.g '3 times')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.frequency.period",
        "path" : "EHDSDosaging.dosageDetails.repeat.frequency.period",
        "short" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "definition" : "Duration to which the frequency applies (e.g '... / 1 day')",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.dayOfWeek",
        "path" : "EHDSDosaging.dosageDetails.repeat.dayOfWeek",
        "short" : "The day of the week of administration, e.g Mon, Tue, etc",
        "definition" : "The day of the week of administration, e.g Mon, Tue, etc",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.timeOfDay",
        "path" : "EHDSDosaging.dosageDetails.repeat.timeOfDay",
        "short" : "Time of day of administration (e.g '10:00')",
        "definition" : "Time of day of administration (e.g '10:00')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "time"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.eventTime",
        "path" : "EHDSDosaging.dosageDetails.repeat.eventTime",
        "short" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
        "definition" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.repeat.eventTime.when",
        "path" : "EHDSDosaging.dosageDetails.repeat.eventTime.when",
        "short" : "Time period or event ('before meal', 'immediately', 'morning')",
        "definition" : "Time period or event ('before meal', 'immediately', 'morning')",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.asNeeded",
        "path" : "EHDSDosaging.dosageDetails.asNeeded",
        "short" : "Take as needed",
        "definition" : "Take as needed",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.bodySite",
        "path" : "EHDSDosaging.dosageDetails.bodySite",
        "short" : "Body site of administration",
        "definition" : "Body site of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosaging.dosageDetails.routeOfAdministration",
        "path" : "EHDSDosaging.dosageDetails.routeOfAdministration",
        "short" : "Route of administration",
        "definition" : "Route of administration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
