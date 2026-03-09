Profile: EHDSLaboratoryReportObligations
Parent: EHDSLaboratoryReport
Title: "Laboratory Report Obligations"
Description: "Obligations for the logical model of laboratory report"

* header
  * insert OblProducerDoc(#SHALL:able-to-populate, "Each producer of a laboratory report SHALL be abe to provide basic information\, such as type of the report\, authorship\, status of the report\, title\, etc. These information is crucial for safe identification of the report and for searchability of the report using standardized searching parameters.")
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
//* intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganisation or EHDSDevice "Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
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


/* Profile: EHDSLaboratoryReportObligations
Parent: EHDSLaboratoryReport
Title: "Laboratory Report Obligations"
Description: "Obligations for the logical model for laboratory report"
* header
  * insert OblCreator(#SHALL:able-to-populate, "Each producer of a laboratory report SHALL be abe to provide basic information\, such as type of the report\, authorship\, status of the report\, title\, etc. These information is crucial for safe identification of the report and for searchability of the report using standardized searching parameters.")
  * insert OblConsumer(#SHALL:process, "EHR systems that consume laboratory report SHALL process document header information.")
* body
  * insert OblCreator(#SHALL:able-to-populate, "Each EHR system that is a producer of a laboratory report SHALL be able to provide structured information about the laboratory investigation\, such as order information\, supporting information\, specimen details and result data.")
  * insert OblConsumer(#SHALL:process, "EHR systems that consume laboratory report SHALL process structured body information.")
* presentedForm
  * insert OblCreator(#SHALL:able-to-populate, "Each EHR system that is a producer of a laboratory report SHALL be able to provide the entire report as issued by the laboratory in a human readable format\, e.g. PDF.")
  * insert OblConsumer(#SHALL:process, "EHR systems that consume laboratory report SHALL process the human readable version of the report.")
  * insert OblConsumer(#SHALL:display, "EHR systems that consume laboratory report SHALL render human readable version of the report to the endusers.")
* attachments
  * insert OblCreator(#SHOULD:able-to-populate, "Each EHR system that is a producer of a laboratory report SHOULD be able to provide attachments related to the report\, such as documents\, diagrams\, images of the results\, etc.")
  * insert OblConsumer(#SHOULD:process, "EHR systems that consume laboratory report SHOULD process attachments related to the report.")
  * insert OblConsumer(#SHOULD:display, "EHR systems that consume laboratory report SHOULD render attachments related to the report to the endusers.")

// header
* header.subject
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHALL:display, "")
  * insert OblConsumer(#SHALL:process, "")
* header.identifier
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHOULD:display, "")
  * insert OblConsumer(#SHALL:process, "")
* header.author[x]
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHALL:display, "")
* header.date
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHALL:display, "")
* header.status
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHALL:display, "")
* header.language
  * insert OblCreator(#SHALL:able-to-populate, "")
* header.documentType
  * insert OblCreator(#SHALL:able-to-populate, "")
* header.documentTitle
  * insert OblCreator(#SHALL:able-to-populate, "")
* header.period
  * insert OblCreator(#SHALL:able-to-populate, "")

* header.attestation
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHALL:display, "")
  * attester[x]
    * insert OblCreator(#SHALL:able-to-populate, "")
    * insert OblConsumer(#SHALL:display, "")
  * datetime
    * insert OblCreator(#SHALL:able-to-populate, "")
* header.legalAuthentication
  * insert OblCreator(#SHALL:able-to-populate, "")
  * legalAuthenticator[x]
    * insert OblCreator(#SHALL:able-to-populate, "")
  * datetime
    * insert OblCreator(#SHALL:able-to-populate, "")
* header.eventType
  * insert OblCreator(#SHALL:able-to-populate, "")
* header.serviceSpecialty
  * insert OblCreator(#SHALL:able-to-populate, "")
  * insert OblConsumer(#SHOULD:display, "")
* header.custodian
  * insert OblCreator(#SHALL:able-to-populate, "")

// body
* body
  * orderInformation
    * insert OblCreator(#SHALL:able-to-populate, "EHR systems SHALL be able to populate information about one or more order which this report is based on.")
    * insert OblConsumer(#SHALL:display, "Consumer EHR systems SHALL display key order information to ensure traceability between order and report.")
    * orderId
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHOULD:process, "Consumer systems SHOULD use this element to pair result report with laboratory order. ")

    * orderPlacer[x]
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHOULD:display, "")
    * orderReason[x]
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * clinicalQuestion
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
  * supportingInformation
    * insert OblCreator(#SHOULD:able-to-populate, "")
    * insert OblConsumer(#SHALL:display, "")
    * observation
      * insert OblCreator(#SHOULD:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * condition
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * medicationAdministration
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * sexForClinicalUse
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * vaccination
      * insert OblCreator(#SHOULD:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * otherSupportingInformation
      * insert OblCreator(#SHOULD:able-to-populate, "")
      * insert OblConsumer(#SHOULD:display, "")
  * specimen
    * insert OblCreator(#SHALL:able-to-populate, "")
    * insert OblConsumer(#SHALL:display, "")
  * serviceRequest
    * insert OblCreator(#SHALL:able-to-populate, "")
    * insert OblConsumer(#SHOULD:display, "")
  * resultData
    * insert OblCreator(#SHALL:able-to-populate, "")
    * insert OblConsumer(#SHALL:display, "")
    * commentsInterpretationAndRecommendations
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
    * laboratoryTestResults
      * insert OblCreator(#SHALL:able-to-populate, "")
      * insert OblConsumer(#SHALL:display, "")
 */