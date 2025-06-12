


Logical: eHNPatientSummaryHeader
Title: "Patient Summary Header"
Description: "A data model representing the Patient Summary Header according to the eHN guidelines."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = http://hl7.org/fhir/standards-status#external
* patientSummaryHeader 1..1 BackboneElement "A.1 Patient summary header data elements"
  * identification 1..1 BackboneElement "A.1.1 Identification of the patient/subject"
    * nationalHealthcarePatientId 0..1 string "A.1.1.1 National healthcare patient ID" "Country ID, unique to the patient in that country. Example: ID for Portuguese patient."
    * familyNameSurname 0..* string "A.1.1.2 Family name/surname" "The given name/first name of the patient (also known as forename or first name). This field can contain more than one element."
    * givenName 0..* string "A.1.1.3 Given name" "The family name/surname/last name of the patient. This field can contain more than one element or multiple fields could be present."
    * dateOfBirth 1..1 date "A.1.1.4 Date of birth" "The date of birth of the patient [ISO TS 22220]. As age of the patient might be important for correct interpretation of test result values, complete date of birth should be provided."
    * gender 1..1 code "A.1.1.5 Gender" "This field must contain a recognised valid value for 'administrative gender'. If different, 'physiological gender' should be communicated elsewhere."
      * ^binding.description = "HL7 Administrative Gender"
    * countryOfAffiliation 0..1 code "A.1.1.6 Country of affiliation" "Name of country of affiliation"
      * ^binding.description = "ISO 3166"

  * contactInformation 1..1 BackboneElement "A.1.2 Contact information" "Patient and health professional contact information."
    * patientAddress 1..1 BackboneElement "A.1.2.1 Patient address" "Detailed structured address of the patient."
      * street 0..1 string "A.1.2.1.1 Street" "Example: Rua dos Campeões"
      * houseNumber 0..1 string "A.1.2.1.2 House number" "Example: 246"
      * city 0..1 string "A.1.2.1.3 City" "Example: Porto"
      * postCode 0..1 string "A.1.2.1.4 Post code" "Example: 4500"
      * stateOrProvince 0..1 string "A.1.2.1.5 State or province" "Example: Vila Nova de Gaia"
      * country 0..1 code "A.1.2.1.6 Country" "Example: PT"
        * ^binding.description = "ISO 3166"
      * telephoneNo 0..1 string "A.1.2.1.7 Telephone no." "Example: +351 20 7025 6161"
      * email 0..1 string "A.1.2.1.8 Email"     

    * preferredHpToContact 0..* BackboneElement "A.1.2.2 Preferred HP to contact" "This section can be repeated and linked to any specific information in the Patient Summary, for example a link between a rare disease problem (A.2.3.1) and the rare disease specialist responsible for the care of the individual patient (this section)."
      * nameOfHp 0..1 string "A.1.2.2.1 Name of the HP" "Name of the Health Professional that has been treating or taking responsibility for the patient."
      * roleOfHp 0..1 string "A.1.2.2.2 Role of the HP" "Health professional role."
      * hpOrganisation 0..1 string "A.1.2.2.3 HP Organisation" "Health professional organisation."
      * telephoneNo 0..1 string "A.1.2.2.4 Telephone no." "Example: +45 20 7025 6161"
      * email 0..1 string "A.1.2.2.5 Email" "Email of the HP/legal organisation."
      * networkAffiliation 0..1 string "A.1.2.2.6 Network affiliation" "The HP organization is affiliated with a European network, for example an ERN."
      * relatedWith 0..* string "A.1.2.2.7 Related with" "identify the entry or entries of this Patient Summary for which the HP is the preferred contact."

    * contactPersonLegalGuardian 0..1 BackboneElement "A.1.2.3 Contact person/legal guardian" "Information about the patient's legal guardian or contact person."
      * roleOfThatPerson 0..1 code "A.1.2.3.1 Role of that person" "Role of the contact person: legal guardian, next of kin, other person to contact."
        * ^binding.description = "HL7 RoleClass"
      * relationshipLevel 0..1 code "A.1.2.3.2 Relationship level" "Relationship type with the patient (e.g. father, wife, daughter)."
        * ^binding.description = "HL7 RoleCode"
      * givenName 0..* string "A.1.2.3.3 Given name" "The first name of the contact person/guardian (example: Peter). This field can contain more than one element."
      * familyNameSurname 0..* string "A.1.2.3.4 Family name/surname" "This field can contain more than one element. Example: Español Smith."
      * telephoneNo 0..1 string "A.1.2.3.5 Telephone no." "Example: +45 20 7025 6161"
      * email 0..1 string "A.1.2.3.6 Email" "Email of the contact person/legal guardian."

  * insuranceInformation 0..1 BackboneElement "A.1.3 Insurance information" "Information related to the patient's insurance."
    * insuranceNumber 0..1 string "A.1.3.1 Insurance number" "Example: QQ 12 34 56 A"

  * documentData 1..1 BackboneElement "A.1.4 Document data" "Metadata about the generation of the patient summary."
    * dateCreated 1..1 date "A.1.4.1 Date created" "Date on which PS was generated."
    * dateOfLastUpdate 0..1 date "A.1.4.2 Date of last update" "Date on which PS was updated (date of most recent version)."
    * natureOfPs 0..1 code "A.1.4.3 Nature of the PS" "Defines the context in which it was generated. Distinguishes between three methodological approaches for generating the PS: direct human intervention by an HP, automatically generated approach and mixed approach."

  * authorAndOrganisation 1..1 BackboneElement "A.1.5 Author and Organisation" "The individual or organization responsible for authoring the Patient Summary."
    * authorOrganisation 1..1 string "A.1.5.1 Author organisation" "At least one Author and Organisation shall be listed. In the event that there is no Author, at least one Organisation shall be listed This Author should be able to provide further information on the provenance of the data present in the patient summary. Different authors contributing to individual sections and/or entries could be provided at the relevant level."
    * legalAuthenticator 1..1 string "A.1.5.2 Legal authenticator" "Legal entity (Health Professional or Provider) who authenticated the summary."

  * additionalInformation 0..1 BackboneElement "A.1.6 Additional information / Knowledge resources" "References to external knowledge resources relevant to the Patient Summary."
    * externalReference 0..* string "A.1.6.1 External reference" "A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."
    * relatedWith 0..* string "A.1.6.2 Related with" "Identify the entry or entries of this Patient Summary for which this additional information relates with, for example a link between a rare disease problem (section A.2.3.1) and guidelines for that particular rare disease (this section)."


Logical: eHNPatientSummaryBody
Title: "Patient Summary Body"
Description: "A data model representing the Patient Summary Body according to the eHN guidelines."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = http://hl7.org/fhir/standards-status#external
* patientSummaryBody 1..1 BackboneElement "A.2 Patient summary body data elements" "Structured health information describing alerts, history, observations, and treatments."
  * alerts 0..1 BackboneElement "A.2.1 Alerts" "Information about allergies or other critical alerts."
    * allergy 0..* BackboneElement "A.2.1.1 Allergy" "Details of known allergies or intolerances."
      * allergyDescription 0..1 string "A.2.1.1.1 Allergy description" "Textual description of the allergy or intolerance."
      * typeOfPropensity 0..1 code "A.2.1.1.2 Type of propensity" "This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)."
      * allergyManifestation 0..1 code "A.2.1.1.3 Allergy manifestation" "Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction)."
      * severity 0..1 code "A.2.1.1.4 Severity" "Severity of the clinical manifestation of the allergic reaction."
      * criticality 0..1 code "A.2.1.1.5 Criticality" "Potential life-threatening risk from exposure to the allergen."
      * onsetDate 0..1 date "A.2.1.1.6 Onset date" "Date the allergic reaction was observed."
      * endDate 0..1 date "A.2.1.1.7 End date" "Date the allergy or intolerance was resolved or no longer tracked."
      * status 0..1 code "A.2.1.1.8 Status" "Current status of the allergy or intolerance: active, resolved, etc."
      * certainty 0..1 code "A.2.1.1.9 Certainty" "Certainty level regarding the diagnosis of the allergy."
      * agentOrAllergen 0..1 code "A.2.1.1.10 Agent or Allergen" "Substance (drug, food, etc.) responsible for the reaction."
    * medicalAlertInformation 0..* BackboneElement "A.2.1.2 Medical alert information" "Other alerts not included in allergies."
      * healthcareAlertDescription 0..1 string "A.2.1.2.1 Healthcare alert description" """Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat. -
Example 1: intolerance to aspirin due to gastrointestinal bleeding.
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. 
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact.
"""

  * medicalHistory 0..1 BackboneElement "A.2.2 Medical history" "Historical clinical data, including past diseases, vaccines, and treatments."
    * vaccinationInformation 0..* BackboneElement "A.2.2.1 Vaccination/prophylaxis information" "Details of administered or recorded vaccinations."
      * diseaseTargeted 0..1 code "A.2.2.1.1 Disease or agent targeted" "Disease or agent protected against by the vaccine."
      * vaccineProphylaxis 0..1 code "A.2.2.1.2 Vaccine/prophylaxis" "Generic description of the vaccine or prophylactic agent."
      * vaccineProductName 0..1 string "A.2.2.1.3 Vaccine medicinal product name" "Brand name of the vaccine medicinal product."
      * vaccineProductIdentifier 0..1 string "A.2.2.1.3.1 Identifier of the vaccine medicinal product" "MPID, EMA PMS ID or national vaccine identifier."
      * marketingAuthorisationHolder 0..1 string "A.2.2.1.4 Marketing Authorisation Holder" "Entity holding the marketing authorisation."
      * vaccinationSeriesNumber 0..1 string "A.2.2.1.5 Number in a series of vaccinations/doses" "Order number in the vaccine course."
      * batchNumber 0..1 string "A.2.2.1.6 Batch/lot number" "Batch number identifying the vaccine lot."
      * dateOfVaccination 0..1 date "A.2.2.1.7 Date of vaccination" "Date the vaccine was administered."
      * administeringCentre 0..1 string "A.2.2.1.8 Administering centre" "Name/code of authority that administered the vaccine."
      * healthProfessionalId 0..1 string "A.2.2.1.9 Health Professional identification" "Name/code of the professional who administered the vaccine."
      * countryOfVaccination 0..1 code "A.2.2.1.10 Country of vaccination" "Country where the vaccine was administered."
      * nextVaccinationDate 0..1 date "A.2.2.1.11 Next vaccination date" "Planned date for the next dose in the vaccination course."

    * resolvedProblems 0..* BackboneElement "A.2.2.2 Resolved, closed or inactive problems" "Previously resolved or inactive health problems."
      * problemDescription 0..1 string "A.2.2.2.1 Problem description" "Description of a resolved/closed/inactive condition (e.g. hepatic cyst)."
      * onsetDateResolved 0..1 date "A.2.2.2.2 Onset date" "Date the problem began."
      * endDateResolved 0..1 date "A.2.2.2.3 End date" "Date the problem was resolved or marked inactive."
      * resolutionCircumstances 0..1 string "A.2.2.2.4 Resolution circumstances" "Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.). This field includes 'free text' if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem 'hepatic cyst' and will beincluded in surgical procedures)."

    * narrativeMedicalHistory 0..1 BackboneElement "A.2.2.3 Medical history" "Chronological/anecdotal narrative of patient's health history."
      * medicalHistoryNarrative 0..1 string "A.2.2.3.1 Medical history" "This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form. See Section 2, Chapter III, Art 7, (c)."

  * medicalProblems 0..1 BackboneElement "A.2.3 Medical problems" "Current and past diagnoses, conditions, and implants."
    * currentProblems 0..* BackboneElement "A.2.3.1 Current problems" "Health problems currently affecting the patient."
      * diagnosisDescription 0..1 string "A.2.3.1.1 Problem/diagnosis description" "Current health condition relevant to patient care."
      * diagnosisOnsetDate 0..1 date "A.2.3.1.2 Onset date" "Date the current condition began."
      * diagnosisAssertionStatus 0..1 code "A.2.3.1.3 Diagnosis assertion status" "Certainty level or assertion associated with the diagnosis."

    * medicalDevicesImplants 0..* BackboneElement "A.2.3.2 Medical devices and implants" "Devices impacting the patient’s health status."
      * deviceDescription 0..1 string "A.2.3.2.1 Device and implant description" "Description of implanted/external devices (e.g. pacemaker)."
      * deviceId 0..1 string "A.2.3.2.2 Device ID" "Standard identifier of the medical device."
      * implantDate 0..1 date "A.2.3.2.3 Implant date" "Date when device was implanted."
      * endDate 0..1 date "A.2.3.2.4 End date" "Date when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted."

    * procedures 0..* BackboneElement "A.2.3.3 Procedures" "Relevant past or ongoing procedures."
      * procedureDescription 0..1 string "A.2.3.3.1 Procedure description" "Description of the procedure."
      * bodySite 0..1 string "A.2.3.3.2 Body site" "Target body site of the procedure."
      * procedureDate 0..1 date "A.2.3.3.3 Procedure date" "Date the procedure was performed."

    * functionalStatus 0..* BackboneElement "A.2.3.4 Functional status" "Information about patient functional capacity."
      * functionalDescription 0..1 string "A.2.3.4.1 Description" "Description of how functional status impacts treatment or care."
      * functionalOnsetDate 0..1 date "A.2.3.4.2 Onset date" "Onset date of the functional issue."
      * functionalAssessmentDescription 0..1 string "A.2.3.4.3 Functional assessment description" "Textual or structured description of the assessment."
      * functionalAssessmentDate 0..1 date "A.2.3.4.4 Functional assessment date" "Date the functional assessment was done."
      * functionalAssessmentResult 0..1 string "A.2.3.4.5 Functional assessment result" "Outcome or result of the functional assessment."


  * medicationSummary 0..1 BackboneElement "A.2.4 Medication summary"
    * currentPastMedicines 0..1 BackboneElement "A.2.4.1 Current and relevant past medicines" "Relevant prescribed medicines whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not, or medicines that influence current health status or are relevant to a clinical decision"
      * medicationReason 0..1 string "A.2.4.1.1 Medication reason" "The reason why the medication is or was prescribed, or used\nThis is the reason why the medication is being prescribed or used. It provides a link to the Past or current health conditions or problems that the patient has had or has."
      * intendedUse 0..1 string "A.2.4.1.2 Intended use" "Indication intended use as: prevention or treatment"
      * brandName 0..1 string "A.2.4.1.3 Brand name" "Brand name if biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)"
      * activeIngredientLists 0..1 string "A.2.4.1.4 Active ingredient lists" "Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: \"paracetamol\""
      * strength 0..1 string "A.2.4.1.5 Strength" "The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet"
      * pharmaceuticalDoseForm 0..1 string "A.2.4.1.6 Pharmaceutical dose form" "The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup)"
      * dosageRegimen 0..1 string "A.2.4.1.7 Dosage Regimen" "Number of units per intake and frequency of intake over a specified duration of time.\nExample: 1 tablet every 24h, for 10 days"
      * routeOfAdministration 0..1 string "A.2.4.1.8 Route of administration" "Path by which the pharmaceutical product is taken into or makes contact with the body."
      * dateOfOnsetOfTreatment 0..1 date "A.2.4.1.9 Date of onset of treatment" "Date when patient needs to start taking the medicine prescribed"

  * socialHistory 0..1 BackboneElement "A.2.5 Social history"
    * socialHistoryObservations 0..1 string "A.2.5.1 Social history observations related to health" "Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"
    * referenceDateRange 0..1 string "A.2.5.2 Reference date range" "Example: from 1974 to 2004"

  * pregnancyHistory 0..1 BackboneElement "A.2.6 Pregnancy history"
    * currentPregnancyStatus 0..1 BackboneElement "A.2.6.1 Current pregnancy status"
      * dateOfObservation 0..1 date "A.2.6.1.1 Date of observation" "Date on which the observation of the pregnancy state was made"
      * pregnancyStatus 0..1 code "A.2.6.1.2 Status" "Provides the woman's current state at the date the observation was made: e.g. pregnant, not pregnant, unknown"
      * expectedDateOfDelivery 0..1 date "A.2.6.1.3 Expected date of delivery" "Date on which the woman is due to give birth."
    * historyOfPreviousPregnancies 0..1 BackboneElement "A.2.6.2 History of previous pregnancies"
      * previousPregnanciesStatus 0..1 code "A.2.6.2.1 Previous pregnancies status" "Information on the woman's previous pregnancies: Yes, previous pregnancies; No, previous pregnancies; Unknown"
      * previousPregnanciesDescription 0..1 BackboneElement "A.2.6.2.2 Previous pregnancies description"
        * outcomeDate 0..1 date "A.2.6.2.2.1 Outcome date" "Date referred to the previous pregnancies outcome"
        * outcome 0..1 code "A.2.6.2.2.2 Outcome" "Outcome of the previous pregnancies"
        * numberOfChildren 0..1 string "A.2.6.2.2.3 Number of children" "Number of children/fetus in this specific pregnancy"

  * patientProvidedData 0..1 BackboneElement "A.2.7 Patient provided data"
    * travelHistory 0..1 BackboneElement "A.2.7.1 Travel history"
      * travelCountry 0..1 code "A.2.7.1.1 Country" "Country(s) visited"
      * travelPeriod 0..1 string "A.2.7.1.2 Period" "Date of entry and departure"
    * advanceDirective 0..1 BackboneElement "A.2.7.2 Advance Directive"
      * documentation 0..1 string "A.2.7.2.1 Documentation" "Existence of documentation on living will"

  * results 0..1 BackboneElement "A.2.8 Results"
    * resultObservations 0..* BackboneElement "A.2.8.1 Result observations" "A list of observation results pertaining to the subject of care's health condition and which might have impact on future treatments"
      * observationDate 0..1 dateTime "A.2.8.1.1 Date" "Date and time of the observation"
      * observationType 0..1 code "A.2.8.1.2 Observation type" "Observation results types that may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results.\nExamples:\nDiagnostic results (Blood group, Laboratory Observations, Imaging results etc.)\nPhysical findings (Vital signs observations)"
      * resultDescription 0..1 string "A.2.8.1.3 Result description" "Narrative representation of the observation result and findings."
      * observationDetails 0..1 string "A.2.8.1.4 Observation details" "Observation details including code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection."
      * observationResults 0..1 string "A.2.8.1.5 Observation results" "Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about referential ranges and result interpretation. Content of the observation result will vary according to the type of the observation."
      * performer 0..1 string "A.2.8.1.6 Performer" "Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole PS document."
      * reporter 0..1 string "A.2.8.1.7 Reporter" "With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."

  * planOfCare 0..1 BackboneElement "A.2.9 Plan of Care" "Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries"
    * planOfCareNarrative 0..1 string "A.2.9.1 Plan of care" "Narrative containing the plan including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient.\nIn the future it is expected that this Section could be provided in a structured and coded format."
