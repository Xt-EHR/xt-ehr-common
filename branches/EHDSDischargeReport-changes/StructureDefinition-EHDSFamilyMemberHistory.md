# Family member history model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Family member history model**

## Logical Model: Family member history model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFamilyMemberHistory | *Version*:0.2.1 |
| Draft as of 2026-01-22 | *Computable Name*:EHDSFamilyMemberHistory |

 
EHDS refined base model for family member history 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSFamilyMemberHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSFamilyMemberHistory.csv), [Excel](StructureDefinition-EHDSFamilyMemberHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSFamilyMemberHistory",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFamilyMemberHistory",
  "version" : "0.2.1",
  "name" : "EHDSFamilyMemberHistory",
  "title" : "Family member history model",
  "status" : "draft",
  "date" : "2026-01-22T22:25:36+00:00",
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
  "description" : "EHDS refined base model for family member history",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSFamilyMemberHistory",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSFamilyMemberHistory",
        "path" : "EHDSFamilyMemberHistory",
        "short" : "Family member history model",
        "definition" : "EHDS refined base model for family member history"
      },
      {
        "id" : "EHDSFamilyMemberHistory.header.subject",
        "path" : "EHDSFamilyMemberHistory.header.subject",
        "short" : "The person whose family member's medical history is described."
      },
      {
        "id" : "EHDSFamilyMemberHistory.patientRelationship",
        "path" : "EHDSFamilyMemberHistory.patientRelationship",
        "short" : "Patient relationship",
        "definition" : "The family relation between the related person and the patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:v3-RoleCode"
        }
      },
      {
        "id" : "EHDSFamilyMemberHistory.dateOfBirth",
        "path" : "EHDSFamilyMemberHistory.dateOfBirth",
        "short" : "Date of birth of the family member.",
        "definition" : "Date of birth of the family member.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EHDSFamilyMemberHistory.ageOrDateOfDeath[x]",
        "path" : "EHDSFamilyMemberHistory.ageOrDateOfDeath[x]",
        "short" : "Age or date of the death of the family member.",
        "definition" : "Age or date of the death of the family member.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          },
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSFamilyMemberHistory.condition",
        "path" : "EHDSFamilyMemberHistory.condition",
        "short" : "Medical problems this person suffers or suffered.",
        "definition" : "Medical problems this person suffers or suffered.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
        }
      },
      {
        "id" : "EHDSFamilyMemberHistory.causeOfDeath",
        "path" : "EHDSFamilyMemberHistory.causeOfDeath",
        "short" : "Information about disease or condition that was the main cause of death.",
        "definition" : "Information about disease or condition that was the main cause of death.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode if rare disease is diagnosed"
        }
      }
    ]
  }
}

```
