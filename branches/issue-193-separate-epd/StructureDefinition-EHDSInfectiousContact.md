# Infectious contact model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Infectious contact model**

## Logical Model: Infectious contact model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSInfectiousContact | *Version*:0.2.1 |
| Draft as of 2025-12-08 | *Computable Name*:EHDSInfectiousContact |

 
EHDS refined base model for an infectious contact 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSInfectiousContact)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSInfectiousContact.csv), [Excel](StructureDefinition-EHDSInfectiousContact.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSInfectiousContact",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSInfectiousContact",
  "version" : "0.2.1",
  "name" : "EHDSInfectiousContact",
  "title" : "Infectious contact model",
  "status" : "draft",
  "date" : "2025-12-08T12:22:43+00:00",
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
  "description" : "EHDS refined base model for an infectious contact",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSInfectiousContact",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSInfectiousContact",
        "path" : "EHDSInfectiousContact",
        "short" : "Infectious contact model",
        "definition" : "EHDS refined base model for an infectious contact"
      },
      {
        "id" : "EHDSInfectiousContact.infectiousAgent",
        "path" : "EHDSInfectiousContact.infectiousAgent",
        "short" : "Information about a suspected infectious agent or agents the person was exposed to.",
        "definition" : "Information about a suspected infectious agent or agents the person was exposed to.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT"
        }
      },
      {
        "id" : "EHDSInfectiousContact.timePeriod[x]",
        "path" : "EHDSInfectiousContact.timePeriod[x]",
        "short" : "A date and duration or date time interval of contact. Partial dates are allowed.",
        "definition" : "A date and duration or date time interval of contact. Partial dates are allowed.",
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
        "id" : "EHDSInfectiousContact.proximity[x]",
        "path" : "EHDSInfectiousContact.proximity[x]",
        "short" : "Proximity to the source/carrier of the infectious agent during exposure. Proximity could be expressed by text, code (direct, indirect) or value specifying distance from the infectious agent carrier.",
        "definition" : "Proximity to the source/carrier of the infectious agent during exposure. Proximity could be expressed by text, code (direct, indirect) or value specifying distance from the infectious agent carrier.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSInfectiousContact.country",
        "path" : "EHDSInfectiousContact.country",
        "short" : "Country in which the person was potentially exposed to an infectious agent.",
        "definition" : "Country in which the person was potentially exposed to an infectious agent.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISO 3166-1 alpha-2"
        }
      },
      {
        "id" : "EHDSInfectiousContact.note",
        "path" : "EHDSInfectiousContact.note",
        "short" : "A textual note with additional information about infectious contact.",
        "definition" : "A textual note with additional information about infectious contact.",
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
