# Device model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device model**

## Logical Model: Device model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice | *Version*:0.2.1 |
| Draft as of 2026-01-14 | *Computable Name*:EHDSDevice |

 
EHDS refined base model for Device information 

**Usages:**

* Use this Logical Model: [DataSet model](StructureDefinition-EHDSDataSet.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Document model](StructureDefinition-EHDSDocument.md)...Show 7 more,[Imaging report model](StructureDefinition-EHDSImagingReport.md),[Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md),[Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md),[Media model](StructureDefinition-EHDSMedia.md),[Observation model](StructureDefinition-EHDSObservation.md),[Procedure model](StructureDefinition-EHDSProcedure.md)and[Specimen model](StructureDefinition-EHDSSpecimen.md)
* Refer to this Logical Model: [Medication model](StructureDefinition-EHDSMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDevice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDevice.csv), [Excel](StructureDefinition-EHDSDevice.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDevice",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice",
  "version" : "0.2.1",
  "name" : "EHDSDevice",
  "title" : "Device model",
  "status" : "draft",
  "date" : "2026-01-14T16:03:53+00:00",
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
  "description" : "EHDS refined base model for Device information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDevice",
        "path" : "EHDSDevice",
        "short" : "Device model",
        "definition" : "EHDS refined base model for Device information"
      },
      {
        "id" : "EHDSDevice.identifier",
        "path" : "EHDSDevice.identifier",
        "short" : "Normalised identifier of the device instance, such as UDI according to REGULATION (EU) 2017/745. Multiple identifiers can be used.",
        "definition" : "Normalised identifier of the device instance, such as UDI according to REGULATION (EU) 2017/745. Multiple identifiers can be used.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSDevice.manufacturer",
        "path" : "EHDSDevice.manufacturer",
        "short" : "Name of device manufacturer",
        "definition" : "Name of device manufacturer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.manufactureDate",
        "path" : "EHDSDevice.manufactureDate",
        "short" : "The date and time when the device was manufactured",
        "definition" : "The date and time when the device was manufactured",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDevice.expiryDate",
        "path" : "EHDSDevice.expiryDate",
        "short" : "The date and time beyond which this device is no longer valid or should not be used (if applicable).",
        "definition" : "The date and time beyond which this device is no longer valid or should not be used (if applicable).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDevice.lotNumber",
        "path" : "EHDSDevice.lotNumber",
        "short" : "Lot number of manufacture",
        "definition" : "Lot number of manufacture",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.serialNumber",
        "path" : "EHDSDevice.serialNumber",
        "short" : "Serial number assigned by the manufacturer",
        "definition" : "Serial number assigned by the manufacturer",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.name",
        "path" : "EHDSDevice.name",
        "short" : "The name and name type of the device as known to the manufacturer and/or patient",
        "definition" : "The name and name type of the device as known to the manufacturer and/or patient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.modelNumber",
        "path" : "EHDSDevice.modelNumber",
        "short" : "The manufacturer's model number for the device",
        "definition" : "The manufacturer's model number for the device",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.version",
        "path" : "EHDSDevice.version",
        "short" : "The actual design of the device or software version running on the device",
        "definition" : "The actual design of the device or software version running on the device",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSDevice.type",
        "path" : "EHDSDevice.type",
        "short" : "Device type",
        "definition" : "Device type",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, EMDN"
        }
      },
      {
        "id" : "EHDSDevice.note",
        "path" : "EHDSDevice.note",
        "short" : "Device notes and comments",
        "definition" : "Device notes and comments",
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
