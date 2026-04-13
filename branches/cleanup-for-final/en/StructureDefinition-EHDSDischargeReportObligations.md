# Discharge Report Obligations - EHDS Logical Information Models v1.0.0

## Logical Model: Discharge Report Obligations 

 
Obligations for the logical model of discharge report. 

**Usages:**

* This Logical Model Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSDischargeReportObligations)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-EHDSDischargeReportObligations.csv), [Excel](../StructureDefinition-EHDSDischargeReportObligations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSDischargeReportObligations",
  "language" : "en",
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReportObligations",
  "version" : "1.0.0",
  "name" : "EHDSDischargeReportObligations",
  "title" : "Discharge Report Obligations",
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
  "description" : "Obligations for the logical model of discharge report.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDischargeReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EHDSDischargeReport",
      "path" : "EHDSDischargeReport"
    },
    {
      "id" : "EHDSDischargeReport.header",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A common document header is necessary to ensure that the document can be unambiguously identified, associated with a patient, and processed in an exchange context. Systems claiming conformance must be capable of populating this metadata for every document instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process document header information."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header"
    },
    {
      "id" : "EHDSDischargeReport.header.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems SHALL provide information about the subject of care."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.subject"
    },
    {
      "id" : "EHDSDischargeReport.header.identifier",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.identifier"
    },
    {
      "id" : "EHDSDischargeReport.header.author[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.author[x]"
    },
    {
      "id" : "EHDSDischargeReport.header.date",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.date"
    },
    {
      "id" : "EHDSDischargeReport.header.status",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.status"
    },
    {
      "id" : "EHDSDischargeReport.header.language",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.language"
    },
    {
      "id" : "EHDSDischargeReport.header.documentType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.documentType"
    },
    {
      "id" : "EHDSDischargeReport.header.documentTitle",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.documentTitle"
    },
    {
      "id" : "EHDSDischargeReport.header.period",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.period"
    },
    {
      "id" : "EHDSDischargeReport.header.attestation",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.attestation"
    },
    {
      "id" : "EHDSDischargeReport.header.attestation.attester[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.attestation.attester[x]"
    },
    {
      "id" : "EHDSDischargeReport.header.attestation.datetime",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.attestation.datetime"
    },
    {
      "id" : "EHDSDischargeReport.header.legalAuthentication",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.legalAuthentication"
    },
    {
      "id" : "EHDSDischargeReport.header.legalAuthentication.legalAuthenticator[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.legalAuthentication.legalAuthenticator[x]"
    },
    {
      "id" : "EHDSDischargeReport.header.legalAuthentication.datetime",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.legalAuthentication.datetime"
    },
    {
      "id" : "EHDSDischargeReport.header.eventType",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.eventType"
    },
    {
      "id" : "EHDSDischargeReport.header.serviceSpecialty",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:display"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.serviceSpecialty"
    },
    {
      "id" : "EHDSDischargeReport.header.custodian",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.header.custodian"
    },
    {
      "id" : "EHDSDischargeReport.presentedForm",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Systems claiming DR conformance shall demonstrate the capability to generate a human-readable representation of the document when required by the exchange context. This obligation applies to capability, not to population in every instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume DR report SHALL be able to process the human readable version of the report."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.presentedForm"
    },
    {
      "id" : "EHDSDischargeReport.body",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Each EHR system that is a producer of a discharge report SHALL be able to provide structured information about the report body. This obligation applies to capability, not to population in every instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured body information."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body"
    },
    {
      "id" : "EHDSDischargeReport.body.alerts",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Alerts may not be present in all encounters, but the document structure must support their representation. Systems must be capable of populating and processing this section when alerts are present; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the alerts section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.alerts"
    },
    {
      "id" : "EHDSDischargeReport.body.alerts.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Narrative representation supports immediate clinical understanding of alerts. Systems must be capable of populating this narrative; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the alerts section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.alerts.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.alerts.medicalAlert",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Structured or textual alert entries represent clinically critical information when present. Systems must be capable of populating these entries; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the medicalAlert element of the alerts section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.alerts.medicalAlert"
    },
    {
      "id" : "EHDSDischargeReport.body.encounterInformation",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Encounter context is essential for interpreting all clinical content in the document. Systems claiming conformance must be capable of populating this section for every document instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about the encounter."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.encounterInformation"
    },
    {
      "id" : "EHDSDischargeReport.body.encounterInformation.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A narrative description of the encounter context is necessary to ensure human interpretability. Systems must be capable of populating this narrative in every document instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the encounterInformation section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.encounterInformation.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.encounterInformation.encounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A structured encounter reference supports linkage and reuse where available. Systems must be capable of populating this reference; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the encounter element of the encounterInformation section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.encounterInformation.encounter"
    },
    {
      "id" : "EHDSDischargeReport.body.encounterInformation.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.encounterInformation.note"
    },
    {
      "id" : "EHDSDischargeReport.body.admissionEvaluation",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Admission evaluation does not occur in all encounters but must be representable where applicable. Systems must be capable of populating this section; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about the admission evaluation."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.admissionEvaluation"
    },
    {
      "id" : "EHDSDischargeReport.body.admissionEvaluation.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Narrative summarisation supports clinical understanding of admission findings. Systems must be capable of populating this narrative; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the admissionEvaluation section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.admissionEvaluation.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Objective findings are part of structured clinical assessment when performed. Systems must be capable of populating this container; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the objectiveFindings element of the admissionEvaluation section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.admissionEvaluation.objectiveFindings"
    },
    {
      "id" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Functional status assessment is context-dependent but relevant for continuity of care. Systems must be capable of populating this section; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the functionalStatus element of the admissionEvaluation section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.admissionEvaluation.functionalStatus[x]"
    },
    {
      "id" : "EHDSDischargeReport.body.admissionEvaluation.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.admissionEvaluation.note"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Patient history may not be available or relevant in all care contexts, but systems must be capable of representing this section when such information exists. Omission is acceptable where the capability is permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about patient history."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A narrative overview supports human understanding of the patient’s history when structured data is incomplete or heterogeneous. Systems must be capable of populating and processing narrative content; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the patientHistory section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory.pastProblems",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Past problems relevant to the current episode of care should be representable in a structured format. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the pastProblems element of the patientHistory section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory.pastProblems"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory.devicesAndImplants",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Information about devices and implants in patient history may be relevant for continuity of care. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the devicesAndImplants element of the patientHistory section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory.devicesAndImplants"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory.procedures",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Historical procedures relevant to the current episode of care should be representable in a structured format. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the procedures element of the patientHistory section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory.procedures"
    },
    {
      "id" : "EHDSDischargeReport.body.patientHistory.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.patientHistory.note"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Course of encounter is a core component of the discharge report. Systems claiming conformance must be capable of populating this section for every document instance."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about the course of encounter."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A narrative summary of the course of encounter supports human understanding of the clinical course. Systems must be capable of populating this narrative when such information is available."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the courseOfEncounter section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "A diagnostic summary is essential for continuity of care. Systems claiming conformance must be capable of populating this section when such information is available."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the diagnosticSummary element of the courseOfEncounter section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.diagnosticSummary"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.procedures",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Procedures performed during the encounter are important for continuity of care. Systems must be capable of populating this section when such information is available."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the procedures element of the courseOfEncounter section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.procedures"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Devices and implants are clinically significant historical data and must be representable when medical history is present. Systems must be capable of populating and processing these entries."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the medicalDevicesAndImplants element of the courseOfEncounter section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.medicalDevicesAndImplants"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Medication treatments during the encounter are important for continuity of care. Systems must be capable of populating this section when such information is available."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the medications element of the courseOfEncounter section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.pharmacotherapy"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.testResults[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Test results of functional, diagnostic, and imaging examinations are important for continuity of care. Systems must be capable of populating this section when such information is available."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the testResults element of the courseOfEncounter section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.testResults[x]"
    },
    {
      "id" : "EHDSDischargeReport.body.courseOfEncounter.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.courseOfEncounter.note"
    },
    {
      "id" : "EHDSDischargeReport.body.dischargeDetails",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Discharge details are essential to ensure safe transition of care and continuity after discharge. Systems claiming conformance must be capable of populating this section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about discharge details."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.dischargeDetails"
    },
    {
      "id" : "EHDSDischargeReport.body.dischargeDetails.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Narrative discharge summaries support human understanding of discharge context. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the dischargeDetails section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.dischargeDetails.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Objective findings at discharge may not always be collected but must be representable when available. Systems must be capable of populating this section; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the objectiveFindings element of the dischargeDetails section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.dischargeDetails.objectiveFindings"
    },
    {
      "id" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Functional status at discharge may influence care planning but is context-dependent. Systems must be capable of representing this section; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the functionalStatus element of the dischargeDetails section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.dischargeDetails.functionalStatus[x]"
    },
    {
      "id" : "EHDSDischargeReport.body.dischargeDetails.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.dischargeDetails.note"
    },
    {
      "id" : "EHDSDischargeReport.body.medicationSummary",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Medication summary at discharge may vary by encounter but must be representable when applicable. Systems must be capable of populating this section; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about medication summary."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.medicationSummary"
    },
    {
      "id" : "EHDSDischargeReport.body.medicationSummary.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Narrative summarisation supports understanding of medication changes after discharge. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the medicationSummary section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.medicationSummary.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.medicationSummary.medicationUse",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Medication and dosing details are essential for safe post-discharge therapy. Systems must be capable of populating this information whenever a medication entry is present."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the medicationUse element of the medicationSummary section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.medicationSummary.medicationUse"
    },
    {
      "id" : "EHDSDischargeReport.body.medicationSummary.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.medicationSummary.note"
    },
    {
      "id" : "EHDSDischargeReport.body.carePlan",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Post-discharge care plans and recommendations may vary by encounter. Systems must be capable of representing this section; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process structured information about care plan and recommendations after discharge."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.carePlan"
    },
    {
      "id" : "EHDSDischargeReport.body.carePlan.generatedNarrative",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Narrative recommendations support human interpretation of post-discharge care. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the generatedNarrative element of the carePlan section."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.carePlan.generatedNarrative"
    },
    {
      "id" : "EHDSDischargeReport.body.carePlan.otherRecommendations",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Additional advice may be clinically relevant but is context-dependent. Systems must be capable of representing this information; omission is acceptable where justified during conformance testing."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "EHR systems that consume discharge report SHALL process the otherRecommendations element of the carePlan section when it is present in the document."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.carePlan.otherRecommendations"
    },
    {
      "id" : "EHDSDischargeReport.body.synthesis",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHOULD:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-producer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:process"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://www.xt-ehr.eu/specifications/fhir/actor-consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "EHDSDischargeReport.body.synthesis"
    }]
  }
}

```
