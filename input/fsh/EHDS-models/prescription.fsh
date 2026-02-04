Logical: EHDSMedicationPrescription
Title: "Medication prescription model"
Parent: EHDSDataSet
Description: "Logical model for medication prescription. A prescription contains one or more prescription items (medications)."
Characteristics: #can-be-target

* header 
  * ^short = "Prescription header" 
  * ^definition = """Prescription header"""
  * subject 
    * ^short = "The person for whom the medication is prescribed/ordered. [Used for searching]"
    * ^definition = "The person for whom the medication is prescribed/ordered. [Used for searching]"  
  * identifier 1..*
    * ^short = "Business identifier(s) for the prescription. [Used for searching]"
    * ^definition = "Business identifier(s) for the prescription. [Used for searching]"  
  * author[x] 1..*
    * ^short = "The prescriber, the person who made the prescription, and who takes the responsibility for the treatment. [Used for searching]"
    * ^definition = "The prescriber, the person who made the prescription, and who takes the responsibility for the treatment. [Used for searching]"
  * author[x] only EHDSHealthProfessional or EHDSOrganisation 
  * date 1..1
    * ^short = "Time of issuing (signing) the prescription by health care professional. [Used for searching]"
    * ^definition = "Time of issuing (signing) the prescription by health care professional. [Used for searching]"  
  * status ^short = "Status of authorisation for dispensing the prescription items. This should not be the status of treatment. For a multiple-item prescription, this conveys the aggregate status of the entire prescription. In case of a single-item prescription, prescriptionItem.status shall be the same as EHDSMedicationPrescription.header.status. [Used for searching]"
  * status ^definition = "Status of authorisation for dispensing the prescription items. This should not be the status of treatment. For a multiple-item prescription, this conveys the aggregate status of the entire prescription. In case of a single-item prescription, prescriptionItem.status shall be the same as EHDSMedicationPrescription.header.status. [Used for searching]"
  * source 0..0
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of prescription, for example the reason why the prescription was made invalid or changed from a previous state."
* presentedForm 0..* EHDSAttachment "Entire prescription as issued. Various formats could be provided, PDF format is recommended."

* prescriptionItem 1..* Base "Prescription line for one medication. In many countries, only one item is allowed and there shall be no expectation to be able to manage multiple items. In case multiple medications are allowed, all items need to be authored together."
  * identifier 1..* Identifier "Identifier for a single item on prescription, if exists. In case of single-item prescription, this identifier is typically the same as prescription identifier. [Used for searching]"
//  * category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
  * status 1..1 CodeableConcept "Status of a single item of a multi-item prescription. In case of single-item prescriptions, the status of prescription has the same meaning as the status of the item. [Used for searching]"
  * statusReason[x] 0..1 CodeableConcept or string "Reason for the current status of prescription, for example the reason why the prescription was made invalid or why the prescription was changed from previous"
  * medication 1..1 EHDSMedication "Prescribed product, branded, generic, virtual, extemporal, etc"
  * indication[x] 0..* CodeableConcept or string "Reason for the prescription (typically diagnosis, or a procedure)"
    * ^binding.description = "ICD-10, SNOMED CT, Orphacode"
    * ^binding.strength = #preferred
  * intendedUseType 0..1 CodeableConcept "Intent of the prescription - prophylaxis, treatment, anesthesia, etc"
  * periodOfUse 0..1 Period "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)"
  * quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
    * ^binding.description = "UCUM, EDQM Standard Terms"
    * ^binding.strength = #preferred
  * dosageInstructions 1..1 EHDSDosaging "Dosaging and administration instructions"
  * validityPeriod 0..1 Period "The period over which the prescription is considered valid and dispensable. validityPeriod.start is, if missing, is assumed to be the date of issuing the prescription."
  * substitution 0..1 Base "Whether and which type of substitution is allowed for this prescription. The legislation in the country of dispense applies, e.g. if this information is missing."
    * allowed[x] 0..1 boolean or CodeableConcept "Whether and to what extent substitution is allowed."
    * reason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement (e.g. Biological product, Patient allergic to an excipient in alternative products, etc)"
  * numberOfRepeats 0..1 integer "Number of refills authorised - how many times the prescription item can be dispensed in addition to the original dispense."
  * minimumDispenseInterval 0..1 Quantity "Minimum dispense interval. If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here."
  * offLabel 0..1 Base "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the drug" 
    * isOffLabelUse 1..1 boolean "Indicates off-label use. Must be 'true' when .reason is provided."
    * reason[x] 0..* CodeableConcept or string "Reason or related clarification for off-label use"
  * note 0..1 string "Additional information or comments, e.g. message to the dispenser"
