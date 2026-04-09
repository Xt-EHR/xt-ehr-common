# Organisation laboratory specific obligations - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organisation laboratory specific obligations**

## Logical Model: Organisation laboratory specific obligations 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisationLaboratoryObligations | *Version*:0.4.0 |
| Draft as of 2026-03-09 | *Computable Name*:EHDSOrganisationLaboratoryObligations |

 
Obligations for the logical model of organisation in the scope of laboratory use case 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSOrganisationLaboratoryObligations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSOrganisationLaboratoryObligations.csv), [Excel](StructureDefinition-EHDSOrganisationLaboratoryObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSOrganisationLaboratoryObligations",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisationLaboratoryObligations",
  "version" : "0.4.0",
  "name" : "EHDSOrganisationLaboratoryObligations",
  "title" : "Organisation laboratory specific obligations",
  "status" : "draft",
  "date" : "2026-03-09T22:01:45+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Obligations for the logical model of organisation in the scope of laboratory use case",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSOrganisation",
      "path" : "EHDSOrganisation"
    },
    {
      "id" : "EHDSOrganisation.identifier",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL be able to populate one or more business identifiers of the organization. "
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "If provided, EHR systems SHOULD display and SHALL process. Processing means mainly store as part of the resource and consider the value for furter processing (e.g. validation, retrieval of details from registry, etc.)."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSOrganisation.identifier"
    },
    {
      "id" : "EHDSOrganisation.name",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL be able to populate name of the organization."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSOrganisation.name"
    },
    {
      "id" : "EHDSOrganisation.address",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL be able to populate address of the organization."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSOrganisation.address"
    },
    {
      "id" : "EHDSOrganisation.telecom",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL be able to populate telecommunication contacts of the organization."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSOrganisation.telecom"
    },
    {
      "id" : "EHDSOrganisation.partOf",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL be able to populate relationship to an organization which it is part of. "
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSOrganisation.partOf"
    }]
  }
}

```
