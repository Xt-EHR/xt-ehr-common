Profile: EHDSPatientSummaryObligations
Parent: EHDSPatientSummary
Title: "Patient summary obligations"
Description: "Obligations for the logical model for patient summary."

* header
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * subject
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * identifier
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * author[x] //EHDSHealthProfessional	 // hp author
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * date
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * status
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * language
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * documentType
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * documentTitle
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

  * legalAuthentication
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  
* presentedForm
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer

* alerts
  * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * generatedNarrative  
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * note
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * medicalAlert 
    * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
* allergiesAndIntolerances
  * ^extension[$obligation][+].extension[code].valueCode = #SHALL:able-to-populate
  * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * generatedNarrative  
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
  * note
    * ^extension[$obligation][+].extension[code].valueCode = #SHOULD:able-to-populate
    * ^extension[$obligation][=].extension[actor].valueCanonical = $actor-producer
