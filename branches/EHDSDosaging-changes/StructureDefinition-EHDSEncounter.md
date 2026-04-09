# Encounter model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter model**

## Logical Model: Encounter model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter | *Version*:0.2.1 |
| Draft as of 2026-02-04 | *Computable Name*:EHDSEncounter |

 
EHDS refined base model for Encounter 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEncounter.csv), [Excel](StructureDefinition-EHDSEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEncounter",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "version" : "0.2.1",
  "name" : "EHDSEncounter",
  "title" : "Encounter model",
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
  "description" : "EHDS refined base model for Encounter",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEncounter",
        "path" : "EHDSEncounter",
        "short" : "Encounter model",
        "definition" : "EHDS refined base model for Encounter"
      },
      {
        "id" : "EHDSEncounter.priority",
        "path" : "EHDSEncounter.priority",
        "short" : "Priority",
        "definition" : "Indicates the urgency of the encounter.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:v3-xEncounterAdmissionUrgency"
        }
      },
      {
        "id" : "EHDSEncounter.type",
        "path" : "EHDSEncounter.type",
        "short" : "Encounter type",
        "definition" : "The type of the encounter whether inpatient or short stay encounter.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7v3:ActEncounterCode"
        }
      },
      {
        "id" : "EHDSEncounter.note",
        "path" : "EHDSEncounter.note",
        "short" : "A narrative description of the encounter course.",
        "definition" : "A narrative description of the encounter course.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.episodeOfCare",
        "path" : "EHDSEncounter.episodeOfCare",
        "short" : "Reference to the episode(s) of care that this encounter should be recorded against",
        "definition" : "Reference to the episode(s) of care that this encounter should be recorded against",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEpisodeOfCare"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.basedOn[x]",
        "path" : "EHDSEncounter.basedOn[x]",
        "short" : "Reference to the request that initiated this encounter",
        "definition" : "Reference to the request that initiated this encounter",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCarePlan"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.partOf",
        "path" : "EHDSEncounter.partOf",
        "short" : "Reference to another encounter this encounter is part of",
        "definition" : "Reference to another encounter this encounter is part of",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.serviceProvider",
        "path" : "EHDSEncounter.serviceProvider",
        "short" : "The organisation (facility) responsible for this encounter",
        "definition" : "The organisation (facility) responsible for this encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.actualPeriod",
        "path" : "EHDSEncounter.actualPeriod",
        "short" : "The actual start and end time of the encounter",
        "definition" : "The actual start and end time of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.plannedStartDate",
        "path" : "EHDSEncounter.plannedStartDate",
        "short" : "The planned start date/time (or admission date) of the encounter",
        "definition" : "The planned start date/time (or admission date) of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.plannedEndDate",
        "path" : "EHDSEncounter.plannedEndDate",
        "short" : "The planned end date/time (or discharge date) of the encounter",
        "definition" : "The planned end date/time (or discharge date) of the encounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission",
        "path" : "EHDSEncounter.admission",
        "short" : "Details about the admission to a healthcare service",
        "definition" : "Details about the admission to a healthcare service",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.admitter",
        "path" : "EHDSEncounter.admission.admitter",
        "short" : "Admitting healthcare professional",
        "definition" : "Admitting healthcare professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.admitSource",
        "path" : "EHDSEncounter.admission.admitSource",
        "short" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "definition" : "From where the patient was admitted (e.g. physician referral, transfer).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:admit-source"
        }
      },
      {
        "id" : "EHDSEncounter.admission.referringProfessional",
        "path" : "EHDSEncounter.admission.referringProfessional",
        "short" : "Referring Healthcare Professional",
        "definition" : "Referring Healthcare Professional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.reason[x]",
        "path" : "EHDSEncounter.admission.reason[x]",
        "short" : "Reason(s) for admission, e.g. problem, procedure or finding.",
        "definition" : "Reason(s) for admission, e.g. problem, procedure or finding.",
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
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.reasonComment",
        "path" : "EHDSEncounter.admission.reasonComment",
        "short" : "Explanation of the reason for the encounter.",
        "definition" : "Explanation of the reason for the encounter.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.admission.legalStatus",
        "path" : "EHDSEncounter.admission.legalStatus",
        "short" : "Legal status/situation at admission (indicates the basis on which the patient is staying in a healthcare organisation).",
        "definition" : "Legal status can be either voluntary or involuntary, however the legal status is always determined by a court. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority).",
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
        "id" : "EHDSEncounter.discharge",
        "path" : "EHDSEncounter.discharge",
        "short" : "Discharge details",
        "definition" : "Discharge details",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.discharge.destinationType",
        "path" : "EHDSEncounter.discharge.destinationType",
        "short" : "Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.",
        "definition" : "Type of location to which the patient will go after the encounter. E.g. home, hospital, nursing home, left against medical advice etc.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7.discharge-disposition"
        }
      },
      {
        "id" : "EHDSEncounter.discharge.destinationLocation[x]",
        "path" : "EHDSEncounter.discharge.destinationLocation[x]",
        "short" : "The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact.",
        "definition" : "The location/organisation to which the patient will go after the encounter. Name, address and telecommunication contact.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.location",
        "path" : "EHDSEncounter.location",
        "short" : "List of locations where the patient has been.",
        "definition" : "List of locations where the patient has been.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.location.period",
        "path" : "EHDSEncounter.location.period",
        "short" : "Time period during which the patient was present at the location",
        "definition" : "Time period during which the patient was present at the location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSEncounter.location.organisationPart[x]",
        "path" : "EHDSEncounter.location.organisationPart[x]",
        "short" : "Organisation or organisation part (department) where the patient was present.",
        "definition" : "Organisation or organisation part (department) where the patient was present.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          }
        ]
      }
    ]
  }
}

```
