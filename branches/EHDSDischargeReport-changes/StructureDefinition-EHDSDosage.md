# Dosage model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosage model**

## Logical Model: Dosage model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage | *Version*:0.2.1 |
| Draft as of 2026-01-31 | *Computable Name*:EHDSDosage |

 
EHDS refined base model for Dosage 

**Usages:**

* Use this Logical Model: [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDosage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDosage.csv), [Excel](StructureDefinition-EHDSDosage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDosage",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "version" : "0.2.1",
  "name" : "EHDSDosage",
  "title" : "Dosage model",
  "status" : "draft",
  "date" : "2026-01-31T22:40:15+00:00",
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
  "description" : "EHDS refined base model for Dosage",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDosage",
        "path" : "EHDSDosage",
        "short" : "Dosage model",
        "definition" : "EHDS refined base model for Dosage"
      },
      {
        "id" : "EHDSDosage.dosageDescription",
        "path" : "EHDSDosage.dosageDescription",
        "short" : "Dosage description",
        "definition" : "Free text dosage instructions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDosage.site",
        "path" : "EHDSDosage.site",
        "short" : "Site",
        "definition" : "Body site administered to.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosage.route",
        "path" : "EHDSDosage.route",
        "short" : "Route",
        "definition" : "Path of substance into body.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosage.method",
        "path" : "EHDSDosage.method",
        "short" : "Method",
        "definition" : "How drug was administered.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDosage.dose",
        "path" : "EHDSDosage.dose",
        "short" : "Dose",
        "definition" : "Amount of medication per dose.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSDosage.rate[x]",
        "path" : "EHDSDosage.rate[x]",
        "short" : "Rate",
        "definition" : "Dose quantity per unit of time.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          },
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
