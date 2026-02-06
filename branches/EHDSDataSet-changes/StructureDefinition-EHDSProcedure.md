# Procedure model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure model**

## Logical Model: Procedure model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure | *Version*:0.2.1 |
| Draft as of 2026-01-27 | *Computable Name*:EHDSProcedure |

 
EHDS refined base model for an action that is or was performed on or for a patient 

**Usages:**

* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md)... Show 6 more, [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Observation model](StructureDefinition-EHDSObservation.md), [Patient summary model](StructureDefinition-EHDSPatientSummary.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSProcedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSProcedure.csv), [Excel](StructureDefinition-EHDSProcedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSProcedure",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "version" : "0.2.1",
  "name" : "EHDSProcedure",
  "title" : "Procedure model",
  "status" : "draft",
  "date" : "2026-01-27T10:01:29+00:00",
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
  "description" : "EHDS refined base model for an action that is or was performed on or for a patient",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSProcedure",
        "path" : "EHDSProcedure",
        "short" : "Procedure model",
        "definition" : "EHDS refined base model for an action that is or was performed on or for a patient"
      },
      {
        "id" : "EHDSProcedure.code",
        "path" : "EHDSProcedure.code",
        "short" : "Code identifying the procedure",
        "definition" : "Code identifying the procedure",
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
        "id" : "EHDSProcedure.date[x]",
        "path" : "EHDSProcedure.date[x]",
        "short" : "Date and time of the procedure or interval of its performance",
        "definition" : "Date and time of the procedure or interval of its performance",
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
        "id" : "EHDSProcedure.performer",
        "path" : "EHDSProcedure.performer",
        "short" : "An actor who performed the procedure",
        "definition" : "An actor who performed the procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.bodySite",
        "path" : "EHDSProcedure.bodySite",
        "short" : "Procedure target body site. Details of where the procedure was performed. Laterality may be included as qualifier of the body site.",
        "definition" : "Procedure target body site. Details of where the procedure was performed. Laterality may be included as qualifier of the body site.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.reason[x]",
        "path" : "EHDSProcedure.reason[x]",
        "short" : "The reason why the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
        "definition" : "The reason why the procedure was performed. This may be a concept from a terminology or a reference to a specific instance that describes the reason.",
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
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, ICD-10, Orphacode if rare disease is diagnosed"
        }
      },
      {
        "id" : "EHDSProcedure.outcome",
        "path" : "EHDSProcedure.outcome",
        "short" : "The outcome of the procedure - did it resolve the reasons for the procedure being performed?",
        "definition" : "The outcome of the procedure - did it resolve the reasons for the procedure being performed?",
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
        "id" : "EHDSProcedure.complication",
        "path" : "EHDSProcedure.complication",
        "short" : "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "definition" : "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the procedure description, which will typically describe the procedure itself rather than any 'post procedure' issues.",
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
        "id" : "EHDSProcedure.deviceUsed",
        "path" : "EHDSProcedure.deviceUsed",
        "short" : "Device used to perform the procedure",
        "definition" : "Device used to perform the procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.focalDevice",
        "path" : "EHDSProcedure.focalDevice",
        "short" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "definition" : "Device(s) that is/are implanted, removed, or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSProcedure.note",
        "path" : "EHDSProcedure.note",
        "short" : "Additional information about the procedure",
        "definition" : "Additional information about the procedure",
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
