# Service request model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Service request model**

## Logical Model: Service request model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest | *Version*:0.2.1 |
| Draft as of 2026-01-19 | *Computable Name*:EHDSServiceRequest |

 
EHDS refined base model for Specification of requested service or services 

**Usages:**

* Use this Logical Model: [Encounter model](StructureDefinition-EHDSEncounter.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Observation model](StructureDefinition-EHDSObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSServiceRequest.csv), [Excel](StructureDefinition-EHDSServiceRequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSServiceRequest",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest",
  "version" : "0.2.1",
  "name" : "EHDSServiceRequest",
  "title" : "Service request model",
  "status" : "draft",
  "date" : "2026-01-19T14:03:05+00:00",
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
  "description" : "EHDS refined base model for Specification of requested service or services",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSServiceRequest",
        "path" : "EHDSServiceRequest",
        "short" : "Service request model",
        "definition" : "EHDS refined base model for Specification of requested service or services"
      },
      {
        "id" : "EHDSServiceRequest.serviceText",
        "path" : "EHDSServiceRequest.serviceText",
        "short" : "Service text",
        "definition" : "Textual description of the requested service",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.serviceCode",
        "path" : "EHDSServiceRequest.serviceCode",
        "short" : "Service code",
        "definition" : "A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU, SNOMED CT"
        }
      },
      {
        "id" : "EHDSServiceRequest.reasonCode",
        "path" : "EHDSServiceRequest.reasonCode",
        "short" : "Reason code",
        "definition" : "Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "ICD-10 (ICD-11 when available), SNOMED CT, Orphacode"
        }
      },
      {
        "id" : "EHDSServiceRequest.quantity",
        "path" : "EHDSServiceRequest.quantity",
        "short" : "Quantity",
        "definition" : "Amount of requested services of the same type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.anatomicLocation",
        "path" : "EHDSServiceRequest.anatomicLocation",
        "short" : "Anatomic location",
        "definition" : "Anatomic location and laterality where the procedure should be performed. This is the target site.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.reasonReference[x]",
        "path" : "EHDSServiceRequest.reasonReference[x]",
        "short" : "Reason reference",
        "definition" : "Indicates another resource that provides a justification for why this service is being requested.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.priority",
        "path" : "EHDSServiceRequest.priority",
        "short" : "Priority",
        "definition" : "Indicates how quickly the ServiceRequest should be addressed with respect to other requests.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Request priority"
        }
      },
      {
        "id" : "EHDSServiceRequest.supportingInformation[x]",
        "path" : "EHDSServiceRequest.supportingInformation[x]",
        "short" : "Supporting information",
        "definition" : "Health conditions relevant for the results interpretation, e.g. fasting status, sex for clinical use, etc.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationAdministration"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.specimen",
        "path" : "EHDSServiceRequest.specimen",
        "short" : "Specimen",
        "definition" : "Specimens to be used by the laboratory procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.encounter",
        "path" : "EHDSServiceRequest.encounter",
        "short" : "Encounter",
        "definition" : "An encounter that provides additional information about the healthcare context in which this request is made.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEncounter"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.occurrence[x]",
        "path" : "EHDSServiceRequest.occurrence[x]",
        "short" : "Occurrence",
        "definition" : "When service should occur",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.patientInstructions",
        "path" : "EHDSServiceRequest.patientInstructions",
        "short" : "Patient instructions",
        "definition" : "Patient or consumer-oriented instructions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSServiceRequest.coverage",
        "path" : "EHDSServiceRequest.coverage",
        "short" : "Coverage",
        "definition" : "Insurance or medical plan or a payment agreement.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCoverage"
          }
        ]
      }
    ]
  }
}

```
