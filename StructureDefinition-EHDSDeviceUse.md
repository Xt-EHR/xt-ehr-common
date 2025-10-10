# Device use model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device use model**

## Logical Model: Device use model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse | *Version*:0.2.1 |
| Draft as of 2025-10-10 | *Computable Name*:EHDSDeviceUse |

 
EHDS refined base model for device use information 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDeviceUse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDeviceUse.csv), [Excel](StructureDefinition-EHDSDeviceUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDeviceUse",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "version" : "0.2.1",
  "name" : "EHDSDeviceUse",
  "title" : "Device use model",
  "status" : "draft",
  "date" : "2025-10-10T16:36:16+00:00",
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
  "description" : "EHDS refined base model for device use information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDeviceUse",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDeviceUse",
        "path" : "EHDSDeviceUse",
        "short" : "Device use model",
        "definition" : "EHDS refined base model for device use information"
      },
      {
        "id" : "EHDSDeviceUse.header.status",
        "path" : "EHDSDeviceUse.header.status",
        "short" : "Current status of the device usage.",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 device-statement-status"
        }
      },
      {
        "id" : "EHDSDeviceUse.startDate",
        "path" : "EHDSDeviceUse.startDate",
        "short" : "Date when the device was implantable to the patient or the external device was first in use.",
        "definition" : "Date when the device was implantable to the patient or the external device was first in use.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.endDate",
        "path" : "EHDSDeviceUse.endDate",
        "short" : "Date when the device was explanted from the patient or the external device was no longer in use.",
        "definition" : "Date when the device was explanted from the patient or the external device was no longer in use.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.device[x]",
        "path" : "EHDSDeviceUse.device[x]",
        "short" : "The details of the device used.",
        "definition" : "The details of the device used.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.bodySite",
        "path" : "EHDSDeviceUse.bodySite",
        "short" : "Anatomical location of the device. May include laterality.",
        "definition" : "Anatomical location of the device. May include laterality.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.reason[x]",
        "path" : "EHDSDeviceUse.reason[x]",
        "short" : "Reason or justification for the use of the device.",
        "definition" : "Reason or justification for the use of the device.",
        "requirements" : "eHN PS Guideline, ISO IPS.",
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
        ]
      },
      {
        "id" : "EHDSDeviceUse.source[x]",
        "path" : "EHDSDeviceUse.source[x]",
        "short" : "Who reported the device was being used by the patient.",
        "definition" : "Who reported the device was being used by the patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSDeviceUse.note",
        "path" : "EHDSDeviceUse.note",
        "short" : "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.",
        "definition" : "Note about the device statement that were not represented at all or sufficiently in one of the attributes provided in a class. These may include for example a comment, an instruction, or a note associated with the statement.",
        "min" : 0,
        "max" : "*",
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
