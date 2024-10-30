// Keep in sync with HL7 Europe / IHE. 
//Two models in one file for copy-paste ease.


Logical: EHDSMedicationPrescription
Title: "Medication Prescription (model)"
Description: "Logical model for medication prescription. A prescription contains one or more prescription items."
Characteristics: #can-be-target

* identifier 1..* Identifier "Business identifier(s) for the prescription"
  * ^comment = "No change"
* prescriber 1..1 EHDSHealthProfessional "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
  * ^comment = "No change"
* issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care practicioner"
  * ^comment = "No change"
* patient 1..1 EHDSPatient "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
  * ^comment = "No change (Patient model will be common for all use cases)"
* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
  * ^comment = "Added."
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
  * ^comment = "Added. Often the same as IssueDate (A 1.2.2) or Start of therapy (A 1.5.6)"
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
  * ^comment = "No change (A.1.5.8)"
* recorder 0..1 EHDSHealthProfessional "The recorder of the prescription/draft in the information system"
  * ^comment = "Added. Not relevant for crossborder."
* recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
  * ^comment = "Added. Not relevant for crossborder."

* status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
  * ^comment = "Added."
* dispensable 0..1 boolean "Dispensability of this prescription. May be calculated from status and other elements, e.g. for cross-border use cases."
  * ^comment = "Added."

* statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
  * ^comment = "Added."
* statusReasonText 0..1 string "Textual reason for the current status of prescription"
  * ^comment = "Added."
* comment 0..* string "Additional information or comments"
* prescriptionItem 1..* BackboneElement "Presription line for one medication. In many countries, only one line is allowed. In case multiple medications are allowed, all lines need to be authored together."
  * identifier 0..1 Identifier "Identifier for a single line on prescription, if exists. In case of single-line prescription, this identifier is typically the same as prescription identifier."
  * medication 1..1 EHDSMedication "Prescribed product, branded, generic, virtual, extemporal, etc"
    * ^comment = "Medication model changed - described within that model"
  * indication 0..* CodeableConcept "Reason for the prescription (typically diagnosis, or a procedure)"
    * ^binding.description = "shall we have a preferred binding here?"
    * ^binding.strength = #preferred
    * ^comment = "No change (A.1.5.10)"
  * indicationText 0..1 string "Reason for the prescription in textual form. This might not be allowed by some implementations."
    * ^comment = "No change (code not required) A1.5.10"
  * prescriptionIntent 0..1 CodeableConcept "Intent of the prescription - prophylaxis, treatment, anesthesia, etc"
  * treatmentPeriod 0..1 Period "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)"
    * ^comment = "Starting Date of Therapy A1.5.6. End date added."
  * quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
    * ^comment = "No change"
  * dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
    * ^comment = "Dosage model significantly changed towards more granularity. A.1.5.3-A.1.5.7"
  * preparationInstructions 0..1 string "Additional instructions about preparation or dispense" 
    * ^comment = "Added."
  * substitution 0..1 BackboneElement "Whether and which type of substitution is allowed for this medication treatment line"
    * ^comment = "No change but subelements added. A 1.5.11"
    * allowed 0..1 boolean "Whether substitution is allowed or not."
    * type 0..1 CodeableConcept "The type of substitution that is allowed."
    * typeReason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement"
  * status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
    * ^comment = "Added."
  * statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
    * ^comment = "Added."
  * statusReasonText 0..1 string "Textual reason for the current status of prescription"
    * ^comment = "Added."
  
  * reasonForChange 0..1 CodeableConcept "The reason the prescription was changed from previous"
    * ^comment = "Added. Changed from which other (version of) prescription?"

  * repeatsAllowed 0..1 unsignedInt "Number of refills authorized" "How many times the prescription item can be dispensed in addition to the original dispense."
    * ^comment = "Added. A.1.5.9 Repeats"

  * minimumDispenseInterval 0..1 Duration "Minimum Dispense Interval" "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here."
    * ^comment = "Added, based on ISO 17532:2024 A.7.3 Minimum dispensing interval"

  * comment 0..* string "Additional information or comments"
    * ^comment = "Added."
 

Logical: EHDSMedicationDispense
Title: "Medication Dispensation (model)"
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier for the dispense"
  * ^comment = "Not explicitly in eHN guidelines"
* patient 1..1 EHDSPatient "The person for whom the medication is prescribed/ordered"
  * ^comment = "No change"
* receiver[x] 0..1 EHDSPatient "Identification of the person who received the dispensed medication, especially when it was not the patient"
  * ^comment = "Added"
* dispenser[x] 1..1 EHDSHealthProfessional or EHDSOrganization or EHDSDevice "The person who dispensed the product, and takes the responsibility of the dispensation"
  * ^comment = "Added device. Organisation is in eHN guidelines, but probably meant in combination with the pharmacist"
* relatedRequest 0..* Reference(EHDSMedicationPrescription) "Prescription/request/order the dispense is related to"
  * ^comment = "No change"
* medication 1..1 EHDSMedication "Exact dispensed product"
  * ^comment = "No change"
* dispensedQuantity 1..1 Quantity "Number of dispensed packages if the pack size is known, or number of smaller items/units"
  * ^comment = "No change"
* timeOfDispensation 1..1 dateTime "Date and time of dispensation"
  * ^comment = "No change"
* substitution 0..1 BackboneElement "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
  * substitutionOccurred 0..1 boolean "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
  * substitutionType 0..1 CodeableConcept "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
  * substitutionReason 0..* CodeableConcept "Reason why the substitution was made"
  * ^comment = "No change but subelements added"
* status 1..1 CodeableConcept "Status of the dispensation"
  * ^comment = "Added"
* statusReason 0..* CodeableConcept "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid"
  * ^comment = "Added"
* statusReasonText 0..1 string "Textual reason for the current status of dispensation"
  * ^comment = "Added"
* dosageInstructions 0..* EHDSDosaging "Dosaging and administration instructions"
  * ^comment = "Added"
* comment 0..* string "Additional information or comments"
  * ^comment = "Added."

/* This is the IHE type of modelling where prescription line is the main object, and a group is on the side
Logical: EHDSMedicationPrescription
Title: "Medication prescription (model)"
Description: "Logical model for medication prescription (or some other form of order)"
Characteristics: #can-be-target

* identifier 1..* Identifier "Business identifier(s) for the prescription"
  * ^comment = "No change"
* groupIdentifier 0..1 Identifier "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
  * ^comment = "Added to accommodate prescriptions with multiple medications"
* recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
  * ^comment = "Added. Not relevant for crossborder."
* issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care practicioner"
  * ^comment = "No change"
* recorder 0..1 Reference(EHDSHealthProfessional) "The recorder of the prescription/draft in the information system"
  * ^comment = "Added. Not relevant for crossborder."
* prescriber 1..1 Reference(EHDSHealthProfessional) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
  * ^comment = "No change"
* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
  * ^comment = "Added."
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
  * ^comment = "Added. Often the same as IssueDate (A 1.2.2) or Start of therapy (A 1.5.6)"
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
  * ^comment = "No change (A.1.5.8)"
* patient 1..1 Reference(EHDSPatient) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
  * ^comment = "No change (Patient model will be common for all use cases)"
* status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
  * ^comment = "Added."
* statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
  * ^comment = "Added."
* statusReasonText 0..1 string "Textual reason for the current status of prescription"
  * ^comment = "Added."
* medication 1..1 Reference(EHDSMedication) "Prescribed product, branded, generic, virtual, extemporal, etc"
  * ^comment = "Medication model changed - described within that model"
* indication 0..* CodeableConcept "Reason for the prescription (typically diagnosis, or a procedure)"
  * ^binding.description = "shall we have a preferred binding here?"
  * ^binding.strength = #preferred
  * ^comment = "No change (A.1.5.10)"
* indicationText 0..1 string "Reason for the prescription in textual form. This might not be allowed by some implementations."
  * ^comment = "No change (code not required) A1.5.10"
* usageInstructions 0..* Reference(EHDSDosaging) "Dosaging and administration instructions"
  * ^comment = "Dosage model significantly changed towards more granularity. A.1.5.3-A.1.5.7"
* preparationInstructions 0..1 string "Additional instructions about preparation or dispense" 
  * ^comment = "Added."
* substitution 0..1 BackboneElement "Whether and which type of substitution is allowed for this medication treatment line"
  * ^comment = "No change but subelements added. A 1.5.11"
  * allowed 0..1 boolean "Whether substitution is allowed or not."
  * type 1..1 CodeableConcept "The type of substitution that is allowed."
  * typeReason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement"
* comment 0..* string "Additional information or comments"
  * ^comment = "Added. Still missing A.1.5.9 Repeats and A.1.5.2 Quantity of prescribed product"
* treatmentPeriod 0..1 Period "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall duration of all dosages.)"
* quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
*/
