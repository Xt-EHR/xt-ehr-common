Profile: EHDSDeviceLaboratoryObligations
Parent: EHDSDevice
Title: "Device laboratory specific obligations"
Description: "Obligations for the logical model of device in the scope of laboratory use case"
* instanceIdentifier
  * insert OblProducer(#SHOULD:able-to-populate)
* udi
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumerDoc(#SHALL:process, "Consumer system SHALL consider the value to assees comparability of the result values if device is the author of the observation.")
* manufacturer
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:display)
* lotNumber
  * insert OblProducer(#SHOULD:able-to-populate)
* name
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:display)
  * value
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * type
    * insert OblProducer(#SHALL:able-to-populate)
* modelNumber
  * insert OblProducer(#SHOULD:able-to-populate)
* version
  * insert OblProducer(#SHOULD:able-to-populate)

* note
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:display)
