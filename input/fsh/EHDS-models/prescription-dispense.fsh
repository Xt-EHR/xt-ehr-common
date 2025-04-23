Logical: EHDSDispenseDecline
Title: "Dispense decline"
Parent: EHDSDataSet
Description: "Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment)."
Characteristics: #can-be-target

* header.statusReason[x] 1..1
  * ^short = "Reason for not dispensing the medication"
* relatedRequest 1..* EHDSMedicationPrescription "The single-line prescription or prescription line item that was declined by the dispenser. [Used for searching]"
* reason[x] 1..1 CodeableConcept or string "Reason for not performing the dispensation."
* comment 0..1 string "Additional information about why the dispensation was declined."


Logical: EHDSMedicationDispense
Title: "Medication dispensation model"
Parent: EHDSDataSet
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* dispensingOrganizationOrDevice[x] 0..* EHDSOrganization or EHDSDevice "Dispensing organization or device"
* dispenseLocation 0..1 EHDSLocation "Location of dispense"
* receiver[x] 0..1 EHDSPatient or EHDSHealthProfessional or EHDSRelatedPerson "Identification of the person who received the dispensed medication, especially when it was not the patient"
//  * ^comment = "Added"
* relatedRequest 0..* Identifier "Identifier of the prescription or prescription item the dispense is related to"
//  * ^comment = "No change"
* medication 1..1 EHDSMedication "Exact dispensed product"
//  * ^comment = "No change"
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the pack size is known, or number of smaller items/units"
//  * ^comment = "No change"
* timeOfDispensation 1..1 dateTime "Date and time of dispensation"
//  * ^comment = "No change"
* substitution 0..1 Base "Indicated whether substitution was made by the dispenser"
  * substitutionOccurred 1..1 boolean "Indicated whether substitution was made by the dispenser"
  * type 0..1 CodeableConcept "What kind of substitution was made by the dispenser"
  * reason 0..* CodeableConcept "Reason why the substitution was made or why the expected substitution was not made."
//  * ^comment = "No change but subelements added"
* dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
//  * ^comment = "Added"
* comment 0..* string "Additional information or comments"
//  * ^comment = "Added."


Logical: EHDSMedicationPrescription
Title: "Medication prescription model"
Parent: EHDSDataSet
Description: "Logical model for medication prescription. A prescription contains one or more prescription items."
Characteristics: #can-be-target

* header 
  * ^short = "Prescription header" 
  * ^definition = """Prescription header data elements"""
  * subject ^short = "The person for whom the medication is prescribed/ordered. [Used for searching]"
  * identifier ^short = "Business identifier(s) for the prescription. [Used for searching]"
  * authorship.author[x] ^short = "The prescriber, the person who made the prescription, and who takes the responsibility of the treatment. [Used for searching]"
  * authorship.datetime ^short = "Time of issuing (signing) the prescription by health care professional. [Used for searching]"
  * status ^short = "Status of the prescription, this should not be status of treatment. [Used for searching]"
  * statusReason[x] ^short = "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous"
  * recorder 0..1 EHDSHealthProfessional "The recorder of the prescription/draft in the information system"
  * recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
  * validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate. [Used for searching]"
  * validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date. [Used for searching]"

* presentedForm ^short = "Entire prescription as issued. Various formats could be provided, PDF format is recommended."
* comment 0..* string "Additional information or comments"
* prescriptionItem 1..* Base "Presription line for one medication. In many countries, only one line is allowed. In case multiple medications are allowed, all lines need to be authored together."
  * identifier 0..1 Identifier "Identifier for a single line on prescription, if exists. In case of single-line prescription, this identifier is typically the same as prescription identifier."
  * medication 1..1 EHDSMedication "Prescribed product, branded, generic, virtual, extemporal, etc"
