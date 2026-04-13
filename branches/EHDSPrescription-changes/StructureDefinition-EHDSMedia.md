# Media model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Media model**

## Logical Model: Media model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedia | *Version*:0.2.1 |
| Draft as of 2026-02-01 | *Computable Name*:EHDSMedia |

 
EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare. 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedia)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedia.csv), [Excel](StructureDefinition-EHDSMedia.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedia",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedia",
  "version" : "0.2.1",
  "name" : "EHDSMedia",
  "title" : "Media model",
  "status" : "draft",
  "date" : "2026-02-01T15:56:56+00:00",
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
  "description" : "EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedia",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedia",
        "path" : "EHDSMedia",
        "short" : "Media model",
        "definition" : "EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare."
      },
      {
        "id" : "EHDSMedia.identifier",
        "path" : "EHDSMedia.identifier",
        "short" : "Identifier",
        "definition" : "Image identifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedia.type",
        "path" : "EHDSMedia.type",
        "short" : "Type",
        "definition" : "Classification of media as image, video, audio recording or other media type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MediaType"
        }
      },
      {
        "id" : "EHDSMedia.modality",
        "path" : "EHDSMedia.modality",
        "short" : "Modality",
        "definition" : "The type of acquisition equipment/process",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MediaModality"
        }
      },
      {
        "id" : "EHDSMedia.view",
        "path" : "EHDSMedia.view",
        "short" : "View",
        "definition" : "The name of the imaging view e.g. Lateral or Antero-posterior ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 MediaCollectionView/Projection"
        }
      },
      {
        "id" : "EHDSMedia.subject[x]",
        "path" : "EHDSMedia.subject[x]",
        "short" : "Subject",
        "definition" : "Who/What this Media is a record of",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSMedia.created[x]",
        "path" : "EHDSMedia.created[x]",
        "short" : "Created",
        "definition" : "The date and time(s) at which the media was collected.",
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
        "id" : "EHDSMedia.reason",
        "path" : "EHDSMedia.reason",
        "short" : "Reason",
        "definition" : "Describes why the event occurred in coded or textual form.",
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
        "id" : "EHDSMedia.bodySite",
        "path" : "EHDSMedia.bodySite",
        "short" : "BodySite",
        "definition" : "Observed body part, i.e. target site",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSMedia.deviceName",
        "path" : "EHDSMedia.deviceName",
        "short" : "Device name",
        "definition" : "The name of the device / manufacturer of the device that was used to make the recording.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedia.device",
        "path" : "EHDSMedia.device",
        "short" : "Device",
        "definition" : "The device used to collect the media.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSMedia.content",
        "path" : "EHDSMedia.content",
        "short" : "Content",
        "definition" : "The actual content of the media - inline or by direct reference to the media source file.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
          }
        ]
      },
      {
        "id" : "EHDSMedia.note",
        "path" : "EHDSMedia.note",
        "short" : "Note",
        "definition" : "Comments made about the media by the performer, subject or other participants.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedia.performer[x]",
        "path" : "EHDSMedia.performer[x]",
        "short" : "Performer",
        "definition" : "Performer of the imaging acquisition process. ",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      }
    ]
  }
}

```
