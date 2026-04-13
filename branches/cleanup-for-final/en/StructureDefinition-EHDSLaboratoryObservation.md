# Laboratory observation model - EHDS Logical Information Models v1.0.0

## Logical Model: Laboratory observation model 

 
Model for observation performed by laboratory 

**Usages:**

* Derived from this Logical Model: [Laboratory observation obligations](StructureDefinition-EHDSLaboratoryObservationObligations.md)
* Use this Logical Model: [Discharge Report model](StructureDefinition-EHDSDischargeReport.md), [Laboratory observation model](StructureDefinition-EHDSLaboratoryObservation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md) and [Observation model](StructureDefinition-EHDSObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSLaboratoryObservation)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSLaboratoryObservation.csv), [Excel](../StructureDefinition-EHDSLaboratoryObservation.xlsx) 

### Notes:

#### When to use components

##### Semantic meaning of components

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

##### Guidance for use

Use **components** if **all** of the following are true:

* the values are observed at the same moment,
* they are produced by the same observation act,
* they are meaningless or potentially misleading in isolation, and
* they are not expected to be referenced independently.

#### When to use relationships between observations

##### Semantic meaning of relationships

The Observation model allows observations to be related using the following relationship types:

* **hasMember** – to group multiple observations that belong to a common set or panel,
* **derivedFrom** – to indicate that one observation is calculated, inferred, or otherwise derived from one or more other observations,
* **triggeredBy** – to indicate that one observation was initiated or caused by another observation or event.

Each related observation:

* has independent clinical meaning,
* may be observed or reported separately, and
* may be reused or referenced independently.

##### Guidance for use

Use **relationships between observations** when the related observations:

* have independent meaning,
* may have different observation times,
* may have different performers or methods, and
* can be referenced, queried, or interpreted independently.

#### Summary principles

* Use **components** when the parts are inseparable aspects of a single observation.
* Use **relationships between observations** when each observation has independent clinical meaning.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSLaboratoryObservation",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation",
  "version" : "1.0.0",
  "name" : "EHDSLaboratoryObservation",
  "title" : "Laboratory observation model",
  "status" : "active",
  "date" : "2026-04-13T11:59:46+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Model for observation performed by laboratory",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSLaboratoryObservation",
      "path" : "EHDSLaboratoryObservation",
      "short" : "Laboratory observation model",
      "definition" : "Model for observation performed by laboratory"
    },
    {
      "id" : "EHDSLaboratoryObservation.type",
      "path" : "EHDSLaboratoryObservation.type",
      "binding" : {
        "strength" : "preferred",
        "description" : "LOINC, NPU, SNOMED CT"
      }
    },
    {
      "id" : "EHDSLaboratoryObservation.result",
      "path" : "EHDSLaboratoryObservation.result",
      "short" : "Result of the laboratory observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation."
    },
    {
      "id" : "EHDSLaboratoryObservation.component.type",
      "path" : "EHDSLaboratoryObservation.component.type",
      "binding" : {
        "strength" : "preferred",
        "description" : "LOINC, NPU, SNOMED CT"
      }
    },
    {
      "id" : "EHDSLaboratoryObservation.triggeredBy[x]",
      "path" : "EHDSLaboratoryObservation.triggeredBy[x]",
      "short" : "References to the observation(s) that triggered the performance of this observation.",
      "definition" : "References to the observation(s) that triggered the performance of this observation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
      },
      {
        "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSObservation"
      }]
    },
    {
      "id" : "EHDSLaboratoryObservation.testKit",
      "path" : "EHDSLaboratoryObservation.testKit",
      "short" : "Laboratory test kit used during measurement.",
      "definition" : "Laboratory test kit used during measurement.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
      }]
    },
    {
      "id" : "EHDSLaboratoryObservation.calibrator",
      "path" : "EHDSLaboratoryObservation.calibrator",
      "short" : "Information about which reference material or calibrator of higher order the laboratory has been used for the measurement to indicate the metrological traceability chain.",
      "definition" : "Information about which reference material or calibrator of higher order the laboratory has been used for the measurement to indicate the metrological traceability chain.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "EHDSLaboratoryObservation.accreditationStatus",
      "path" : "EHDSLaboratoryObservation.accreditationStatus",
      "short" : "Accreditation status of the laboratory for the observation.",
      "definition" : "Accreditation status of the laboratory for the observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "EHDSLaboratoryObservation.previousResults",
      "path" : "EHDSLaboratoryObservation.previousResults",
      "short" : "Previous results of the same observation",
      "definition" : "Previous results of the same observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSLaboratoryObservation"
      }]
    },
    {
      "id" : "EHDSLaboratoryObservation.pointOfCareTest",
      "path" : "EHDSLaboratoryObservation.pointOfCareTest",
      "short" : "Examination performed near or at the site of a patient.",
      "definition" : "Indicates if the observation is a point-of-care test (POCT), i.e. an examination performed near or at the site of a patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
