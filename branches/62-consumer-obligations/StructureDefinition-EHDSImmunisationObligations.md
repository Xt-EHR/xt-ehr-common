# Immunisation obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunisation obligations**

## Logical Model: Immunisation obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisationObligations | *Version*:0.4.0 |
| Draft as of 2026-02-25 | *Computable Name*:EHDSImmunisationObligations |

 
Obligations for the logical model for immunisation. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSImmunisationObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSImmunisationObligations.csv), [Excel](StructureDefinition-EHDSImmunisationObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSImmunisationObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisationObligations",
  "version" : "0.4.0",
  "name" : "EHDSImmunisationObligations",
  "title" : "Immunisation obligations",
  "status" : "draft",
  "date" : "2026-02-25T10:40:44+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model for immunisation.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSImmunisation",
      "path" : "EHDSImmunisation"
    },
    {
      "id" : "EHDSImmunisation.header.subject",
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
      "path" : "EHDSImmunisation.header.subject"
    },
    {
      "id" : "EHDSImmunisation.header.identifier",
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
      "path" : "EHDSImmunisation.header.identifier"
    },
    {
      "id" : "EHDSImmunisation.header.status",
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
      "path" : "EHDSImmunisation.header.status"
    },
    {
      "id" : "EHDSImmunisation.vaccine",
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
      "path" : "EHDSImmunisation.vaccine"
    },
    {
      "id" : "EHDSImmunisation.administeredProduct",
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
      "path" : "EHDSImmunisation.administeredProduct"
    },
    {
      "id" : "EHDSImmunisation.administeredProduct.identifyingCode[x]",
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
      "path" : "EHDSImmunisation.administeredProduct.identifyingCode[x]"
    },
    {
      "id" : "EHDSImmunisation.administeredProduct.productName",
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
      "path" : "EHDSImmunisation.administeredProduct.productName"
    },
    {
      "id" : "EHDSImmunisation.administeredProduct.batch",
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
      "path" : "EHDSImmunisation.administeredProduct.batch"
    },
    {
      "id" : "EHDSImmunisation.administeredProduct.batch.lotNumber",
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
      "path" : "EHDSImmunisation.administeredProduct.batch.lotNumber"
    },
    {
      "id" : "EHDSImmunisation.administrationTime",
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
      "path" : "EHDSImmunisation.administrationTime"
    }]
  }
}

```
