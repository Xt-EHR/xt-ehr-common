// Keep in sync with HL7 Europe / IHE. 
//Two models in one file for copy-paste ease.

Logical: EHDSMedicationPrescription
Title: "Medication prescription (model)"
Description: "Logical model for medication prescription (or some other form of order)"
Characteristics: #can-be-target

* identifier 1..* Identifier "Business identifier(s) for the prescription"
* groupIdentifier 0..1 Identifier "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
* recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
* issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care practicioner"
* recorder 0..1 Reference(EHDSHealthProfessional or EHDSHealthProfessionalRole) "The recorder of the prescription/draft in the information system"
* prescriber 1..1 Reference(EHDSHealthProfessional or EHDSHealthProfessionalRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
* patient 1..1 Reference(EHDSPatient) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
* status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
* statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
* statusReasonText 0..1 string "Textual reason for the current status of prescription"
* medication 1..1 Reference(EHDSMedication) "Prescribed product, branded, generic, virtual, extemporal, etc"
* indication 0..* CodeableConcept "Reason for the prescription (typically diagnosis, or a procedure)"
  * ^binding.description = "shall we have a preferred binding here?"
  * ^binding.strength = #preferred
* indicationText 0..1 string "Reason for the prescription in textual form. This might not be allowed by some implementations."
* usageInstructions 0..* Reference(EHDSDosaging) "Dosaging and administration instructions"
* preparationInstructions 0..1 string "Additional instructions about preparation or dispense" 
* substitution 0..1 BackboneElement "Whether and which type of substitution is allowed for this medication treatment line"
  * allowed 0..1 boolean "Whether substitution is allowed or not."
  * type 1..1 CodeableConcept "The type of substitution that is allowed."
  * typeReason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement"
* comment 0..* string "Additional information or comments"
//Treatment period

Logical: EHDSMedicationDispense
Title: "Medication dispensation (model)"
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* identifier 0..1 Identifier "Identifier for the dispense"
* patient 1..1 Reference(EHDSPatient) "The person for whom the medication is prescribed/ordered"
//* receiver 0..1 Any "Identification of the person who received the dispensed medication, especially when it was not the patient"
* dispenser 1..1 Reference(EHDSHealthProfessional) "The person who dispensed the product, and takes the responsibility of the dispensation"
* relatedRequest 0..1 Reference(EHDSMedicationPrescription) "Prescription/request/order the dispense is related to"
* medication 1..1 Reference(EHDSMedication) "Exact dispensed product"
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the pack size is known, or number of smaller items/units"
* timeOfDispensation 1..1 dateTime "Date and time of dispensation"
* substitutionOccurred 0..1 boolean "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
* status 1..1 CodeableConcept "Status of the dispensation"
  * reason 0..* CodeableConcept "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid"
  * reasonText 0..1 string "Textual reason for the current status of dispensation"
