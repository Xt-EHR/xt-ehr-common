# Allergy intolerance model - EHDS Logical Information Models v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergy intolerance model**

## Logical Model: Allergy intolerance model 

| | |
| :--- | :--- |
| *Official URL*:https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSAllergyIntolerance | *Version*:0.2.0 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSAllergyIntolerance |

 
EHDS refined base model for allergy/intolerance 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/eu.ehds.models|current/StructureDefinition/EHDSAllergyIntolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAllergyIntolerance.csv), [Excel](StructureDefinition-EHDSAllergyIntolerance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAllergyIntolerance",
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
  "url" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSAllergyIntolerance",
  "version" : "0.2.0",
  "name" : "EHDSAllergyIntolerance",
  "title" : "Allergy intolerance model",
  "status" : "draft",
  "date" : "2026-01-23T07:00:19+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [
    {
      "name" : "Xt-EHR",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://Xt-EHR.eu"
        }
      ]
    }
  ],
  "description" : "EHDS refined base model for allergy/intolerance",
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
  "type" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSAllergyIntolerance",
  "baseDefinition" : "https://www.xt-ehr.eu/specifications/fhir/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAllergyIntolerance",
        "path" : "EHDSAllergyIntolerance",
        "short" : "Allergy intolerance model",
        "definition" : "EHDS refined base model for allergy/intolerance"
      },
      {
        "id" : "EHDSAllergyIntolerance.agentOrAllergen",
        "path" : "EHDSAllergyIntolerance.agentOrAllergen",
        "short" : "A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity.",
        "definition" : "A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.24 **eHDSIActiveIngredient** (ATC, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.61 eHDSISubstance (EMA SMS, used in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.19 eHDSIAllergenNoDrug (SCT, used in MH@EU); ICD-11 Allergens"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.typeOfPropensity",
        "path" : "EHDSAllergyIntolerance.typeOfPropensity",
        "short" : "This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)",
        "definition" : "This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)",
        "requirements" : "eHN PS Guideline, MyHealth@EU",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.18 eHDSIAdverseEventType (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-type (HL7, required in HL7 FHIR)"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.description",
        "path" : "EHDSAllergyIntolerance.description",
        "short" : "Textual description of the allergy or intolerance",
        "definition" : "Textual description of the allergy or intolerance",
        "requirements" : "eHN PS Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.criticality",
        "path" : "EHDSAllergyIntolerance.criticality",
        "short" : "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.",
        "definition" : "Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.57 eHDSICriticality (HL7, used in MH@EU); http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (HL7, required in HL7 FHIR)"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.certainty",
        "path" : "EHDSAllergyIntolerance.certainty",
        "short" : "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition",
        "definition" : "Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and /or clinical evidence of condition",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.58 eHDSIAllergyCertainty (HL7, used in MH@EU) ; http://hl7.org/fhir/ValueSet/allergyintolerance-verification (HL7, required in HL7 FHIR)"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.status",
        "path" : "EHDSAllergyIntolerance.status",
        "short" : "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc.",
        "definition" : "Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc.",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.59 eHDSIAllergyStatus (HL7, used in MH@EU); http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (HL7, required in HL7 FHIR)"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.onsetDate",
        "path" : "EHDSAllergyIntolerance.onsetDate",
        "short" : "When allergy or intolerance was identified",
        "definition" : "When allergy or intolerance was identified",
        "requirements" : "MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.endDate",
        "path" : "EHDSAllergyIntolerance.endDate",
        "short" : "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)",
        "definition" : "Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)",
        "requirements" : "eHN PS Guideline, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction",
        "path" : "EHDSAllergyIntolerance.reaction",
        "short" : "Adverse Reaction Events linked to exposure to substance.",
        "definition" : "Adverse Reaction Events linked to exposure to substance.",
        "requirements" : "ISO IPS (explicit), implicitly in eHN PS Guideline, MH@EU",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.manifestation",
        "path" : "EHDSAllergyIntolerance.reaction.manifestation",
        "short" : "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction).",
        "definition" : "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema. (the clinical manifestation also gives information about the severity of the observed reaction).",
        "requirements" : "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL. Cardinality in MyHealth@EU for this element, used here, is one manifestation per severity and onset, while the cardinality in FHIR IPS IG allows multiple manifestations per severity and onset.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.5 eHDSIIllnessandDisorder (ICD-10, alternative in MH@EU); 1.3.6.1.4.1.12559.11.10.1.3.1.42.11 eHDSIReactionAllergy (SCT, alternative in MH@EU); ICD-11 MMS"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.date",
        "path" : "EHDSAllergyIntolerance.reaction.date",
        "short" : "Date and time of allergy manifestation",
        "definition" : "Date and time of allergy manifestation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.severity",
        "path" : "EHDSAllergyIntolerance.reaction.severity",
        "short" : "Severity of the clinical manifestation of the allergic reaction.",
        "definition" : "Severity of the clinical manifestation of the allergic reaction.",
        "requirements" : "The element is present in eHN PS GL, MyHealth@EU specifications and ISO IPS. Element name and description is taken from eHN PS GL.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "1.3.6.1.4.1.12559.11.10.1.3.1.42.13 eHDSISeverity (SCT, used in MH@EU); http://hl7.org/fhir/ValueSet/reaction-event-severity (HL7, Required in HL7 FHIR)"
        }
      },
      {
        "id" : "EHDSAllergyIntolerance.reaction.onsetDate",
        "path" : "EHDSAllergyIntolerance.reaction.onsetDate",
        "short" : "Date of the observation of the reaction",
        "definition" : "Date of the observation of the reaction",
        "requirements" : "The element is present in eHN PS GL. Element name and description is taken from eHN PS GL.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
