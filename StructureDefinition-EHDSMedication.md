# Medication model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication model**

## Logical Model: Medication model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication | *Version*:0.2.1 |
| Active as of 2025-10-10 | *Computable Name*:EHDSMedication |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products. 

**Usages:**

* Use this Logical Model: [Immunisation model](StructureDefinition-EHDSImmunisation.md), [Medication administration model](StructureDefinition-EHDSMedicationAdministration.md), [Medication dispense model](StructureDefinition-EHDSMedicationDispense.md), [Medication prescription model](StructureDefinition-EHDSMedicationPrescription.md)...Show 2 more,[Medication statement model](StructureDefinition-EHDSMedicationStatement.md)and[Service request model](StructureDefinition-EHDSServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedication.csv), [Excel](StructureDefinition-EHDSMedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedication",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "version" : "0.2.1",
  "name" : "EHDSMedication",
  "title" : "Medication model",
  "status" : "active",
  "date" : "2025-10-10T16:36:16+00:00",
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
  "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedication",
        "path" : "EHDSMedication",
        "short" : "Medication model",
        "definition" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. Model is suitable for generic/virtual medications as well as branded/real products."
      },
      {
        "id" : "EHDSMedication.identifyingCode[x]",
        "path" : "EHDSMedication.identifyingCode[x]",
        "short" : "Identifier or code for the product (virtual product, branded product or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
        "definition" : "Identifier or code for the product (virtual product, branded product or package). If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedication.classification",
        "path" : "EHDSMedication.classification",
        "short" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "definition" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "WHO ATC"
        }
      },
      {
        "id" : "EHDSMedication.productName",
        "path" : "EHDSMedication.productName",
        "short" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
        "definition" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder",
        "path" : "EHDSMedication.marketingAuthorisationHolder",
        "short" : "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product.",
        "definition" : "Marketing authorisation holder or manufacturer of the medicinal product. Relevant for identifying the exact product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationName",
        "short" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
        "definition" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "path" : "EHDSMedication.marketingAuthorisationHolder.organisationIdentifier",
        "short" : "Identifier of the organisation and/or its physical location",
        "definition" : "Identifier of the organisation and/or its physical location",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedication.doseForm",
        "path" : "EHDSMedication.doseForm",
        "short" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "definition" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.packSize",
        "path" : "EHDSMedication.packSize",
        "short" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
        "definition" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedication.item",
        "path" : "EHDSMedication.item",
        "short" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "definition" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.doseForm",
        "path" : "EHDSMedication.item.doseForm",
        "short" : "Dose form",
        "definition" : "Dose form",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.item.ingredient",
        "path" : "EHDSMedication.item.ingredient",
        "short" : "Ingredients",
        "definition" : "Ingredients",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.isActive",
        "path" : "EHDSMedication.item.ingredient.isActive",
        "short" : "Marks if the ingredient is considered an active ingredient. Typically excipients are not needed, so by default active ingredients are expected.",
        "definition" : "Marks if the ingredient is considered an active ingredient. Typically excipients are not needed, so by default active ingredients are expected.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.substance",
        "path" : "EHDSMedication.item.ingredient.substance",
        "short" : "Substance",
        "definition" : "Substance",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo",
        "path" : "EHDSMedication.item.ingredient.strengthInfo",
        "short" : "Strength of the product - amount of substance per unit",
        "definition" : "Strength of the product - amount of substance per unit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo.strength",
        "path" : "EHDSMedication.item.ingredient.strengthInfo.strength",
        "short" : "Concentration or presentation strength, e.g 100mg/1ml or 500mg per 1 tablet",
        "definition" : "Concentration or presentation strength, e.g 100mg/1ml or 500mg per 1 tablet",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "path" : "EHDSMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
        "short" : "Substance that the strength refers to, in case it's different from the main substance",
        "definition" : "Substance that the strength refers to, in case it's different from the main substance",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EMA SPOR SMS"
        }
      },
      {
        "id" : "EHDSMedication.item.unitOfPresentation",
        "path" : "EHDSMedication.item.unitOfPresentation",
        "short" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "definition" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedication.item.containedQuantity",
        "path" : "EHDSMedication.item.containedQuantity",
        "short" : "Manufactured item quantity for liquids (3ml / 1 vial)",
        "definition" : "Manufactured item quantity for liquids (3ml / 1 vial)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.item.amount",
        "path" : "EHDSMedication.item.amount",
        "short" : "Number of such manufactured items in this product (5 vials)",
        "definition" : "Number of such manufactured items in this product (5 vials)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM for units of measure. EDQM Standard Terms for units of presentation."
        }
      },
      {
        "id" : "EHDSMedication.item.packageType",
        "path" : "EHDSMedication.item.packageType",
        "short" : "Type of package of the medication item",
        "definition" : "Type of package of the medication item",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "EDQM Standard Terms for packaging."
        }
      },
      {
        "id" : "EHDSMedication.device",
        "path" : "EHDSMedication.device",
        "short" : "Administration device included in the product",
        "definition" : "Administration device included in the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.deviceQuantity",
        "path" : "EHDSMedication.device.deviceQuantity",
        "short" : "Number of such devices",
        "definition" : "Number of such devices",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSMedication.device.device[x]",
        "path" : "EHDSMedication.device.device[x]",
        "short" : "Device coded",
        "definition" : "Device coded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDevice"
            ]
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic",
        "path" : "EHDSMedication.characteristic",
        "short" : "Other features of the product",
        "definition" : "Other features of the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic.type",
        "path" : "EHDSMedication.characteristic.type",
        "short" : "A code expressing the type of characteristic",
        "definition" : "A code expressing the type of characteristic",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedication.characteristic.value[x]",
        "path" : "EHDSMedication.characteristic.value[x]",
        "short" : "Description of the characteristic",
        "definition" : "Description of the characteristic",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          },
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          },
          {
            "code" : "Quantity"
          },
          {
            "code" : "dateTime"
          },
          {
            "code" : "integer"
          },
          {
            "code" : "decimal"
          },
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch",
        "path" : "EHDSMedication.batch",
        "short" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "definition" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.lotNumber",
        "path" : "EHDSMedication.batch.lotNumber",
        "short" : "Batch identifier of the medicinal product",
        "definition" : "Batch identifier of the medicinal product",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedication.batch.expirationDate",
        "path" : "EHDSMedication.batch.expirationDate",
        "short" : "Batch expiration date of the medicinal product.",
        "definition" : "Batch expiration date of the medicinal product.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
