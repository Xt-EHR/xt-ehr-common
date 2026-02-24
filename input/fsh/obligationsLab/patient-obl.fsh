Profile: EHDSPatientLaboratoryObligations
Parent: EHDSPatient
Title: "Patient Obligations"
Description: "Obligations for the logical model of patient"
* identifier
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate one or more business identifiers of the patient. ")
  * insert OblConsumerDoc(#SHOULD:display, "SHALL process patient identifiers to ensure proper assignment of information.")
  * insert OblConsumerDoc(#SHALL:process, "SHOULD display identifier  when needed to users.")
* name
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate one or more names of the patient meeting conformity requirements on the name structure if a value is known and allowed to be shared. ")
  * insert OblConsumer(#SHALL:display)
* dateOfBirth
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate date of birth of the patient. ")
  * insert OblConsumer(#SHALL:display)

* administrativeGender
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate administrative gender of the patient using valid code fro agreed code system. ")
  * insert OblConsumer(#SHALL:display)
