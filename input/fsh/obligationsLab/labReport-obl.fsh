Profile: EHDSLaboratoryReportObligations
Parent: EHDSLaboratoryReport
Title: "Laboratory Report Obligations"
Description: "Obligations for the logical model of laboratory report"

* header
  * insert OblProducerDoc(#SHALL:able-to-populate, "Each producer of a laboratory report SHALL be able to provide basic information\, such as type of the report\, authorship\, status of the report\, title\, etc. This information is crucial for safe identification of the report and for searchability of the report using standardized searching parameters.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume laboratory report SHALL process document header information.")
  * subject
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care.")
    * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved.")
    * insert OblConsumerDoc(#SHALL:process, "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused.")
  * identifier
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:display)
    * insert OblConsumer(#SHALL:process)
  * author[x]
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * date
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * status
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * language
    * insert OblProducer(#SHALL:able-to-populate)
  * documentType
    * insert OblProducer(#SHALL:able-to-populate)
  * documentTitle
    * insert OblProducer(#SHALL:able-to-populate)
  * period
    * insert OblProducer(#SHALL:able-to-populate)

  * attestation
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
    * attester[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * datetime
      * insert OblProducer(#SHALL:able-to-populate)
  * legalAuthentication
    * insert OblProducer(#SHALL:able-to-populate)
    * legalAuthenticator[x]
      * insert OblProducer(#SHALL:able-to-populate)
    * datetime
      * insert OblProducer(#SHALL:able-to-populate)
  * eventType
    * insert OblProducer(#SHALL:able-to-populate)
  * serviceSpecialty
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:display)
  * custodian
    * insert OblProducer(#SHALL:able-to-populate)
* body
  * insert OblProducerDoc(#SHALL:able-to-populate, "Each EHR system that is a producer of a laboratory report SHALL be able to provide structured information about the laboratory investigation\, such as order information\, supporting information\, specimen details and result data.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume laboratory report SHALL process structured body information.")
  * orderInformation
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL be able to populate information about one or more order which this report is based on.")
    * insert OblConsumerDoc(#SHALL:display, "Consumer EHR systems SHALL display key order information to ensure traceability between order and report.")
    * orderId
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumerDoc(#SHOULD:process, "Consumer systems SHOULD use this element to pair result report with laboratory order. ")

    * orderPlacer[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHOULD:display)
    * orderReason[x]
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * clinicalQuestion
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
  * supportingInformation
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHALL:display)
    * observation
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * condition
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * medicationAdministration
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * sexForClinicalUse
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * vaccination
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * otherSupportingInformation
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHOULD:display)
  * specimen
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
  * serviceRequest
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHOULD:display)
  * resultData
    * insert OblProducer(#SHALL:able-to-populate)
    * insert OblConsumer(#SHALL:display)
    * commentsInterpretationAndRecommendations
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
    * laboratoryTestResults
      * insert OblProducer(#SHALL:able-to-populate)
      * insert OblConsumer(#SHALL:display)
* presentedForm
  * insert OblProducerDoc(#SHALL:able-to-populate, "Each EHR system that is a producer of a laboratory report SHALL be able to provide the entire report as issued by the laboratory in a human readable format\, e.g. PDF.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume laboratory report SHALL process the human readable version of the report.")
  * insert OblConsumerDoc(#SHALL:display, "EHR systems that consume laboratory report SHALL render human readable version of the report to the endusers.")
* attachments
  * insert OblProducerDoc(#SHOULD:able-to-populate, "Each EHR system that is a producer of a laboratory report SHOULD be able to provide attachments related to the report\, such as documents\, diagrams\, images of the results\, etc.")
  * insert OblConsumerDoc(#SHOULD:process, "EHR systems that consume laboratory report SHOULD process attachments related to the report.")
  * insert OblConsumerDoc(#SHOULD:display, "EHR systems that consume laboratory report SHOULD render attachments related to the report to the endusers.")
