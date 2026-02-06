# Telecom model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telecom model**

## Logical Model: Telecom model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSTelecom |

 
EHDS refined base model for Telecommunication contact information structure 

**Usages:**

* Use this Logical Model: [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Organisation model](StructureDefinition-EHDSOrganisation.md), [Patient model](StructureDefinition-EHDSPatient.md) and [Related person model](StructureDefinition-EHDSRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSTelecom)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSTelecom.csv), [Excel](StructureDefinition-EHDSTelecom.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSTelecom",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "version" : "0.2.1",
  "name" : "EHDSTelecom",
  "title" : "Telecom model",
  "status" : "draft",
  "date" : "2026-02-05T13:56:30+00:00",
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
  "description" : "EHDS refined base model for Telecommunication contact information structure",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSTelecom",
        "path" : "EHDSTelecom",
        "short" : "Telecom model",
        "definition" : "EHDS refined base model for Telecommunication contact information structure"
      },
      {
        "id" : "EHDSTelecom.use",
        "path" : "EHDSTelecom.use",
        "short" : "Use",
        "definition" : "Purpose of the address",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 ContactPointUse"
        }
      },
      {
        "id" : "EHDSTelecom.type",
        "path" : "EHDSTelecom.type",
        "short" : "Type",
        "definition" : "Telecommunications form for contact point - what communications system is required to make use of the contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 ContactPointSystem"
        }
      },
      {
        "id" : "EHDSTelecom.value",
        "path" : "EHDSTelecom.value",
        "short" : "Value",
        "definition" : "The actual contact point details, in a form that is meaningful to the designated communication type (i.e. phone number or email address).",
        "min" : 1,
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
