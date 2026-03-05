Profile: EHDSMedicationAdministrationLaboratoryObligations
Parent: EHDSMedicationAdministration
Title: "Medication Administration laboratory specific obligations"
Description: "Obligations for the logical model of medication administration in the scope of laboratory use case"

* header
  * subject
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care (patient\).")
    * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved.")
    * insert OblConsumerDoc(#SHALL:process, "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused.")
  * status
    * insert OblProducer(#SHALL:able-to-populate)


* medication
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* occurrence[x]
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* occurrenceDateTime
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* occurrencePeriod
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHALL:display)

* dosage
  * insert OblProducer(#SHALL:able-to-populate)
* note
  * insert OblProducer(#SHOULD:able-to-populate)
