# DataSet model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DataSet model**

## Logical Model: DataSet model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet | *Version*:0.2.1 |
| Draft as of 2026-02-04 | *Computable Name*:EHDSDataSet |

 
Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources. 

**Usages:**

* Derived from this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Alert model](StructureDefinition-EHDSAlert.md), [Allergy intolerance model](StructureDefinition-EHDSAllergyIntolerance.md), [Care plan model](StructureDefinition-EHDSCarePlan.md)... Show 22 more, [Condition model](StructureDefinition-EHDSCondition.md), [Current pregnancy status model](StructureDefinition-EHDSCurrentPregnancy.md), [Device use model](StructureDefinition-EHDSDeviceUse.md), [Document model](StructureDefinition-EHDSDocument.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md), [Family member history model](StructureDefinition-EHDSFamilyMemberHistory.md), [Functional status](StructureDefinition-EHDSFunctionalStatus.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Infectious contact model](StructureDefinition-EHDSInfectiousContact.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md), [Medication statement model](StructureDefinition-EHDSMedicationStatement.md), [Observation model](StructureDefinition-EHDSObservation.md), [Pregnancy history model](StructureDefinition-EHDSPregnancyHistory.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md), [Social history model](StructureDefinition-EHDSSocialHistory.md), [Substance use model](StructureDefinition-EHDSSubstanceUse.md) and [Travel history model](StructureDefinition-EHDSTravelHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDataSet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDataSet.csv), [Excel](StructureDefinition-EHDSDataSet.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDataSet",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "version" : "0.2.1",
  "name" : "EHDSDataSet",
  "title" : "DataSet model",
  "status" : "draft",
  "date" : "2026-02-04T23:19:13+00:00",
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
  "description" : "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDataSet",
        "path" : "EHDSDataSet",
        "short" : "DataSet model",
        "definition" : "Common elements (including header) for all documents and their independently functioning parts, e.g FHIR resources."
      },
      {
        "id" : "EHDSDataSet.header",
        "path" : "EHDSDataSet.header",
        "short" : "Common header for all patient-related data",
        "definition" : "Common header for all patient-related data",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.subject",
        "path" : "EHDSDataSet.header.subject",
        "short" : "Patient/subject information",
        "definition" : "Patient/subject information",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.identifier",
        "path" : "EHDSDataSet.header.identifier",
        "short" : "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries).",
        "definition" : "Business identifier for the object, unique within its system. Supporting disambiguation between different contexts (systems/countries).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.authorship",
        "path" : "EHDSDataSet.header.authorship",
        "short" : "Resource authoring details. Multiple authors can be provided.",
        "definition" : "Resource authoring details. Multiple authors can be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.authorship.author[x]",
        "path" : "EHDSDataSet.header.authorship.author[x]",
        "short" : "Author responsible for the provided information. The exact role of the responsible author varies across use cases and is often specified in individual models.",
        "definition" : "Author responsible for the provided information. The exact role of the responsible author varies across use cases and is often specified in individual models.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.authorship.datetime",
        "path" : "EHDSDataSet.header.authorship.datetime",
        "short" : "Date and time of authoring/issuing",
        "definition" : "Date and time of authoring/issuing",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.status",
        "path" : "EHDSDataSet.header.status",
        "short" : "Status of the resource or document",
        "definition" : "Status of the resource or document",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSDataSet.header.language",
        "path" : "EHDSDataSet.header.language",
        "short" : "Language in which the resource is written. Language is expressed by the IETF language tag.",
        "definition" : "Language in which the resource is written. Language is expressed by the IETF language tag.",
        "min" : 0,
        "max" : "1",
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
