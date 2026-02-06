# Immunisation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunisation model**

## Logical Model: Immunisation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation | *Version*:0.2.1 |
| Draft as of 2025-11-27 | *Computable Name*:EHDSImmunisation |

 
EHDS refined base model for Immunisation 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSImmunisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSImmunisation.csv), [Excel](StructureDefinition-EHDSImmunisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSImmunisation",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "version" : "0.2.1",
  "name" : "EHDSImmunisation",
  "title" : "Immunisation model",
  "status" : "draft",
  "date" : "2025-11-27T07:14:42+00:00",
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
  "description" : "EHDS refined base model for Immunisation",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImmunisation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSImmunisation",
        "path" : "EHDSImmunisation",
        "short" : "Immunisation model",
        "definition" : "EHDS refined base model for Immunisation"
      },
      {
        "id" : "EHDSImmunisation.header.status",
        "path" : "EHDSImmunisation.header.status",
        "definition" : "Indicates the current status of the immunisation event (completed, not-done)."
      },
      {
        "id" : "EHDSImmunisation.diseaseOrAgentTargeted",
        "path" : "EHDSImmunisation.diseaseOrAgentTargeted",
        "short" : "Disease or agent targeted",
        "definition" : "Disease or agent that the vaccination provides protection against.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT"
        }
      },
      {
        "id" : "EHDSImmunisation.vaccine",
        "path" : "EHDSImmunisation.vaccine",
        "short" : "Type of vaccine",
        "definition" : "Generic description of the vaccine/prophylaxis or its component(s).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, ATC"
        }
      },
      {
        "id" : "EHDSImmunisation.administeredProduct",
        "path" : "EHDSImmunisation.administeredProduct",
        "short" : "Administered medicinal product",
        "definition" : "Administered medicinal product",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.doseNumber",
        "path" : "EHDSImmunisation.doseNumber",
        "short" : "Number in a series of vaccinations / doses",
        "definition" : "Order in the vaccination course.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.dateTimeOfVaccination",
        "path" : "EHDSImmunisation.dateTimeOfVaccination",
        "short" : "Date and time of vaccination",
        "definition" : "The date and optionally the exact time when the vaccination was administered.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.administeringCentre",
        "path" : "EHDSImmunisation.administeringCentre",
        "short" : "Administering centre",
        "definition" : "Name/code of administering centre or a health authority responsible for the vaccination event",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.vaccineAdministrator",
        "path" : "EHDSImmunisation.vaccineAdministrator",
        "short" : "Administrator of vaccine",
        "definition" : "Health professional responsible for administering the vaccine or prophylaxis",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSImmunisation.nextVaccinationDate",
        "path" : "EHDSImmunisation.nextVaccinationDate",
        "short" : "Next vaccination date",
        "definition" : "The date when the vaccination is planned to be given/repeated (e.g. next dose)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
