# Administered dosaging model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administered dosaging model**

## Logical Model: Administered dosaging model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosaging | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSAdministeredDosaging |

**Usages:**

* Use this Logical Model: [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAdministeredDosaging)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAdministeredDosaging.csv), [Excel](StructureDefinition-EHDSAdministeredDosaging.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdministeredDosaging",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosaging",
  "version" : "0.2.1",
  "name" : "EHDSAdministeredDosaging",
  "title" : "Administered dosaging model",
  "status" : "draft",
  "date" : "2026-02-05T14:01:33+00:00",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdministeredDosaging",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAdministeredDosaging",
        "path" : "EHDSAdministeredDosaging",
        "short" : "Administered dosaging model",
        "definition" : "Administered dosaging model"
      },
      {
        "id" : "EHDSAdministeredDosaging.dosageDetails",
        "path" : "EHDSAdministeredDosaging.dosageDetails",
        "max" : "1"
      },
      {
        "id" : "EHDSAdministeredDosaging.dosageDetails.sequence",
        "path" : "EHDSAdministeredDosaging.dosageDetails.sequence",
        "max" : "0"
      },
      {
        "id" : "EHDSAdministeredDosaging.dosageDetails.repeat",
        "path" : "EHDSAdministeredDosaging.dosageDetails.repeat",
        "max" : "0"
      },
      {
        "id" : "EHDSAdministeredDosaging.dosageDetails.asNeeded",
        "path" : "EHDSAdministeredDosaging.dosageDetails.asNeeded",
        "max" : "0"
      }
    ]
  }
}

```
