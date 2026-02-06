# Advance directive model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Advance directive model**

## Logical Model: Advance directive model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective | *Version*:0.2.1 |
| Draft as of 2026-01-28 | *Computable Name*:EHDSAdvanceDirective |

 
Healthcare directives concerning life or after life wishes of the patient 

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAdvanceDirective)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSAdvanceDirective.csv), [Excel](StructureDefinition-EHDSAdvanceDirective.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdvanceDirective",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "version" : "0.2.1",
  "name" : "EHDSAdvanceDirective",
  "title" : "Advance directive model",
  "status" : "draft",
  "date" : "2026-01-28T12:31:26+00:00",
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
  "description" : "Healthcare directives concerning life or after life wishes of the patient",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSAdvanceDirective",
        "path" : "EHDSAdvanceDirective",
        "short" : "Advance directive model",
        "definition" : "Healthcare directives concerning life or after life wishes of the patient"
      },
      {
        "id" : "EHDSAdvanceDirective.category",
        "path" : "EHDSAdvanceDirective.category",
        "short" : "Categories of Directives related to decisions prior and after death",
        "definition" : "Categories of Directives related to decisions prior and after death",
        "comment" : "Examples:\nIntubation,\nTube Feedings,\nLife Support,\nCardiopulmonary resuscitation,\nAntibiotics,\nResuscitation,\nArtificial respiration,\nAdministration of medication,\nTransfusion,\nTransfer of care to hospital,\nDialysis procedure,\nNegative declaration,\nOrgan donation,\nBody donation,\nIntravenous infusion",
        "requirements" : "ISO IPS",
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
      },
      {
        "id" : "EHDSAdvanceDirective.narrative",
        "path" : "EHDSAdvanceDirective.narrative",
        "short" : "Textual description of the directive",
        "definition" : "Textual description of the directive",
        "requirements" : "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSAdvanceDirective.effectivePeriod",
        "path" : "EHDSAdvanceDirective.effectivePeriod",
        "short" : "Time period during which the directive is effective",
        "definition" : "Time period during which the directive is effective",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSAdvanceDirective.authorisingEntity[x]",
        "path" : "EHDSAdvanceDirective.authorisingEntity[x]",
        "short" : "Person or organisation that authorizes the directive",
        "definition" : "Person or organisation that authorizes the directive",
        "requirements" : "ISO IPS",
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
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSAdvanceDirective.relatedConditions[x]",
        "path" : "EHDSAdvanceDirective.relatedConditions[x]",
        "short" : "The problem or disorder to which the living will applies. Multiple fields could be provided.",
        "definition" : "The problem or disorder to which the living will applies. Multiple fields could be provided.",
        "requirements" : "ISO IPS",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10, SNOMED CT, Orphacode"
        }
      },
      {
        "id" : "EHDSAdvanceDirective.advanceDirectiveDocument",
        "path" : "EHDSAdvanceDirective.advanceDirectiveDocument",
        "short" : "Scanned source document with the living will and the patient's signature, such as a PDF.",
        "definition" : "Scanned source document with the living will and the patient's signature, such as a PDF.",
        "requirements" : "eHN HDR Guideline, ISO IPS",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
          }
        ]
      }
    ]
  }
}

```
