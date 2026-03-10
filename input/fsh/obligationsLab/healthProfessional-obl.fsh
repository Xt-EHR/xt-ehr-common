Profile: EHDSHealthProfessionalLaboratoryObligations
Parent: EHDSHealthProfessionalObligations
Title: "Health professional laboratory specific obligations"
Description: "Obligations for the logical model of health professional in the scope of laboratory use case"
* identifier
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate one or more business identifiers of the health professional. ")
  * insert OblConsumerDoc(#SHALL:process, "If provided\, EHR systems SHOULD display and SHALL process. Processing means mainly store as part of the resource and consider the value for furter processing (e.g. validation\, retrieval of details from registry\, etc.\).")
* name
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate name of the health professional.")
  * insert OblConsumer(#SHALL:display)

* telecom
  * insert OblConsumer(#SHALL:display)
* professionalRole
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:display)

  * organisation
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate organization related to the health professional.")
    * insert OblConsumer(#SHALL:display)
