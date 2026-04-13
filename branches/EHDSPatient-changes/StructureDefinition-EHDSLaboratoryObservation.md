# Laboratory observation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory observation model**

## Logical Model: Laboratory observation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSLaboratoryObservation |

 
EHDS refined base model for Observation performed by laboratory 

## Scope and Usage

**Observation** is one of the most complex and versatile structures in the logical model. It is designed to cover many different types of observations across a wide range of use cases, from sharing simple findings (e.g. skin color or pulse rate) to representing complex laboratory and medical test results.

The Observation model includes several elements that support complex scenarios in which an observation either:

* consists of several parts that are observed at the same time, under the same conditions, and need to be reported together, or
* is composed of multiple observations that may be performed at different times and under different conditions, but need to be logically grouped to express the intended clinical meaning or workflow.

To support this flexibility, the Observation model allows the use of additional **components** within a single observation and/or **relationships** of various types between different observations.

One of the crucial challenges is selecting the appropriate modeling approach to accurately express the intended semantic meaning for each complex observation scenario.

## When to use components

### Semantic meaning of components

A **component** represents a structured sub-result that:

* is measured together with other components,
* shares the same observation context, and
* is not clinically meaningful on its own.

Components answer the question:

> **“What are the parts of this one observation?”**

All components share the same:

* subject,
* time of observation,
* performer,
* method.

Components:

* cannot stand alone without the parent observation, and
* are usually presented together.

### Guidance for use

Use **components** if **all** of the following are true:

* the values are observed at the same moment,
* they are produced by the same observation act,
* they are meaningless or potentially misleading in isolation, and
* they are not expected to be referenced independently.

## When to use relationships between observations

### Semantic meaning of relationships

The Observation model allows observations to be related using the following relationship types:

* **hasMember** – to group multiple observations that belong to a common set or panel,
* **derivedFrom** – to indicate that one observation is calculated, inferred, or otherwise derived from one or more other observations,
* **triggeredBy** – to indicate that one observation was initiated or caused by another observation or event.

Each related observation:

* has independent clinical meaning,
* may be observed or reported separately, and
* may be reused or referenced independently.

### Guidance for use

Use **relationships between observations** when the related observations:

* have independent meaning,
* may have different observation times,
* may have different performers or methods, and
* can be referenced, queried, or interpreted independently.

## Summary principles

* Use **components** when the parts are inseparable aspects of a single observation.
* Use **relationships between observations** when each observation has independent clinical meaning.

**Usages:**

* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Observation model](StructureDefinition-EHDSObservation.md) and [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSLaboratoryObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSLaboratoryObservation.csv), [Excel](StructureDefinition-EHDSLaboratoryObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSLaboratoryObservation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation",
  "version" : "0.2.1",
  "name" : "EHDSLaboratoryObservation",
  "title" : "Laboratory observation model",
  "status" : "draft",
  "date" : "2026-02-05T19:45:54+00:00",
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
  "description" : "EHDS refined base model for Observation performed by laboratory",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSLaboratoryObservation",
        "path" : "EHDSLaboratoryObservation",
        "short" : "Laboratory observation model",
        "definition" : "EHDS refined base model for Observation performed by laboratory"
      },
      {
        "id" : "EHDSLaboratoryObservation.type",
        "path" : "EHDSLaboratoryObservation.type",
        "binding" : {
          "strength" : "preferred",
          "description" : "LOINC, NPU"
        }
      },
      {
        "id" : "EHDSLaboratoryObservation.result",
        "path" : "EHDSLaboratoryObservation.result",
        "short" : "Result of the laboratory observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
      },
      {
        "id" : "EHDSLaboratoryObservation.triggeredBy[x]",
        "path" : "EHDSLaboratoryObservation.triggeredBy[x]",
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
        "id" : "EHDSLaboratoryObservation.testKit",
        "path" : "EHDSLaboratoryObservation.testKit",
        "short" : "Laboratory test kit used during measurement.",
        "definition" : "Laboratory test kit used during measurement.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.calibrator",
        "path" : "EHDSLaboratoryObservation.calibrator",
        "short" : "Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain.",
        "definition" : "Information about which end-user calibrator the laboratory used for the measurement to indicate the metrological traceability chain.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.accreditationStatus",
        "path" : "EHDSLaboratoryObservation.accreditationStatus",
        "short" : "Accreditation status of the laboratory for the observation.",
        "definition" : "Accreditation status of the laboratory for the observation.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.previousResults",
        "path" : "EHDSLaboratoryObservation.previousResults",
        "short" : "Previous results of the same observation",
        "definition" : "Previous results of the same observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
          }
        ]
      },
      {
        "id" : "EHDSLaboratoryObservation.pointOfCareTest",
        "path" : "EHDSLaboratoryObservation.pointOfCareTest",
        "short" : "Examination performed near or at the site of a patient.",
        "definition" : "Indicates if the observation is a point-of-care test (POCT), i.e. an examination performed near or at the site of a patient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
