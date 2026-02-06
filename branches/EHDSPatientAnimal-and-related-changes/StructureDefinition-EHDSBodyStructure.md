# Body structure model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body structure model**

## Logical Model: Body structure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSBodyStructure |

 
EHDS refined base model for Body structure 

**Usages:**

* Use this Logical Model: [Condition model](StructureDefinition-EHDSCondition.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Dosage model](StructureDefinition-EHDSDosage.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md)... Show 6 more, [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Media model](StructureDefinition-EHDSMedia.md), [Observation model](StructureDefinition-EHDSObservation.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSBodyStructure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSBodyStructure.csv), [Excel](StructureDefinition-EHDSBodyStructure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSBodyStructure",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure",
  "version" : "0.2.1",
  "name" : "EHDSBodyStructure",
  "title" : "Body structure model",
  "status" : "draft",
  "date" : "2026-02-05T18:51:54+00:00",
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
  "description" : "EHDS refined base model for Body structure",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSBodyStructure",
        "path" : "EHDSBodyStructure",
        "short" : "Body structure model",
        "definition" : "EHDS refined base model for Body structure"
      },
      {
        "id" : "EHDSBodyStructure.morphology",
        "path" : "EHDSBodyStructure.morphology",
        "short" : "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies.",
        "definition" : "The kind of structure being represented by the body structure at BodyStructure.location. This can define both normal and abnormal morphologies.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSBodyStructure.location",
        "path" : "EHDSBodyStructure.location",
        "short" : "Body site",
        "definition" : "Body site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSBodyStructure.locationQualifier",
        "path" : "EHDSBodyStructure.locationQualifier",
        "short" : "Additional qualifier of the body structure (e.g. upper, lower, left side).",
        "definition" : "Additional qualifier of the body structure (e.g. upper, lower, left side).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSBodyStructure.laterality",
        "path" : "EHDSBodyStructure.laterality",
        "short" : "Body structure laterality (e.g. left, right).",
        "definition" : "Body structure laterality (e.g. left, right).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSBodyStructure.description",
        "path" : "EHDSBodyStructure.description",
        "short" : "Textual description of the body structure",
        "definition" : "Textual description of the body structure",
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
