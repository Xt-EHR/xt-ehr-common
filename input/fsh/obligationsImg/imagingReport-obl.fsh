Profile: EHDSImagingReportObligations
Parent: EHDSImagingReport
Title: "Imaging Report Obligations"
Description: "Obligations for the logical model of imaging report."

* header
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHALL:process)
  * subject
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * identifier
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * author[x]
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * date
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * status
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * language
    * insert OblProducer(#SHALL:able-to-populate)
    //* insert OblConsumer(#SHALL:process)
  * documentType
    * insert OblProducer(#SHALL:able-to-populate)
    //* insert OblConsumer(#SHALL:process)
  * documentTitle
    * insert OblProducer(#SHALL:able-to-populate)
    //* insert OblConsumer(#SHALL:process)
  * period
    * insert OblProducer(#SHOULD:able-to-populate)
  //  * insert OblConsumer(#SHALL:process)
  * attestation
    * insert OblProducer(#SHALL:able-to-populate)
    * attester[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * datetime
      * insert OblProducer(#SHALL:able-to-populate)
  * legalAuthentication
    * insert OblProducer(#SHALL:able-to-populate)
    * legalAuthenticator[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * datetime
      * insert OblProducer(#SHALL:able-to-populate)
  * eventType
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * serviceSpecialty
    //* insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * custodian
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * accessionNumber
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:process)
  * intendedRecipient[x]
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
* presentedForm
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* body
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
  * orderInformation
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
    * orderId
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:process)
    * orderDateTime
      // * insert OblProducer(#SHALL:able-to-populate)
      // * insert OblConsumer(#SHALL:process)
    * orderPlacer[x]
      // * insert OblProducer(#SHALL:able-to-populate)
      // * insert OblConsumer(#SHOULD:process)
    * orderReason[x]
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * clinicalQuestion
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
  * supportingInformation
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * specimen
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
  * exposureInformation
    * insert OblProducer(#SHOULD:able-to-populate)
    //* insert OblConsumer(#SHOULD:process)
  * examinationReport
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
    * modality
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * bodySite
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * imagingProcedures
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * medicationAdministration
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * adverseReaction
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * results[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * conclusion
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
      * impression
        * insert OblProducer(#SHALL:able-to-populate)
        * insert OblConsumer(#SHOULD:process)
      * conditionOrFinding[x]
        * insert OblProducer(#SHALL:able-to-populate)
        * insert OblConsumer(#SHOULD:process)
  * recommendation
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
    * description
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
    * carePlan
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHOULD:process)
  * comparisonStudy
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:process)
* dicomStudyMetadata
  * insert OblProducer(#SHALL:able-to-populate)
  * insert OblConsumer(#SHOULD:process)
* attachments
  * insert OblProducer(#SHOULD:able-to-populate)
  * insert OblConsumer(#SHOULD:process)