# Substance use model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Substance use model**

## Logical Model: Substance use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse | *Version*:0.2.1 |
| Draft as of 2025-12-23 | *Computable Name*:EHDSSubstanceUse |

 
Statement about using a substance (such as tobacco, alcohol, drugs, etc). 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSSubstanceUse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSubstanceUse.csv), [Excel](StructureDefinition-EHDSSubstanceUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSubstanceUse",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse",
  "version" : "0.2.1",
  "name" : "EHDSSubstanceUse",
  "title" : "Substance use model",
  "status" : "draft",
  "date" : "2025-12-23T07:26:44+00:00",
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
  "description" : "Statement about using a substance (such as tobacco, alcohol, drugs, etc).",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstanceUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSubstanceUse",
        "path" : "EHDSSubstanceUse",
        "short" : "Substance use model",
        "definition" : "Statement about using a substance (such as tobacco, alcohol, drugs, etc)."
      },
      {
        "id" : "EHDSSubstanceUse.header.status",
        "path" : "EHDSSubstanceUse.header.status",
        "short" : "Status of the patient’s alcohol use.",
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSSubstanceUse.period",
        "path" : "EHDSSubstanceUse.period",
        "short" : "Time period for which this observation about substance use is applicable",
        "definition" : "Time period for which this observation about substance use is applicable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSSubstanceUse.frequencyAndQuantity",
        "path" : "EHDSSubstanceUse.frequencyAndQuantity",
        "short" : "The extent of the patient’s alcohol use in units of alcohol per time period.",
        "definition" : "The extent of the patient’s alcohol use in units of alcohol per time period.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSSubstanceUse.frequencyAndQuantity.quantity",
        "path" : "EHDSSubstanceUse.frequencyAndQuantity.quantity",
        "short" : "Quantity (volume per time unit).",
        "definition" : "Quantity (volume per time unit).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSSubstanceUse.frequencyAndQuantity.period",
        "path" : "EHDSSubstanceUse.frequencyAndQuantity.period",
        "short" : "Time period of alcohol use.",
        "definition" : "Time period of alcohol use.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSSubstanceUse.substanceType",
        "path" : "EHDSSubstanceUse.substanceType",
        "short" : "Type of substance",
        "definition" : "Type of substance",
        "min" : 0,
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
        "id" : "EHDSSubstanceUse.routeOfAdministration",
        "path" : "EHDSSubstanceUse.routeOfAdministration",
        "short" : "Route(s) of administration",
        "definition" : "Route(s) of administration",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM"
        }
      },
      {
        "id" : "EHDSSubstanceUse.note",
        "path" : "EHDSSubstanceUse.note",
        "short" : "Textual comment.",
        "definition" : "Textual comment.",
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
