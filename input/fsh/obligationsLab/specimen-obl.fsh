Profile: EHDSSpecimenLaboratoryObligations
Parent: EHDSSpecimen
Title: "Specimen Obligations"
Description: "Obligations for the logical model of specimen"

* identifier
  * insert OblProducer(#SHALL:able-to-populate)
* status
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* type
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* specimenSource[x]
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:display)
* parentSpecimen
  * insert OblProducer(#SHALL:able-to-populate)
* request
  * insert OblProducer(#SHOULD:able-to-populate)
* combined
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:display)
* collection
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
  * collected[x]
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * bodySite
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
* container
  * containerDevice
    * insert OblProducer(#SHALL:able-to-populate)
* condition
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* note
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
