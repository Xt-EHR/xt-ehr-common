# Observation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation model**

## Logical Model: Observation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation | *Version*:0.2.1 |
| Draft as of 2026-01-23 | *Computable Name*:EHDSObservation |

 
EHDS refined base model for Observation information 

**Usages:**

* Derived from this Logical Model: [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md)
* Use this Logical Model: [Device use model](StructureDefinition-EHDSDeviceUse.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Episode of care model](StructureDefinition-EHDSEpisodeOfCare.md)... Show 8 more, [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Observation model](StructureDefinition-EHDSObservation.md), [Patient summary model](StructureDefinition-EHDSPatientSummary.md), [Procedure model](StructureDefinition-EHDSProcedure.md), [Service request model](StructureDefinition-EHDSServiceRequest.md) and [Social history model](StructureDefinition-EHDSSocialHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSObservation.csv), [Excel](StructureDefinition-EHDSObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSObservation",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "version" : "0.2.1",
  "name" : "EHDSObservation",
  "title" : "Observation model",
  "status" : "draft",
  "date" : "2026-01-23T12:56:44+00:00",
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
  "description" : "EHDS refined base model for Observation information",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSObservation",
        "path" : "EHDSObservation",
        "short" : "Observation model",
        "definition" : "EHDS refined base model for Observation information"
      },
      {
        "id" : "EHDSObservation.header.subject",
        "path" : "EHDSObservation.header.subject",
        "short" : "Patient who is receiving health care. This patient might be different from the direct subject of the observation."
      },
      {
        "id" : "EHDSObservation.header.status",
        "path" : "EHDSObservation.header.status",
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Observation status"
        }
      },
      {
        "id" : "EHDSObservation.header.directSubject[x]",
        "path" : "EHDSObservation.header.directSubject[x]",
        "short" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device",
        "definition" : "The direct subject of the observation if different from the patient (subject of care), e.g. an observation of an implanted device",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatientAnimal"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLocation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSProcedure"
          }
        ]
      },
      {
        "id" : "EHDSObservation.observationDate[x]",
        "path" : "EHDSObservation.observationDate[x]",
        "short" : "Clinically relevant time or time period for the observation",
        "definition" : "Clinically relevant time or time period for the observation",
        "min" : 1,
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
        "id" : "EHDSObservation.code",
        "path" : "EHDSObservation.code",
        "short" : "Observation code",
        "definition" : "Code representing the observation using the agreed code systems.",
        "min" : 1,
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
        "id" : "EHDSObservation.name",
        "path" : "EHDSObservation.name",
        "short" : "Name of the observation",
        "definition" : "Name of the observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.originalName",
        "path" : "EHDSObservation.originalName",
        "short" : "Original (conventional) name of the observation",
        "definition" : "Original (conventional) name of the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.method",
        "path" : "EHDSObservation.method",
        "short" : "Observation method",
        "definition" : "Observation method (measurement principle) to obtain the result.",
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
        "id" : "EHDSObservation.specimen",
        "path" : "EHDSObservation.specimen",
        "short" : "Specimen used for this observation.",
        "definition" : "Specimen used for this observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSSpecimen"
          }
        ]
      },
      {
        "id" : "EHDSObservation.order",
        "path" : "EHDSObservation.order",
        "short" : "Identifies order and order placer this observation belongs to",
        "definition" : "Identifies order and order placer this observation belongs to",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSServiceRequest"
          }
        ]
      },
      {
        "id" : "EHDSObservation.performer[x]",
        "path" : "EHDSObservation.performer[x]",
        "short" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "definition" : "Performer of the observation. Some test could be performed by the patient himself or by a care giver. Those are in the scope of this deliverable under specified conditions.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSPatient"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSRelatedPerson"
          }
        ]
      },
      {
        "id" : "EHDSObservation.anatomicLocation",
        "path" : "EHDSObservation.anatomicLocation",
        "short" : "Anatomic location and laterality where the observation was performed.",
        "definition" : "Anatomic location and laterality where the observation was performed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSBodyStructure"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result",
        "path" : "EHDSObservation.result",
        "short" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.value",
        "path" : "EHDSObservation.result.value",
        "short" : "Observation result value according to the type of observation.",
        "definition" : "Observation result value according to the type of observation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.value.text",
        "path" : "EHDSObservation.result.value.text",
        "short" : "Observation result value as a text. Should be used only if coded result value is not expected otherwise use valueCodeableConcept.text.",
        "definition" : "Observation result value as a text. Should be used only if coded result value is not expected otherwise use valueCodeableConcept.text.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.value.numeric",
        "path" : "EHDSObservation.result.value.numeric",
        "short" : "Observation result value as a quantity, result units of the measurement should be provided.",
        "definition" : "Observation result value as a quantity, result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.result.value.range",
        "path" : "EHDSObservation.result.value.range",
        "short" : "Observation result value as a range (open or closed). Result units of the measurement should be provided.",
        "definition" : "Observation result value as a range (open or closed). Result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.result.value.coded",
        "path" : "EHDSObservation.result.value.coded",
        "short" : "Observation result value from a valid code system",
        "definition" : "Observation result value from a valid code system",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "example" : [
          {
            "label" : "coded result",
            "valueString" : "For example this could be a code describing identified bacteria or other microorganism identified, description of urinary concernment, jaundice (hyperbilirubinemia), scoring (GCS), etc."
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT"
        }
      },
      {
        "id" : "EHDSObservation.result.value.uncertainty",
        "path" : "EHDSObservation.result.value.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty type and interval if needed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.result.uncertainty",
        "path" : "EHDSObservation.result.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty type and interval if needed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.dataAbsentReason",
        "path" : "EHDSObservation.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.referenceRange",
        "path" : "EHDSObservation.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "definition" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.interpretation",
        "path" : "EHDSObservation.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      },
      {
        "id" : "EHDSObservation.resultDescription",
        "path" : "EHDSObservation.resultDescription",
        "short" : "Comments and narrative representation of the observation result and findings.",
        "definition" : "Comments and narrative representation of the observation result and findings.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component",
        "path" : "EHDSObservation.component",
        "short" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "definition" : "Component in case the observation consists of multiple sub-observations (e.g. blood pressure).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.code",
        "path" : "EHDSObservation.component.code",
        "short" : "Code representing the observation using the agreed code systems.",
        "definition" : "Code representing the observation using the agreed code systems.",
        "min" : 1,
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
        "id" : "EHDSObservation.component.originalName",
        "path" : "EHDSObservation.component.originalName",
        "short" : "Original (conventional) name of the observation",
        "definition" : "Original (conventional) name of the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result",
        "path" : "EHDSObservation.component.result",
        "short" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "definition" : "Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.value",
        "path" : "EHDSObservation.component.result.value",
        "short" : "Observation result value according to the type of observation.",
        "definition" : "Observation result value according to the type of observation.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.value.text",
        "path" : "EHDSObservation.component.result.value.text",
        "short" : "Observation result value as a text. Should be used only if coded result value is not expected otherwise use valueCodeableConcept.text.",
        "definition" : "Observation result value as a text. Should be used only if coded result value is not expected otherwise use valueCodeableConcept.text.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.result.value.numeric",
        "path" : "EHDSObservation.component.result.value.numeric",
        "short" : "Observation result value as a quantity, result units of the measurement should be provided.",
        "definition" : "Observation result value as a quantity, result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.component.result.value.range",
        "path" : "EHDSObservation.component.result.value.range",
        "short" : "Observation result value as a range (open or closed). Result units of the measurement should be provided.",
        "definition" : "Observation result value as a range (open or closed). Result units of the measurement should be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units"
        }
      },
      {
        "id" : "EHDSObservation.component.result.value.coded",
        "path" : "EHDSObservation.component.result.value.coded",
        "short" : "Observation result value from a valid code system",
        "definition" : "Observation result value from a valid code system",
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
        "id" : "EHDSObservation.component.result.uncertainty",
        "path" : "EHDSObservation.component.result.uncertainty",
        "short" : "Measurement uncertainty type and interval if needed.",
        "definition" : "Measurement uncertainty type and interval if needed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.dataAbsentReason",
        "path" : "EHDSObservation.component.dataAbsentReason",
        "short" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "definition" : "Provides a reason why the expected value in the element Observation.value[x] is missing.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 Data absent reason"
        }
      },
      {
        "id" : "EHDSObservation.component.referenceRange",
        "path" : "EHDSObservation.component.referenceRange",
        "short" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "definition" : "Reference range, multiple reference ranges of different types culd by provided. Provides guide for interpretation of result.",
        "comment" : "Reference ranges are usually implied only for a numeric scale type. Use of the same units for reference range and value is implied.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSObservation.component.interpretation",
        "path" : "EHDSObservation.component.interpretation",
        "short" : "Information about reference intervals and result interpretation.",
        "definition" : "Information about reference intervals and result interpretation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "SNOMED CT, HL7 ObservationInterpretation"
        }
      },
      {
        "id" : "EHDSObservation.derivedFrom[x]",
        "path" : "EHDSObservation.derivedFrom[x]",
        "short" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "definition" : "Reference to the related resource from which the observation has been made. For example, a calculated anion gap or a fetal measurement based on an ultrasound image.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSImagingStudy"
          }
        ]
      },
      {
        "id" : "EHDSObservation.triggeredBy[x]",
        "path" : "EHDSObservation.triggeredBy[x]",
        "short" : "References to the observation(s) that triggered the performance of this observation.",
        "definition" : "References to the observation(s) that triggered the performance of this observation.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      },
      {
        "id" : "EHDSObservation.hasMember[x]",
        "path" : "EHDSObservation.hasMember[x]",
        "short" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "definition" : "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
          }
        ]
      }
    ]
  }
}

```
