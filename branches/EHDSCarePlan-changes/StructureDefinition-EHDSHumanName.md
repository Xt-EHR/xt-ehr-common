# Human name model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human name model**

## Logical Model: Human name model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName | *Version*:0.2.1 |
| Draft as of 2026-01-19 | *Computable Name*:EHDSHumanName |

 
EHDS refined base model for Human name 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Patient model](StructureDefinition-EHDSPatient.md), [Patient Animal model](StructureDefinition-EHDSPatientAnimal.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSHumanName)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSHumanName.csv), [Excel](StructureDefinition-EHDSHumanName.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSHumanName",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName",
  "version" : "0.2.1",
  "name" : "EHDSHumanName",
  "title" : "Human name model",
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
  "description" : "EHDS refined base model for Human name",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSHumanName",
        "path" : "EHDSHumanName",
        "short" : "Human name model",
        "definition" : "EHDS refined base model for Human name"
      },
      {
        "id" : "EHDSHumanName.use",
        "path" : "EHDSHumanName.use",
        "short" : "Use",
        "definition" : "Identifies the purpose for this name.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:NameUse"
        }
      },
      {
        "id" : "EHDSHumanName.text",
        "path" : "EHDSHumanName.text",
        "short" : "Text",
        "definition" : "Specifies the entire name as it should be displayed e.g. on an application UI. This may be provided instead of or as well as the specific parts.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.family",
        "path" : "EHDSHumanName.family",
        "short" : "Family",
        "definition" : "The family name/surname/last name of the patient. This field can contain more than one  element or multiple fields could be present.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.given",
        "path" : "EHDSHumanName.given",
        "short" : "Given",
        "definition" : "The given name/first name  (also known as forename or first name).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.prefix",
        "path" : "EHDSHumanName.prefix",
        "short" : "Prefix",
        "definition" : "Name parts that come before the name. Prefixes appear in the correct order for presenting the name.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSHumanName.suffix",
        "path" : "EHDSHumanName.suffix",
        "short" : "Suffix",
        "definition" : "Name parts that come after the name. Suffixes appear in the correct order for presenting the name.",
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
