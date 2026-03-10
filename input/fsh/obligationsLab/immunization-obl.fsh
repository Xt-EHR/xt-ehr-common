Profile: EHDSImmunisationLaboratoryObligations
Parent: EHDSImmunisationObligations
Title: "Immunisation laboratory specific obligations"
Description: "Obligations for the logical model of immunisation in the scope of laboratory use case"

* header
  * status
    * insert OblProducerDoc(#SHALL:able-to-populate, "Immunization status (e.g.\, “completed\"\, \"not-done\"\) SHALL be provided.")
  * subject
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care (patient\).")
    * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved.")
    * insert OblConsumerDoc(#SHALL:process, "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused.")

* vaccine
  * insert OblProducerDoc(#SHALL:able-to-populate, "Type of immunisation SHELL be provided.")
  * insert OblConsumer(#SHALL:display)

* administrationTime
  * insert OblProducerDoc(#SHALL:able-to-populate, "Time of immunisation SHELL be provided.")
  * insert OblConsumer(#SHOULD:display)


