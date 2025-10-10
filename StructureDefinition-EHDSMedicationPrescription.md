# Medication prescription model - EHDS Logical Information Models v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication prescription model**

## Logical Model: Medication prescription model 

| | |
| :--- | :--- |
| *Official URL*:http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription | *Version*:0.2.1 |
| Draft as of 2025-10-10 | *Computable Name*:EHDSMedicationPrescription |

 
Logical model for medication prescription. A prescription contains one or more prescription items. 

**Usages:**

* Use this Logical Model: [Medication dispense decline model](StructureDefinition-EHDSDispenseDecline.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/xtehr.eu.ehds.models|current/StructureDefinition/EHDSMedicationPrescription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EHDSMedicationPrescription.csv), [Excel](StructureDefinition-EHDSMedicationPrescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EHDSMedicationPrescription",
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
  "url" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription",
  "version" : "0.2.1",
  "name" : "EHDSMedicationPrescription",
  "title" : "Medication prescription model",
  "status" : "draft",
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
  "description" : "Logical model for medication prescription. A prescription contains one or more prescription items.",
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
  "type" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedicationPrescription",
  "baseDefinition" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDataSet",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EHDSMedicationPrescription",
        "path" : "EHDSMedicationPrescription",
        "short" : "Medication prescription model",
        "definition" : "Logical model for medication prescription. A prescription contains one or more prescription items."
      },
      {
        "id" : "EHDSMedicationPrescription.header",
        "path" : "EHDSMedicationPrescription.header",
        "short" : "Prescription header",
        "definition" : "Prescription header data elements"
      },
      {
        "id" : "EHDSMedicationPrescription.header.subject",
        "path" : "EHDSMedicationPrescription.header.subject",
        "short" : "The person for whom the medication is prescribed/ordered. [Used for searching]"
      },
      {
        "id" : "EHDSMedicationPrescription.header.identifier",
        "path" : "EHDSMedicationPrescription.header.identifier",
        "short" : "Business identifier(s) for the prescription. [Used for searching]"
      },
      {
        "id" : "EHDSMedicationPrescription.header.authorship.author[x]",
        "path" : "EHDSMedicationPrescription.header.authorship.author[x]",
        "short" : "The prescriber, the person who made the prescription, and who takes the responsibility of the treatment. [Used for searching]"
      },
      {
        "id" : "EHDSMedicationPrescription.header.authorship.datetime",
        "path" : "EHDSMedicationPrescription.header.authorship.datetime",
        "short" : "Time of issuing (signing) the prescription by health care professional. [Used for searching]"
      },
      {
        "id" : "EHDSMedicationPrescription.header.status",
        "path" : "EHDSMedicationPrescription.header.status",
        "short" : "Status of authorisation to dispense of the prescription item, this should not be status of treatment. For multiple-item prescription, the aggregate status of the whole prescription is stated using EHDSMedicationPrescription.header.status. For single-item prescription, the prescriptionItem.status shall be the same as EHDSMedicationPrescription.header.status. [Used for searching]"
      },
      {
        "id" : "EHDSMedicationPrescription.header.statusReason[x]",
        "path" : "EHDSMedicationPrescription.header.statusReason[x]",
        "short" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous"
      },
      {
        "id" : "EHDSMedicationPrescription.header.recorder",
        "path" : "EHDSMedicationPrescription.header.recorder",
        "short" : "The recorder of the prescription/draft in the information system",
        "definition" : "The recorder of the prescription/draft in the information system",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSHealthProfessional"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.header.recordingDate",
        "path" : "EHDSMedicationPrescription.header.recordingDate",
        "short" : "Time of authoring the prescription/draft in the information system",
        "definition" : "Time of authoring the prescription/draft in the information system",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.header.validFrom",
        "path" : "EHDSMedicationPrescription.header.validFrom",
        "short" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate. [Used for searching]",
        "definition" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate. [Used for searching]",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.header.validUntil",
        "path" : "EHDSMedicationPrescription.header.validUntil",
        "short" : "The validity period end date. The prescription is not dispensable after this date. [Used for searching]",
        "definition" : "The validity period end date. The prescription is not dispensable after this date. [Used for searching]",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.presentedForm",
        "path" : "EHDSMedicationPrescription.presentedForm",
        "short" : "Entire prescription as issued. Various formats could be provided, PDF format is recommended.",
        "definition" : "Entire prescription as issued. Various formats could be provided, PDF format is recommended.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSAttachment"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.comment",
        "path" : "EHDSMedicationPrescription.comment",
        "short" : "Additional information or comments",
        "definition" : "Additional information or comments",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem",
        "path" : "EHDSMedicationPrescription.prescriptionItem",
        "short" : "Prescription line for one medication. In many countries, only one item is allowed. In case multiple medications are allowed, all lines need to be authored together.",
        "definition" : "Prescription line for one medication. In many countries, only one item is allowed. In case multiple medications are allowed, all lines need to be authored together.",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.identifier",
        "path" : "EHDSMedicationPrescription.prescriptionItem.identifier",
        "short" : "Identifier for a single item on prescription, if exists. In case of single-item prescription, this identifier is typically the same as prescription identifier.",
        "definition" : "Identifier for a single item on prescription, if exists. In case of single-item prescription, this identifier is typically the same as prescription identifier.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.category",
        "path" : "EHDSMedicationPrescription.prescriptionItem.category",
        "short" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
        "definition" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.medication",
        "path" : "EHDSMedicationPrescription.prescriptionItem.medication",
        "short" : "Prescribed product, branded, generic, virtual, extemporal, etc",
        "definition" : "Prescribed product, branded, generic, virtual, extemporal, etc",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSMedication"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.indication[x]",
        "path" : "EHDSMedicationPrescription.prescriptionItem.indication[x]",
        "short" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "definition" : "Reason for the prescription (typically diagnosis, or a procedure)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSCondition"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.indicationText",
        "path" : "EHDSMedicationPrescription.prescriptionItem.indicationText",
        "short" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
        "definition" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.intendedUseType",
        "path" : "EHDSMedicationPrescription.prescriptionItem.intendedUseType",
        "short" : "Intent of the prescription - prophylaxis, treatment, anesthesia, etc",
        "definition" : "Intent of the prescription - prophylaxis, treatment, anesthesia, etc",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.periodOfUse",
        "path" : "EHDSMedicationPrescription.prescriptionItem.periodOfUse",
        "short" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
        "definition" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.quantityPrescribed",
        "path" : "EHDSMedicationPrescription.prescriptionItem.quantityPrescribed",
        "short" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
        "definition" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "UCUM, EDQM Standard Terms"
        }
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.dosageInstructions",
        "path" : "EHDSMedicationPrescription.prescriptionItem.dosageInstructions",
        "short" : "Dosaging and administration instructions",
        "definition" : "Dosaging and administration instructions",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "http://www.xt-ehr.eu/fhir/models/StructureDefinition/EHDSDosaging"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.preparationInstructions",
        "path" : "EHDSMedicationPrescription.prescriptionItem.preparationInstructions",
        "short" : "Additional instructions about preparation or dispense",
        "definition" : "Additional instructions about preparation or dispense",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.substitution",
        "path" : "EHDSMedicationPrescription.prescriptionItem.substitution",
        "short" : "Whether and which type of substitution is allowed for this medication treatment item",
        "definition" : "Whether and which type of substitution is allowed for this medication treatment item",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.substitution.allowed[x]",
        "path" : "EHDSMedicationPrescription.prescriptionItem.substitution.allowed[x]",
        "short" : "Whether and to what extent substitution is allowed.",
        "definition" : "Whether and to what extent substitution is allowed.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          },
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.substitution.reason[x]",
        "path" : "EHDSMedicationPrescription.prescriptionItem.substitution.reason[x]",
        "short" : "Reason for the substitution requirement (e.g. Biological product, Patient allergic to an excipient in alternative products, etc)",
        "definition" : "Reason for the substitution requirement (e.g. Biological product, Patient allergic to an excipient in alternative products, etc)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.status",
        "path" : "EHDSMedicationPrescription.prescriptionItem.status",
        "short" : "Status of a single item of a multi-item prescription. In case of single-item prescriptions, the status of prescription has the same meaning as the status of the item.",
        "definition" : "Status of a single item of a multi-item prescription. In case of single-item prescriptions, the status of prescription has the same meaning as the status of the item.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.statusReason[x]",
        "path" : "EHDSMedicationPrescription.prescriptionItem.statusReason[x]",
        "short" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous",
        "definition" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.repeatsAllowed",
        "path" : "EHDSMedicationPrescription.prescriptionItem.repeatsAllowed",
        "short" : "Number of refills authorized",
        "definition" : "How many times the prescription item can be dispensed in addition to the original dispense.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.minimumDispenseInterval",
        "path" : "EHDSMedicationPrescription.prescriptionItem.minimumDispenseInterval",
        "short" : "Minimum Dispense Interval",
        "definition" : "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.offLabel",
        "path" : "EHDSMedicationPrescription.prescriptionItem.offLabel",
        "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the drug",
        "definition" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the drug",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Base"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.offLabel.isOffLabelUse",
        "path" : "EHDSMedicationPrescription.prescriptionItem.offLabel.isOffLabelUse",
        "short" : "Indicates off-label use. Must be 'true' when .reason is provided.",
        "definition" : "Indicates off-label use. Must be 'true' when .reason is provided.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.offLabel.reason[x]",
        "path" : "EHDSMedicationPrescription.prescriptionItem.offLabel.reason[x]",
        "short" : "Reason or related clarification for off-label use",
        "definition" : "Reason or related clarification for off-label use",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EHDSMedicationPrescription.prescriptionItem.comment",
        "path" : "EHDSMedicationPrescription.prescriptionItem.comment",
        "short" : "Additional information or comments",
        "definition" : "Additional information or comments",
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
