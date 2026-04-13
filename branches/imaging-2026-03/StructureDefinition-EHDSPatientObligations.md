# Patient obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient obligations**

## Logical Model: Patient obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientObligations | *Version*:0.4.0 |
| Draft as of 2026-03-03 | *Computable Name*:EHDSPatientObligations |

 
Obligations for the logical model for patient. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatientObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatientObligations.csv), [Excel](StructureDefinition-EHDSPatientObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatientObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientObligations",
  "version" : "0.4.0",
  "name" : "EHDSPatientObligations",
  "title" : "Patient obligations",
  "status" : "draft",
  "date" : "2026-03-03T22:35:02+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for patient.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSPatient",
      "path" : "EHDSPatient"
    },
    {
      "id" : "EHDSPatient.identifier",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.identifier"
    },
    {
      "id" : "EHDSPatient.name",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.name"
    },
    {
      "id" : "EHDSPatient.name.use",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.name.use"
    },
    {
      "id" : "EHDSPatient.name.text",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.name.text"
    },
    {
      "id" : "EHDSPatient.name.family",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.name.family"
    },
    {
      "id" : "EHDSPatient.name.given",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.name.given"
    },
    {
      "id" : "EHDSPatient.dateOfBirth",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.dateOfBirth"
    },
    {
      "id" : "EHDSPatient.administrativeGender",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSPatient.administrativeGender"
    }]
  }
}

```
