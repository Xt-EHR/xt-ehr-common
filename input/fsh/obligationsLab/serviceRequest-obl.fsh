Profile: EHDSServiceRequestLaboratoryObligations
Parent: EHDSServiceRequest
Title: "Service request laboratory specific obligations"
Description: "Obligations for the logical model of service request in the scope of laboratory use case"

* header
  * subject
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care (patient\).")
  * author[x]
    * insert OblProducerDoc(#SHALL:able-to-populate, "Service request authorship SHALL be present.")
  * date
    * insert OblProducerDoc(#SHALL:able-to-populate, "Issue date SHALL be present.")
  * status
    * insert OblProducerDoc(#SHALL:able-to-populate, "SHALL be able to populate status of the service request.")
  * identifier
    * insert OblProducerDoc(#SHOULD:able-to-populate, "A business identifier SHALL be populated\, if known.")

* description
  * insert OblProducerDoc(#SHOULD:able-to-populate, "SHALL populate service request note\, if known.")
  * insert OblConsumer(#SHALL:display)
* code
  * insert OblProducerDoc(#SHALL:able-to-populate, "SHALL populate type of requested service")
  * insert OblConsumer(#SHALL:display)
* reason[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "Reason for service request SHALL be populated")
* quantity
  * insert OblProducerDoc(#SHALL:able-to-populate, "Quantity of requested service SHALL be populated")

* priority
  * insert OblProducerDoc(#SHOULD:able-to-populate, "SHALL be able to populate service request priority\, if known.")
* supportingInformation[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "SHALL populate supporting information for the servce request\, e.g. Medication\, Procedure\, Observation\, etc.\, if known.")
* specimen
  * insert OblProducerDoc(#SHALL:able-to-populate, "SHALL populate related  specimen\, if known.")
