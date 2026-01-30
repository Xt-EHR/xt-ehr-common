# Organisation model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organisation model**

## Logical Model: Organisation model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation | *Version*:0.2.1 |
| Draft as of 2026-01-28 | *Computable Name*:EHDSOrganisation |

 
EHDS refined base model for Health provider or any other type of organisation 

**Usages:**

* Use this Logical Model: [Advance directive model](StructureDefinition-EHDSAdvanceDirective.md), [Coverage model](StructureDefinition-EHDSCoverage.md), [DataSet model](StructureDefinition-EHDSDataSet.md), [Discharge Report model](StructureDefinition-EHDSDischargeReport.md)... Show 10 more, [Document model](StructureDefinition-EHDSDocument.md), [Encounter model](StructureDefinition-EHDSEncounter.md), [Endpoint model](StructureDefinition-EHDSEndpoint.md), [Health professional model](StructureDefinition-EHDSHealthProfessional.md), [Imaging report model](StructureDefinition-EHDSImagingReport.md), [Imaging study model](StructureDefinition-EHDSImagingStudy.md), [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Laboratory report model](StructureDefinition-EHDSLaboratoryReport.md), [Media model](StructureDefinition-EHDSMedia.md) and [Observation model](StructureDefinition-EHDSObservation.md)
* Refer to this Logical Model: [Location model](StructureDefinition-EHDSLocation.md) and [Organisation model](StructureDefinition-EHDSOrganisation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSOrganisation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSOrganisation.csv), [Excel](StructureDefinition-EHDSOrganisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSOrganisation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "version" : "0.2.1",
  "name" : "EHDSOrganisation",
  "title" : "Organisation model",
  "status" : "draft",
  "date" : "2026-01-28T13:20:48+00:00",
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
  "description" : "EHDS refined base model for Health provider or any other type of organisation",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSOrganisation",
        "path" : "EHDSOrganisation",
        "short" : "Organisation model",
        "definition" : "EHDS refined base model for Health provider or any other type of organisation"
      },
      {
        "id" : "EHDSOrganisation.identifier",
        "path" : "EHDSOrganisation.identifier",
        "short" : "Identifier",
        "definition" : "Health provider organisation identifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.type",
        "path" : "EHDSOrganisation.type",
        "short" : "Type",
        "definition" : "Kind of organisation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "HL7 organisation_type"
        }
      },
      {
        "id" : "EHDSOrganisation.name",
        "path" : "EHDSOrganisation.name",
        "short" : "Name",
        "definition" : "Health provider organisation name",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.address",
        "path" : "EHDSOrganisation.address",
        "short" : "Address",
        "definition" : "Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAddress"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.telecom",
        "path" : "EHDSOrganisation.telecom",
        "short" : "Telecom",
        "definition" : "Telecommunication contact information (addresses) associated with a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSTelecom"
          }
        ]
      },
      {
        "id" : "EHDSOrganisation.partOf",
        "path" : "EHDSOrganisation.partOf",
        "short" : "Part of",
        "definition" : "The organisation of which this organisation forms a part",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
            ]
          }
        ]
      }
    ]
  }
}

```
