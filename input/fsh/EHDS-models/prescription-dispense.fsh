Logical: EHDSMedicationDispenseHeader
Title: "Medication dispense header"
Description: "Metadata elements for a header of medication dispense or dispense decline."
Parent: EHDSCommonHeader
Characteristics: #can-be-target
* identifier 1..* Identifier "Business identifier(s) for the dispense. [Used for searching]"
* subject ^short = "Patient who the medication was prescribed to. [Used for searching]"
* authorship.author[x] ^short = "The person who dispensed the product, and takes the responsibility of the dispensation or declining the dispense. [Used for searching]"
* authorship.datetime ^short = "The time of recording the dispense or declining the request. [Used for searching]"
* status ^short = "Status of the dispense. In case of declining a dispense, the status should be 'declined'. [Used for searching]"
* statusReason[x] ^short = "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid"
//  * ^comment = "Added"


Logical: EHDSDispenseDecline
Title: "Dispense decline"
Description: "Explicit statement about declining the dispense request (prescription), usually recorded in order to communicate the issue back to the prescriber. Reasons for declining a dispense may vary, but typically this statement is only sent when a following action is expected on the prescriber’s side (cancelling or changing the problematic prescription or the whole treatment)."
Characteristics: #can-be-target

* header 1..1 EHDSMedicationDispenseHeader "Header level metadata about the dispense decline."
* header.statusReason[x] 1..1
* header.statusReason[x] ^short = "Reason for not dispensing the prescribed medication"
* relatedRequest 1..* EHDSMedicationPrescription "The single-line prescription or prescription line item that was declined by the dispenser. [Used for searching]"
//* reason[x] 1..1 CodeableConcept or string "Reason for not performing the dispensation."
* comment 0..1 string "Additional information about why the dispensation was declined."


Logical: EHDSMedicationDispense
Title: "Medication dispensation model"
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* header 1..1 EHDSMedicationDispenseHeader "Header level metadata about the dispense"
* dispenseLocation 0..1 EHDSLocation "Location of dispense (dispensing pharmacy)"
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
Description: "Logical model for medication prescription body. A prescription contains one or more prescription items."
Characteristics: #can-be-target

* header 1..1 EHDSMedicationPrescriptionHeader "Prescription header" """Prescription header data elements"""
* presentedForm 0..* EHDSAttachment "Presented Form" """Entire prescription as issued. Various formats could be provided, pdf format is recommended."""
* comment 0..* string "Additional information or comments"
* prescriptionItem 1..* Base "Prescription line for one medication. In many countries, only one line is allowed. In case multiple medications are allowed, all lines need to be authored together."
  * identifier 0..1 Identifier "Identifier for a single line on prescription, if exists. In case of single-line prescription, this identifier is typically the same as prescription identifier."
  * medication 1..1 EHDSMedication "Prescribed product, branded, generic, virtual, extemporal, etc"
  //  * ^comment = "Medication model changed - described within that model"
  * indication[x] 0..* CodeableConcept or EHDSCondition "Reason for the prescription (typically diagnosis, or a procedure)"
    * ^binding.description = "shall we have a preferred binding here?"
    * ^binding.strength = #preferred
  //  * ^comment = "No change (A.1.5.10)"
  * indicationText 0..1 string "Reason for the prescription in textual form. This might not be allowed by some implementations."
  //  * ^comment = "No change (code not required) A1.5.10"
  * prescriptionIntent 0..1 CodeableConcept "Intent of the prescription - prophylaxis, treatment, anesthesia, etc"
  * treatmentPeriod 0..1 Period "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)"
  //  * ^comment = "Starting Date of Therapy A1.5.6. End date added."
  * quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
  //  * ^comment = "No change"
  * dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
  //  * ^comment = "Dosage model significantly changed towards more granularity. A.1.5.3-A.1.5.7"
  * preparationInstructions 0..1 string "Additional instructions about preparation or dispense"
  //  * ^comment = "Added."
  * substitution 0..1 Base "Whether and which type of substitution is allowed for this medication treatment line"
  //  * ^comment = "No change but subelements added. A 1.5.11"
    * allowed[x] 0..1 boolean or CodeableConcept "Whether and to what extent substitution is allowed."
    * reason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement"
  * status 1..1 CodeableConcept "Status of a single request/line of the prescription"
  //  * ^comment = "Added."
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous"
  //  * ^comment = "Added."
  * repeatsAllowed 0..1 integer "Number of refills authorized" "How many times the prescription item can be dispensed in addition to the original dispense."
  //  * ^comment = "Added. A.1.5.9 Repeats"
  * minimumDispenseInterval 0..1 Duration "Minimum Dispense Interval" "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here."
  //  * ^comment = "Added, based on ISO 17532:2024 A.7.3 Minimum dispensing interval"
  * offLabel 0..1 Base "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the drug" 
    * isOffLabelUse 1..1 boolean "Indicates off-label use. Must be 'true' when .reason is provided."
    * reason[x] 0..* CodeableConcept or string "Reason or related clarification for off-label use"
  * comment 0..* string "Additional information or comments"
  //  * ^comment = "Added."


Logical: EHDSMedicationPrescriptionHeader
Parent: EHDSCommonHeader
Title: "Medication prescription header model"
Description: "Logical model for medication prescription header."
Characteristics: #can-be-target

* subject ^short = "The person for whom the medication is prescribed/ordered. [Used for searching]"
* identifier 1..* Identifier "Business identifier(s) for the prescription. [Used for searching]"
* authorship.author[x] ^short = "The prescriber, the person who made the prescription, and who takes the responsibility of the treatment. [Used for searching]"
* authorship.author[x] only EHDSHealthProfessional
* authorship.datetime ^short = "Time of issuing (signing) the prescription by health care professional. [Used for searching]"
// * issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care professional"
//  * ^comment = "No change"
* status ^short = "Status of the prescription, this should not be status of treatment. [Used for searching]"
* statusReason[x] ^short = "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous"
//  * ^comment = "Added."
* recorder 0..1 EHDSHealthProfessional "The recorder of the prescription/draft in the information system"
//  * ^comment = "Added. Not relevant for crossborder."
* recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
//  * ^comment = "Added. Not relevant for crossborder."
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate. [Used for searching]"
//  * ^comment = "Added. Often the same as IssueDate (A 1.2.2) or Start of therapy (A 1.5.6)"
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date. [Used for searching]"
//  * ^comment = "No change (A.1.5.8)"
* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
//  * ^comment = "Added."



