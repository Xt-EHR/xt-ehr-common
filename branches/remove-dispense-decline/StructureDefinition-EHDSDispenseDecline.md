# Medication dispense decline model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication dispense decline model**

## Logical Model: Medication dispense decline model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDispenseDecline | *Version*:0.2.1 |
| Draft as of 2025-12-22 | *Computable Name*:EHDSDispenseDecline |

 
Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDispenseDecline)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSDispenseDecline.csv), [Excel](StructureDefinition-EHDSDispenseDecline.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDispenseDecline",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDispenseDecline",
  "version" : "0.2.1",
  "name" : "EHDSDispenseDecline",
  "title" : "Medication dispense decline model",
  "status" : "draft",
  "date" : "2025-12-22T11:06:01+00:00",
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
  "description" : "Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment).",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDispenseDecline",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSDispenseDecline",
        "path" : "EHDSDispenseDecline",
        "short" : "Medication dispense decline model",
        "definition" : "Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment)."
      },
      {
        "id" : "EHDSDispenseDecline.header.statusReason[x]",
        "path" : "EHDSDispenseDecline.header.statusReason[x]",
        "short" : "Reason for not dispensing the medication",
        "min" : 1
      },
      {
        "id" : "EHDSDispenseDecline.relatedRequest",
        "path" : "EHDSDispenseDecline.relatedRequest",
        "short" : "The single-item prescription or prescription line item that was declined by the dispenser. [Used for searching]",
        "definition" : "The single-item prescription or prescription line item that was declined by the dispenser. [Used for searching]",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription"
          }
        ]
      },
      {
        "id" : "EHDSDispenseDecline.comment",
        "path" : "EHDSDispenseDecline.comment",
        "short" : "Additional information about why the dispensation was declined.",
        "definition" : "Additional information about why the dispensation was declined.",
        "min" : 0,
        "max" : "1",
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
