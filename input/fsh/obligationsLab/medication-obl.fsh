Profile: EHDSMedicationLaboratoryObligations
Parent: EHDSMedication
Title: "Medication laboratory specific obligations"
Description: "Obligations for the logical model of medication in the scope of laboratory use case"
* identifyingCode[x]
  * insert OblProducer(#SHALL:able-to-populate)
* classification
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* productName
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:display)
* marketingAuthorisationHolder
  * insert OblProducer(#SHOULD:able-to-populate)

* description
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHALL:display)
* item
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHALL:display)

  * ingredient
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
    * isActive
      * insert OblProducer(#SHOULD:able-to-populate)
    * substance
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * strengthInfo
      * strength
        * insert OblProducer(#SHALL:able-to-populate)
        * insert OblConsumer(#SHALL:display)
