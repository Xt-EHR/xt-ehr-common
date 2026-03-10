Profile: EHDSRelatedPersonLaboratoryObligations
Parent: EHDSRelatedPersonObligations
Title: "Related person laboratory specific obligations"
Description: "Obligations for the logical model of related person in the scope of laboratory use case"

* name
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate one or more names of the related person meeting conformity requirements on the name structure if a value is known and allowed to be shared. ")
  * insert OblConsumer(#SHALL:display)
* subject
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care (patient\).")
  * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved.")
  * insert OblConsumerDoc(#SHALL:process, "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused.")
* relationship
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL be able to populate relationship between related person and the patient.")
  * insert OblConsumer(#SHALL:display)

* telecom
//  * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR systems SHOULD populate contact information of the  related person.")
  * insert OblProducer(#SHOULD:able-to-populate)