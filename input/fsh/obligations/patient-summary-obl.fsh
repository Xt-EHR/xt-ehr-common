Profile: EHDSPatientSummaryObligations
Parent: EHDSPatientSummary
Title: "Patient summary obligations"
Description: "Obligations for the logical model for patient summary."

* header
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * subject
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * identifier
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * author[x] //EHDSHealthProfessional	 // hp author
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * date
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * status
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * language
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * documentType
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * documentTitle
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * legalAuthentication
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  
* presentedForm
  * insert AbleToPopulate(SHOULD)
  * insert Display(SHOULD)

* alerts
  * insert AbleToPopulate(SHOULD)
  * insert Process(SHOULD)
  * generatedNarrative  
    * insert AbleToPopulate(SHOULD)
    * insert ObligationDocumentation("System shall be able to populate generatedNarrative if the structured content is not supported by the system.")
    * insert Display(SHOULD)
    * insert ObligationDocumentation("System shall display generatedNarrative if the structured content is not supported by the system.")
  * medicalAlert 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Display(SHOULD)


* allergiesAndIntolerances
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Display(SHOULD)
  * emptyReason
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * allergyIntolerance 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Display(SHOULD)

* medicationSummary
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Display(SHOULD)
  * emptyReason
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * medicationUse
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Display(SHOULD)

* problems
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * emptyReason
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * problem 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)

* medicalDevicesAndImplants
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * emptyReason
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * deviceUse
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)

* procedures
  * insert AbleToPopulate(SHALL)
  * insert Process(SHALL)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * emptyReason
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * procedure 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)

* immunisations
  * insert AbleToPopulate(SHOULD)
  * insert Process(SHOULD)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * immunisation 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)

* pregnancyHistory
  * insert AbleToPopulate(SHOULD)
  * insert Process(SHOULD)
  * generatedNarrative
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)
  * currentPregnancyStatus 
    * insert AbleToPopulate(SHALL)
    * insert Process(SHALL)
  * note
    * insert AbleToPopulate(SHOULD)
    * insert Process(SHOULD)

* patientStory
  * insert Process(SHOULD)

* advanceDirectives
  * insert Process(SHOULD)
  