# Device use obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device use obligations**

## Logical Model: Device use obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUseObligations | *Version*:0.4.0 |
| Draft as of 2026-03-03 | *Computable Name*:EHDSDeviceUseObligations |

 
Obligations for the logical model for device use. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDeviceUseObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDeviceUseObligations.csv), [Excel](StructureDefinition-EHDSDeviceUseObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDeviceUseObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUseObligations",
  "version" : "0.4.0",
  "name" : "EHDSDeviceUseObligations",
  "title" : "Device use obligations",
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
  "description" : "Obligations for the logical model for device use.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSDeviceUse",
      "path" : "EHDSDeviceUse"
    },
    {
      "id" : "EHDSDeviceUse.header.subject",
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
      "path" : "EHDSDeviceUse.header.subject"
    },
    {
      "id" : "EHDSDeviceUse.header.status",
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
      "path" : "EHDSDeviceUse.header.status"
    },
    {
      "id" : "EHDSDeviceUse.periodOfUse",
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
      "path" : "EHDSDeviceUse.periodOfUse"
    },
    {
      "id" : "EHDSDeviceUse.device[x]",
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
      "path" : "EHDSDeviceUse.device[x]"
    },
    {
      "id" : "EHDSDeviceUse.bodySite",
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
      "path" : "EHDSDeviceUse.bodySite"
    },
    {
      "id" : "EHDSDeviceUse.note",
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
      "path" : "EHDSDeviceUse.note"
    }]
  }
}

```
