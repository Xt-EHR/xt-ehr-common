# Patient Animal model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Animal model**

## Logical Model: Patient Animal model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientAnimal | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSPatientAnimal |

 
EHDS refined base model for Patient:Animal 

**Usages:**

* Use this Logical Model: [Observation model](StructureDefinition-EHDSObservation.md) and [Specimen model](StructureDefinition-EHDSSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSPatientAnimal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSPatientAnimal.csv), [Excel](StructureDefinition-EHDSPatientAnimal.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSPatientAnimal",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientAnimal",
  "version" : "0.2.1",
  "name" : "EHDSPatientAnimal",
  "title" : "Patient Animal model",
  "status" : "draft",
  "date" : "2026-02-05T11:39:55+00:00",
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
  "description" : "EHDS refined base model for Patient:Animal",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientAnimal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSPatientAnimal",
        "path" : "EHDSPatientAnimal",
        "short" : "Patient Animal model",
        "definition" : "EHDS refined base model for Patient:Animal"
      },
      {
        "id" : "EHDSPatientAnimal.animalIdentifier",
        "path" : "EHDSPatientAnimal.animalIdentifier",
        "short" : "Animal identifier",
        "definition" : "An identifier of the animal that is unique within a defined scope.  Multiple identifiers could be provided. ",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSPatientAnimal.species",
        "path" : "EHDSPatientAnimal.species",
        "short" : "Species",
        "definition" : "Identifies the high level taxonomic categorization of the kind of animal. E.g. Dog, Cow.",
        "min" : 1,
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
        "id" : "EHDSPatientAnimal.breed",
        "path" : "EHDSPatientAnimal.breed",
        "short" : "Breed",
        "definition" : "Identifies the detailed categorization of the kind of animal. E.g. Poodle, Angus.",
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
        "id" : "EHDSPatientAnimal.genderStatus",
        "path" : "EHDSPatientAnimal.genderStatus",
        "short" : "Gender status",
        "definition" : "Indicates the current state of the animal's reproductive organs. E.g. Neutered, Intact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:animal-genderstatus"
        }
      },
      {
        "id" : "EHDSPatientAnimal.name",
        "path" : "EHDSPatientAnimal.name",
        "short" : "Name",
        "definition" : "Name of the animal.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName"
          }
        ]
      },
      {
        "id" : "EHDSPatientAnimal.dateOfBirth",
        "path" : "EHDSPatientAnimal.dateOfBirth",
        "short" : "Date of birth",
        "definition" : "The date of birth for the animal.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "EHDSPatientAnimal.gender",
        "path" : "EHDSPatientAnimal.gender",
        "short" : "Gender",
        "definition" : "The gender of the animal.",
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
        "id" : "EHDSPatientAnimal.address",
        "path" : "EHDSPatientAnimal.address",
        "short" : "Address",
        "definition" : "Address where the animal is located. The addresses are always sequences of address parts (e.g. street address line, country, ZIP code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSPatientAnimal.deceased[x]",
        "path" : "EHDSPatientAnimal.deceased[x]",
        "short" : "Deceased",
        "definition" : "Indicates if the individual is deceased or not.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          },
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
