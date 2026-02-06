# Substance model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Substance model**

## Logical Model: Substance model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstance | *Version*:0.2.1 |
| Draft as of 2026-01-19 | *Computable Name*:EHDSSubstance |

 
EHDS refined base model for Substance 

**Usages:**

* Use this Logical Model: [Specimen model](StructureDefinition-EHDSSpecimen.md)
* Refer to this Logical Model: [Substance model](StructureDefinition-EHDSSubstance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSSubstance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSSubstance.csv), [Excel](StructureDefinition-EHDSSubstance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSSubstance",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstance",
  "version" : "0.2.1",
  "name" : "EHDSSubstance",
  "title" : "Substance model",
  "status" : "draft",
  "date" : "2026-01-19T14:03:05+00:00",
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
  "description" : "EHDS refined base model for Substance",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSSubstance",
        "path" : "EHDSSubstance",
        "short" : "Substance model",
        "definition" : "EHDS refined base model for Substance"
      },
      {
        "id" : "EHDSSubstance.identifier",
        "path" : "EHDSSubstance.identifier",
        "short" : "Identifier",
        "definition" : "Unique identifier for the substance. For an instance, an identifier associated with the package/container (usually a label affixed directly).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.code",
        "path" : "EHDSSubstance.code",
        "short" : "Code",
        "definition" : "A code (or set of codes) that identify this substance.",
        "min" : 0,
        "max" : "*",
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
        "id" : "EHDSSubstance.description",
        "path" : "EHDSSubstance.description",
        "short" : "Description",
        "definition" : "A description of the substance - its appearance, handling requirements, and other usage notes.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.expiry",
        "path" : "EHDSSubstance.expiry",
        "short" : "Expiry",
        "definition" : "When the substance is no longer valid to use. ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.quantity",
        "path" : "EHDSSubstance.quantity",
        "short" : "Quantity",
        "definition" : "The amount of the substance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.ingredients",
        "path" : "EHDSSubstance.ingredients",
        "short" : "Ingredients",
        "definition" : "Composition information about the substance",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.ingredients.quantity",
        "path" : "EHDSSubstance.ingredients.quantity",
        "short" : "Quantity",
        "definition" : "The amount of the ingredient in the substance - a concentration ratio.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSSubstance.ingredients.substance",
        "path" : "EHDSSubstance.ingredients.substance",
        "short" : "Substance",
        "definition" : "Another substance that is a component of this substance.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSubstance"
            ]
          }
        ]
      }
    ]
  }
}

```
