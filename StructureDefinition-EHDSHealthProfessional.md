# Health professional model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health professional model**

## Logical Model: Health professional model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional | *Version*:0.2.1 |
| Draft as of 2025-10-10 | *Computable Name*:EHDSHealthProfessional |

 
EHDS refined base model for Health professional (HP) 

**Usages:**

* Use this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Condition model](StructureDefinition-EHDSCondition.md), [DataSet model](StructureDefinition-EHDSDataSet.md), [Device use model](StructureDefinition-EHDSDeviceUse.md)...Show 11 more,[Discharge Report model](StructureDefinition-EHDSDischargeReport.md),[Document model](StructureDefinition-EHDSDocument.md),[Encounter model](StructureDefinition-EHDSEncounter.md),[Imaging report model](StructureDefinition-EHDSImagingReport.md),[Immunisation model](StructureDefinition-EHDSImmunisation.md),[Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md),[Media model](StructureDefinition-EHDSMedia.md),[Medication dispense model](StructureDefinition-EHDSMedicationDispense.md),[Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md),[Observation model](StructureDefinition-EHDSObservation.md)and[Procedure model](StructureDefinition-EHDSProcedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSHealthProfessional)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSHealthProfessional.csv), [Excel](StructureDefinition-EHDSHealthProfessional.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSHealthProfessional",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional",
  "version" : "0.2.1",
  "name" : "EHDSHealthProfessional",
  "title" : "Health professional model",
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
  "description" : "EHDS refined base model for Health professional (HP)",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSHealthProfessional",
        "path" : "EHDSHealthProfessional",
        "short" : "Health professional model",
        "definition" : "EHDS refined base model for Health professional (HP)"
      },
      {
        "id" : "EHDSHealthProfessional.identifier",
        "path" : "EHDSHealthProfessional.identifier",
        "short" : "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided.",
        "definition" : "An identifier of the health professional that is unique within a defined scope. Example: National health professional ID. Multiple identifiers could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.name",
        "path" : "EHDSHealthProfessional.name",
        "short" : "Name of the health professional that has been treating or taking responsibility for the patient.",
        "definition" : "Name of the health professional that has been treating or taking responsibility for the patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHumanName"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.address",
        "path" : "EHDSHealthProfessional.address",
        "short" : "Mailing and office or home addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "definition" : "Mailing and office or home addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.telecom",
        "path" : "EHDSHealthProfessional.telecom",
        "short" : "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided.",
        "definition" : "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.professionalRole",
        "path" : "EHDSHealthProfessional.professionalRole",
        "short" : "Professional role that the health professional is practicing at a given organisation. This is a generalisation of the FHIR PractitionerRole resource, which is used to represent the role of a practitioner in a specific context, such as a specific organisation or location.",
        "definition" : "Professional role that the health professional is practicing at a given organisation. This is a generalisation of the FHIR PractitionerRole resource, which is used to represent the role of a practitioner in a specific context, such as a specific organisation or location.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.professionalRole.role",
        "path" : "EHDSHealthProfessional.professionalRole.role",
        "short" : "Health professional role. Multiple roles could be provided.",
        "definition" : "Health professional role. Multiple roles could be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ISCO, SNOMED CT"
        }
      },
      {
        "id" : "EHDSHealthProfessional.professionalRole.organisation",
        "path" : "EHDSHealthProfessional.professionalRole.organisation",
        "short" : "The organisation where this role is available",
        "definition" : "The organisation where this role is available",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSHealthProfessional.professionalRole.specialty",
        "path" : "EHDSHealthProfessional.professionalRole.specialty",
        "short" : "The specialty of a practitioner that describes the functional role they are practicing at a given organisation",
        "definition" : "The specialty of a practitioner that describes the functional role they are practicing at a given organisation",
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
      }
    ]
  }
}

```
