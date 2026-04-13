# Endpoint model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint model**

## Logical Model: Endpoint model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint | *Version*:0.2.1 |
| Draft as of 2026-02-05 | *Computable Name*:EHDSEndpoint |

 
EHDS refined base model for Endpoint 

**Usages:**

* Use this Logical Model: [Imaging study model](StructureDefinition-EHDSImagingStudy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSEndpoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSEndpoint.csv), [Excel](StructureDefinition-EHDSEndpoint.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSEndpoint",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint",
  "version" : "0.2.1",
  "name" : "EHDSEndpoint",
  "title" : "Endpoint model",
  "status" : "draft",
  "date" : "2026-02-05T19:33:25+00:00",
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
  "description" : "EHDS refined base model for Endpoint",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSEndpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSEndpoint",
        "path" : "EHDSEndpoint",
        "short" : "Endpoint model",
        "definition" : "EHDS refined base model for Endpoint"
      },
      {
        "id" : "EHDSEndpoint.identifier",
        "path" : "EHDSEndpoint.identifier",
        "short" : "Identifier",
        "definition" : "Identifier for the organisation that is used to identify the endpoint across multiple disparate systems.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.status",
        "path" : "EHDSEndpoint.status",
        "short" : "Status",
        "definition" : "Status of the endpoint. The endpoint status represents whether the endpoint can currently be used for connections or why it can't be used.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:EndpointStatus"
        }
      },
      {
        "id" : "EHDSEndpoint.connectionType",
        "path" : "EHDSEndpoint.connectionType",
        "short" : "Connection type",
        "definition" : "A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:endpoint-connection-type"
        }
      },
      {
        "id" : "EHDSEndpoint.name",
        "path" : "EHDSEndpoint.name",
        "short" : "Name",
        "definition" : "A friendly name that this endpoint can be referred to with.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.managingOrganisation",
        "path" : "EHDSEndpoint.managingOrganisation",
        "short" : "Managing organisation",
        "definition" : "The organisation that provides technical management services for this endpoint. ",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSOrganisation"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload",
        "path" : "EHDSEndpoint.payload",
        "short" : "Payload",
        "definition" : "The set of payloads that are provided/available at this endpoint.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload.type",
        "path" : "EHDSEndpoint.payload.type",
        "short" : "Type",
        "definition" : "The type of content that may be used at this endpoint (e.g. XDS Discharge summaries).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "hl7:endpoint-payload-type"
        }
      },
      {
        "id" : "EHDSEndpoint.payload.mimeType",
        "path" : "EHDSEndpoint.payload.mimeType",
        "short" : "Mime type",
        "definition" : "The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. ",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "BCP-13"
        }
      },
      {
        "id" : "EHDSEndpoint.payload.profileCanonical",
        "path" : "EHDSEndpoint.payload.profileCanonical",
        "short" : "Profile Canonical",
        "definition" : "The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.payload.profileUri",
        "path" : "EHDSEndpoint.payload.profileUri",
        "short" : "Profile uri",
        "definition" : "The profile (as a uri) that is expected at this endpoint when not represented using a FHIR profile.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.address",
        "path" : "EHDSEndpoint.address",
        "short" : "Address",
        "definition" : "The uri that describes the actual end-point to connect to.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ]
      },
      {
        "id" : "EHDSEndpoint.header",
        "path" : "EHDSEndpoint.header",
        "short" : "Header",
        "definition" : "Additional headers / information to send as part of the notification. Usage depends on the channel type.",
        "min" : 0,
        "max" : "*",
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
