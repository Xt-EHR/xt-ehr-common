# Advance directive model - EHDS Logical Information Models v1.0.0

## Logical Model: Advance directive model 

 
Healthcare directives concerning life or after life wishes of the patient 

**Usages:**

* Derived from this Logical Model: [Advance directive obligations](StructureDefinition-EHDSAdvanceDirectiveObligations.md)
* Use this Logical Model: [Patient summary model](StructureDefinition-EHDSPatientSummary.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSAdvanceDirective)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSAdvanceDirective.csv), [Excel](../StructureDefinition-EHDSAdvanceDirective.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSAdvanceDirective",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "version" : "1.0.0",
  "name" : "EHDSAdvanceDirective",
  "title" : "Advance directive model",
  "status" : "active",
  "date" : "2026-03-29T17:52:51+00:00",
  "publisher" : "Xt-EHR",
  "contact" : [{
    "name" : "Xt-EHR",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.xt-ehr.eu/"
    }]
  }],
  "description" : "Healthcare directives concerning life or after life wishes of the patient",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAdvanceDirective",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "EHDSAdvanceDirective",
      "path" : "EHDSAdvanceDirective",
      "short" : "Advance directive model",
      "definition" : "Healthcare directives concerning life or after life wishes of the patient"
    },
    {
      "id" : "EHDSAdvanceDirective.header.author[x]",
      "path" : "EHDSAdvanceDirective.header.author[x]",
      "short" : "Author of the advance directive.",
      "definition" : "Author of the advance directive."
    },
    {
      "id" : "EHDSAdvanceDirective.category",
      "path" : "EHDSAdvanceDirective.category",
      "short" : "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation.",
      "definition" : "Categories of directives related to decisions prior and after death, such as life support, resuscitation or organ donation.",
      "requirements" : "ISO IPS",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "SNOMED CT"
      }
    },
    {
      "id" : "EHDSAdvanceDirective.note",
      "path" : "EHDSAdvanceDirective.note",
      "short" : "Textual description of the directive",
      "definition" : "Textual description of the directive",
      "requirements" : "eHN PS and HDR Guidelines, MyHealth@EU, ISO IPS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "EHDSAdvanceDirective.attachment",
      "path" : "EHDSAdvanceDirective.attachment",
      "short" : "Source document, such as a PDF, with the living will and the patient's signature.",
      "definition" : "Source document, such as a PDF, with the living will and the patient's signature.",
      "requirements" : "eHN HDR Guideline, ISO IPS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
      }]
    }]
  }
}

```
