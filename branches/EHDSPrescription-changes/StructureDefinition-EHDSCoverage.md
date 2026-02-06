# Coverage model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coverage model**

## Logical Model: Coverage model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCoverage | *Version*:0.2.1 |
| Draft as of 2026-02-01 | *Computable Name*:EHDSCoverage |

 
EHDS refined base model for Coverage 

**Usages:**

* Use this Logical Model: [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSCoverage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSCoverage.csv), [Excel](StructureDefinition-EHDSCoverage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSCoverage",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCoverage",
  "version" : "0.2.1",
  "name" : "EHDSCoverage",
  "title" : "Coverage model",
  "status" : "draft",
  "date" : "2026-02-01T15:56:56+00:00",
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
  "description" : "EHDS refined base model for Coverage",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCoverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSCoverage",
        "path" : "EHDSCoverage",
        "short" : "Coverage model",
        "definition" : "EHDS refined base model for Coverage"
      },
      {
        "id" : "EHDSCoverage.identifier",
        "path" : "EHDSCoverage.identifier",
        "short" : "Business Identifier for the coverage",
        "definition" : "Business Identifier for the coverage",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSCoverage.type",
        "path" : "EHDSCoverage.type",
        "short" : "Type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organisation.",
        "definition" : "Type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organisation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:coverage-selfpay, hl7:v3-ActCoverageTypeCode"
        }
      },
      {
        "id" : "EHDSCoverage.patient",
        "path" : "EHDSCoverage.patient",
        "short" : "Patient who benefits from the insurance coverage when products and/or services are provided.",
        "definition" : "Patient who benefits from the insurance coverage when products and/or services are provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSCoverage.payor",
        "path" : "EHDSCoverage.payor",
        "short" : "Payor including both insurance and non-insurance agreements, such as patient-pay agreements.",
        "definition" : "Payor including both insurance and non-insurance agreements, such as patient-pay agreements.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSCoverage.payor.payorEntity[x]",
        "path" : "EHDSCoverage.payor.payorEntity[x]",
        "short" : "Payor entity",
        "definition" : "Payor entity",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          }
        ]
      },
      {
        "id" : "EHDSCoverage.payor.subscriberId",
        "path" : "EHDSCoverage.payor.subscriberId",
        "short" : "Number or code under which the insured person is registered at the insurance provider.",
        "definition" : "Number or code under which the insured person is registered at the insurance provider.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      }
    ]
  }
}

```
