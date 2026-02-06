# Patient model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient model**

## Logical Model: Patient model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient | *Version*:0.2.1 |
| Draft as of 2026-02-04 | *Computable Name*:EHDSPatient |

 
EHDS refined base model for patient (subject of care) information 

**Usages:**

* Use this Logical Model: [Coverage model](StructureDefinition-EHDSCoverage.md), [DataSet model](StructureDefinition-EHDSDataSet.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md)... Show 7 more, [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Media model](StructureDefinition-EHDSMedia.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Observation model](StructureDefinition-EHDSObservation.md), [Related person model](StructureDefinition-EHDSRelatedPerson.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatient.csv), [Excel](StructureDefinition-EHDSPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatient",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "version" : "0.2.1",
  "name" : "EHDSPatient",
  "title" : "Patient model",
  "status" : "draft",
  "date" : "2026-02-04T20:05:19+00:00",
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
  "description" : "EHDS refined base model for patient (subject of care) information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPatient",
        "path" : "EHDSPatient",
        "short" : "Patient model",
        "definition" : "EHDS refined base model for patient (subject of care) information"
      },
      {
        "id" : "EHDSPatient.personalIdentifier",
        "path" : "EHDSPatient.personalIdentifier",
        "short" : "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR).",
        "definition" : "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR).",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSPatient.name",
        "path" : "EHDSPatient.name",
        "short" : "Name associated with the patient/subject.",
        "definition" : "Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName"
          }
        ]
      },
      {
        "id" : "EHDSPatient.dateOfBirth",
        "path" : "EHDSPatient.dateOfBirth",
        "short" : "Date of birth",
        "definition" : "The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of the test result values, complete date of birth should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSPatient.administrativeGender",
        "path" : "EHDSPatient.administrativeGender",
        "short" : "Administrative gender",
        "definition" : "This field must contain a recognized valid value for \"administrative gender\". If different, \"physiological gender\" should be communicated elsewhere.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Administrative Gender"
        }
      },
      {
        "id" : "EHDSPatient.address",
        "path" : "EHDSPatient.address",
        "short" : "Mailing and home or office addresses.",
        "definition" : "The addresses are always sequences of address parts (e.g. street address line, country, postal code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSPatient.telecom",
        "path" : "EHDSPatient.telecom",
        "short" : "Telecommunication contact information (addresses) associated to a person.",
        "definition" : "Telecommunication contact information (addresses) associated to a person.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      },
      {
        "id" : "EHDSPatient.maritalStatus",
        "path" : "EHDSPatient.maritalStatus",
        "short" : "Marital (civil) status of a patient",
        "definition" : "Marital (civil) status of a patient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 marital-status"
        }
      },
      {
        "id" : "EHDSPatient.communicationLanguage",
        "path" : "EHDSPatient.communicationLanguage",
        "short" : "The language which can be used to communicate with the patient about his or her health.",
        "definition" : "The language which can be used to communicate with the patient about his or her health.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP 47"
        }
      }
    ]
  }
}

```
