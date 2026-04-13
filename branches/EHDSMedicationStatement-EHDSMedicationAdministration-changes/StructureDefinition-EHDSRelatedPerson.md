# Related person model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Related person model**

## Logical Model: Related person model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSRelatedPerson |

 
EHDS refined base model for Patient/subject guardian and other related person information 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md)... Show 2 more, [Observation model](StructureDefinition-EHDSObservation.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSRelatedPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSRelatedPerson.csv), [Excel](StructureDefinition-EHDSRelatedPerson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSRelatedPerson",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson",
  "version" : "0.2.1",
  "name" : "EHDSRelatedPerson",
  "title" : "Related person model",
  "status" : "draft",
  "date" : "2026-02-05T21:14:20+00:00",
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
  "description" : "EHDS refined base model for Patient/subject guardian and other related person information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSRelatedPerson",
        "path" : "EHDSRelatedPerson",
        "short" : "Related person model",
        "definition" : "EHDS refined base model for Patient/subject guardian and other related person information"
      },
      {
        "id" : "EHDSRelatedPerson.personalIdentifier",
        "path" : "EHDSRelatedPerson.personalIdentifier",
        "short" : "An identifier of the related person that is unique within a defined scope (e.g. national ID number). Multiple identifiers could be provided.",
        "definition" : "An identifier of the related person that is unique within a defined scope (e.g. national ID number). Multiple identifiers could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSRelatedPerson.name",
        "path" : "EHDSRelatedPerson.name",
        "short" : "Name associated with the person.",
        "definition" : "Name associated with the person.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName"
          }
        ]
      },
      {
        "id" : "EHDSRelatedPerson.subject",
        "path" : "EHDSRelatedPerson.subject",
        "short" : "The patient in relation to whom the related person is defined.",
        "definition" : "The patient in relation to whom the related person is defined.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSRelatedPerson.relationship",
        "path" : "EHDSRelatedPerson.relationship",
        "short" : "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc.",
        "definition" : "Relationship between a patient and a contact person for that patient. This includes relatives, guardians, caring persons etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 RoleCode"
        }
      },
      {
        "id" : "EHDSRelatedPerson.address",
        "path" : "EHDSRelatedPerson.address",
        "short" : "Address",
        "definition" : "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSRelatedPerson.telecom",
        "path" : "EHDSRelatedPerson.telecom",
        "short" : "Telecom",
        "definition" : "Telecommunication contact information (addresses) associated to a person. Multiple telecommunication addresses might be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      }
    ]
  }
}

```
