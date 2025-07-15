Logical: EHDSImagingReport
Title: "Imaging report model"
Parent: EHDSDocument
Description: """EHDS refined base model for Medical Imaging Result Report"""
Characteristics: #can-be-target


* header 1..1
* header ^short = "Imaging Report header"
* header.accessionNumber 0..1 string "Accession number - an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study(ies) and related imaging report(s). As it is prefixed by the registration authority it is a globally unique ID, usable both nationally and cross-border."
* header.healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* header.intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"

* body 0..1 Base "Imaging Report structured body"
  * orderInformation 0..* Base "Order Information (Imaging Result Report could respond to multiple orders)."
    * orderId 1..* Identifier "Identifier(s) of the imaging service order."
    * orderDateAndTime 0..1 dateTime "Date and time of the order placement."
    * orderPlacer[x] 0..1 EHDSHealthProfessional or EHDSOrganisation or EHDSPatient "The person/organisation \"authorised\" to place the order. Order placer could be either a health professional, health professional organisation or the patient himself."
    * orderReasonText 0..* string "An explanation or justification for why this service is being requested in textual form."
    * orderReason[x] 0..* EHDSCondition or EHDSObservation "An explanation or justification for why this service is being requested in coded form."
    * clinicalQuestion 0..1 string "Specification of clinical question (goal of the investigation) to be answered by the imaging investigation."
    * supportingInformation 0..1 Base "Additional clinical information about the patient or specimen that may affect service delivery or interpretation." """This information includes diagnosis, clinical findings and other observations. This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order.  For example, reporting the metal implants present in patient's body."""
      * observation 0..* EHDSObservation "Clinical findings and other observations (e.g., height and weights of the patient)."
      * condition 0..* EHDSCondition "Conditions that may influence the service or result interpretation."
      * medicationAdministration 0..* EHDSMedicationAdministration "Medication administered before ordering the service."
      * devices 0..* EHDSDevice "List of implants or devices that affect the course of the examination or its interpretation (e.g. metal implants)."
      * pregnancyStatus 0..1 CodeableConcept "Pregnancy status when the imaging examination was performed (e.g., pregnant, not pregnant, unknown)."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
      * gestationalAge 0..1 Quantity "Gestational age - duration of the pregnancy on the day on which the patient was asked or at the delivery. The duration can be given in weeks and/or days."
      * sexForClinicalUse 0..* CodeableConcept "Sex parameter for clinical use - provides guidance on how a recipient should apply settings or reference ranges that are derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making, and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population."
        * ^binding.description = "HL7 sex-parameter-for-clinical-use"
        * ^binding.strength = #preferred
      * otherSupportingInformation 0..* Resource "Any other type of relevant supporting information"
  * specimen 0..* EHDSSpecimen "Specimen information. Note: A specimen (not attached to a body) can be used for diagnostic, forensic and medical research purposes. "
  * serviceRequest 0..* EHDSServiceRequest "Specification of requested service(s)."
  * exposureInformation 0..1 Base "Information on total exposure to ionising radiation. This information is required by regulations in several EU countries."
    * effectiveDose 0..* Quantity "Effective dose - sum of equivalent doses to all organs, from external and/or internal exposures, each adjusted to account for the sensitivity of the organ to radiation. [mSv]"
      * ^binding.description = "UCUM (for units)"
      * ^binding.strength = #preferred
    * equivalentDoseInformation 1..1 Base "Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv]."
      * equivalentDose 1..1 Quantity "Equivalent dose is a measure of the radiation dose to tissue where an attempt has been made to allow for the different relative biological effects of different types of ionizing radiation. Equivalent dose is based on the absorbed dose per organ, adjusted to account for the effectiveness of the type of radiation [mSv]."
        * ^binding.description = "UCUM (for units)"
        * ^binding.strength = #preferred
      * tissueType 1..1 CodeableConcept "Type of the tissue for which do dosage was enumerated."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
  * examinationReport 1..1 Base "Examination report content."
    * modality 1..* CodeableConcept "Imaging modality (or modalities) used during imaging investigation (DICOM CID029)."
      * ^binding.description = "DICOM Modality"
      * ^binding.strength = #preferred
    * bodyPart 0..* Base "All body parts investigated"
      * bodyLocation 0..1 CodeableConcept "Localisation on/in the body."
        * ^binding.description = "SNOMED CT, ICD-O-3"
        * ^binding.strength = #preferred
      * laterality 0..1 CodeableConcept "Body side of the body location, if needed to distinguish from a similar location on the other side of the body."
        * ^binding.description = "SNOMED CT"
        * ^binding.strength = #preferred
    * imagingProcedures 0..* EHDSProcedure "Imaging procedure performed during imaging study."
    * medication 0..* EHDSMedicationAdministration "Information about medication administered (contrast, sedation, stress agents), etc."
    * adverseReaction 0..* EHDSAllergyIntolerance "Adverse reactions manifested during imaging investigation."
    * resultData 0..1 Base "Laboratory report result data"
      * resultText 1..1 string "Comments and narrative representation of the observation results and findings."
      * observationResults 0..* EHDSObservation "Observation details (report could consist of multiple observations)"
    * conclusion 1..1 Base "A concise and clinically contextualised summary including interpretation/impression of the diagnostic report."
      * impression 1..1 string "Narrative description of the clinical conclusion (impression)."
      * conditionOrFinding[x] 0..* EHDSCondition or EHDSObservation "Condition or finding from imaging investigation."
  * recommendation 0..1 Base "Recommendations for additional imaging tests or other actions"
    * description 1..1 string "Narrative description of the recommended activities including additional test, medication etc."
    * carePlan 0..* EHDSCarePlan "A complex and structured information about recommended goals, activities and objectives in the form of one or more formal care plan."
  * comparisonStudy 0..* EHDSImagingReport "Documentation (reference) of a prior Imaging Report to which the current images were compared."
* knowledgeResources 0..0
* dicomStudyMetadata 0..* EHDSImagingStudy "Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities."
* attachments[x] 0..* EHDSAttachment or EHDSMedia "Report attachments data elements"