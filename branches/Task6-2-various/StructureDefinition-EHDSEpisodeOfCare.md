# Episode of care model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Episode of care model**

## Logical Model: Episode of care model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEpisodeOfCare | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSEpisodeOfCare |

 
EHDS refined base model for Episode of care 

**Usages:**

* Use this Logical Model: [Encounter model](StructureDefinition-EHDSEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEpisodeOfCare)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEpisodeOfCare.csv), [Excel](StructureDefinition-EHDSEpisodeOfCare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEpisodeOfCare",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEpisodeOfCare",
  "version" : "0.2.1",
  "name" : "EHDSEpisodeOfCare",
  "title" : "Episode of care model",
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
  "description" : "EHDS refined base model for Episode of care",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEpisodeOfCare",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEpisodeOfCare",
        "path" : "EHDSEpisodeOfCare",
        "short" : "Episode of care model",
        "definition" : "EHDS refined base model for Episode of care"
      },
      {
        "id" : "EHDSEpisodeOfCare.header.identifier",
        "path" : "EHDSEpisodeOfCare.header.identifier",
        "short" : "Business identifiers assigned to this episode of care."
      },
      {
        "id" : "EHDSEpisodeOfCare.type",
        "path" : "EHDSEpisodeOfCare.type",
        "short" : "A classification of the type of episode of care; e.g. specialist referral, disease management.",
        "definition" : "A classification of the type of episode of care; e.g. specialist referral, disease management.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSEpisodeOfCare.reasonText",
        "path" : "EHDSEpisodeOfCare.reasonText",
        "short" : "Textual descriptions of the medical reasons that are expected to be addressed during the episode of care.",
        "definition" : "Textual descriptions of the medical reasons that are expected to be addressed during the episode of care.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEpisodeOfCare.reason[x]",
        "path" : "EHDSEpisodeOfCare.reason[x]",
        "short" : "Coded list of medical reasons that are expected to be addressed during the episode of care.",
        "definition" : "Coded list of medical reasons that are expected to be addressed during the episode of care.",
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
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSEpisodeOfCare.diagnosis",
        "path" : "EHDSEpisodeOfCare.diagnosis",
        "short" : "List of medical conditions that were addressed during the episode of care",
        "definition" : "List of medical conditions that were addressed during the episode of care",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEpisodeOfCare.diagnosis.description",
        "path" : "EHDSEpisodeOfCare.diagnosis.description",
        "short" : "Textual description of the medical condition that was addressed during the episode of care",
        "definition" : "Textual description of the medical condition that was addressed during the episode of care",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEpisodeOfCare.diagnosis.condition[x]",
        "path" : "EHDSEpisodeOfCare.diagnosis.condition[x]",
        "short" : "The medical condition that was addressed during the episode of care",
        "definition" : "The medical condition that was addressed during the episode of care",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      }
    ]
  }
}

```
