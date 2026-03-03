Profile: EHDSOrganisationLaboratoryObligations
Parent: EHDSOrganisation
Title: "Organisation laboratory specific obligations"
Description: "Obligations for the logical model of organisation in the scope of laboratory use case"
* identifier
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate one or more business identifiers of the organization. ")
  * insert OblConsumerDoc(#SHALL:process, "If provided\, EHR systems SHOULD display and SHALL process. Processing means mainly store as part of the resource and consider the value for furter processing (e.g. validation\, retrieval of details from registry\, etc.\).")

* name
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate name of the organization.")
  * insert OblConsumer(#SHALL:display)
* address
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate address of the organization.")
  * insert OblConsumer(#SHALL:display)
* telecom
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate telecommunication contacts of the organization.")
  * insert OblConsumer(#SHALL:display)
* partOf
  * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate relationship to an organization which it is part of. ")
  * insert OblConsumer(#SHALL:display)
