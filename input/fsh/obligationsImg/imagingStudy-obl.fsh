Profile: EHDSImagingStudyObligations
Parent: EHDSImagingStudy
Title: "Imaging Study Obligations"
Description: "Obligations for the logical model of imaging study."

* header
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
  * subject
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * identifier
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * author[x]
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * date
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * status
    * insert OblProducer(#SHALL:able-to-populate)
    //* insert OblConsumer(#SHALL:process)
  * language
    * insert OblProducer(#SHOULD:able-to-populate)
    //* insert OblConsumer(#SHALL:process)
* modality
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* bodySite
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* encounter
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* started
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* basedOn
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* numberOfSeries
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* numberOfInstances
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* description
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* studyCustodian
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* studyEndpoint
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:process)
* series
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
  * seriesUid
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * number
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * seriesModality
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * description
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * numberOfInstances
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * seriesEndpoint
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * bodySite
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * seriesSpecimen
    // * insert OblProducer(#SHOULD:able-to-populate)
    // * insert OblConsumer(#SHOULD:process)
  * started
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * instancesInTheSeries
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
    * instanceTitle
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * instanceUid
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * sopClass
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * instanceNumber
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * numberOfFrames
      * insert OblProducer(#SHOULD:able-to-populate)
      //* insert OblConsumer(#SHOULD:process)
    * keyImage
      * insert OblProducer(#SHOULD:able-to-populate)
      //* insert OblConsumer(#SHOULD:process)
      * flag
        * insert OblProducer(#SHOULD:able-to-populate)
        //* insert OblConsumer(#SHOULD:process)
      * reason
        * insert OblProducer(#SHOULD:able-to-populate)
        //* insert OblConsumer(#SHOULD:process)
      * seriesUID
        * insert OblProducer(#SHALL:able-to-populate)
        //* insert OblConsumer(#SHOULD:process)
      * instanceUID
        * insert OblProducer(#SHALL:able-to-populate)
        //* insert OblConsumer(#SHOULD:process)