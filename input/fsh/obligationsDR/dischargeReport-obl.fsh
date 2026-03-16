Profile: EHDSDischargeReportObligations
Parent: EHDSDischargeReport
Title: "Discharge Report Obligations"
Description: "Obligations for the logical model of discharge report."

* header
  * insert OblProducerDoc(#SHALL:able-to-populate, "A common document header is necessary to ensure that the document can be unambiguously identified\, associated with a patient\, and processed in an exchange context. Systems claiming conformance must be capable of populating this metadata for every document instance.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process document header information.")
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
  * insert OblProducerDoc(#SHALL:able-to-populate, "Each EHR system that is a producer of a discharge report SHALL be able to provide structured information about the report body. This obligation applies to capability\, not to population in every instance.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured body information.")
  * alerts
    * insert OblProducerDoc(#SHOULD:able-to-populate, "Alerts may not be present in all encounters\, but the document structure must support their representation. Systems must be capable of populating and processing this section when alerts are present; omission is acceptable where permanently out of scope and justified during conformance testing.")
    * insert OblConsumerDoc(#SHOULD:process, "EHR systems that consume discharge report SHALL process the alerts section when it is present in the document.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Narrative representation supports immediate clinical understanding of alerts. Systems must be capable of populating this narrative; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the alerts section when it is present in the document.")
    * medicalAlert
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Structured or textual alert entries represent clinically critical information when present. Systems must be capable of populating these entries; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the medicalAlert element of the alerts section when it is present in the document.")
  * encounterInformation
    * insert OblProducerDoc(#SHALL:able-to-populate, "Encounter context is essential for interpreting all clinical content in the document. Systems claiming conformance must be capable of populating this section for every document instance.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about the encounter.")
    * generatedNarrative
      * insert OblProducerDoc(#SHALL:able-to-populate, "A narrative description of the encounter context is necessary to ensure human interpretability. Systems must be capable of populating this narrative in every document instance.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the encounterInformation section.")
    * encounter
      * insert OblProducerDoc(#SHALL:able-to-populate, "A structured encounter reference supports linkage and reuse where available. Systems must be capable of populating this reference; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the encounter element of the encounterInformation section.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * admissionEvaluation
    * insert OblProducerDoc(#SHALL:able-to-populate, "Admission evaluation does not occur in all encounters but must be representable where applicable. Systems must be capable of populating this section; omission is acceptable where permanently out of scope and justified during conformance testing.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about the admission evaluation.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Narrative summarisation supports clinical understanding of admission findings. Systems must be capable of populating this narrative; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the admissionEvaluation section.")
    * objectiveFindings
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Objective findings are part of structured clinical assessment when performed. Systems must be capable of populating this container; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the objectiveFindings element of the admissionEvaluation section when it is present in the document.")
    * functionalStatus[x]
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Functional status assessment is context-dependent but relevant for continuity of care. Systems must be capable of populating this section; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the functionalStatus element of the admissionEvaluation section when it is present in the document.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * patientHistory
    * insert OblProducerDoc(#SHOULD:able-to-populate, "Patient history may not be available or relevant in all care contexts\, but systems must be capable of representing this section when such information exists. Omission is acceptable where the capability is permanently out of scope and justified during conformance testing.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about patient history.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "A narrative overview supports human understanding of the patient’s history when structured data is incomplete or heterogeneous. Systems must be capable of populating and processing narrative content; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the patientHistory section.")
    * pastProblems
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Past problems relevant to the current episode of care should be representable in a structured format. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the pastProblems element of the patientHistory section when it is present in the document.")
    * devicesAndImplants
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Information about devices and implants in patient history may be relevant for continuity of care. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the devicesAndImplants element of the patientHistory section when it is present in the document.")
    * procedures
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Historical procedures relevant to the current episode of care should be representable in a structured format. Systems must be capable of populating this section when such information is available; omission is acceptable where permanently out of scope and justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the procedures element of the patientHistory section when it is present in the document.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * courseOfEncounter
    * insert OblProducerDoc(#SHALL:able-to-populate, "Course of encounter is a core component of the discharge report. Systems claiming conformance must be capable of populating this section for every document instance.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about the course of encounter.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "A narrative summary of the course of encounter supports human understanding of the clinical course. Systems must be capable of populating this narrative when such information is available.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the courseOfEncounter section.")
    * diagnosticSummary
      * insert OblProducerDoc(#SHOULD:able-to-populate, "A diagnostic summary is essential for continuity of care. Systems claiming conformance must be capable of populating this section when such information is available.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the diagnosticSummary element of the courseOfEncounter section.")
    * procedures
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Procedures performed during the encounter are important for continuity of care. Systems must be capable of populating this section when such information is available.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the procedures element of the courseOfEncounter section when it is present in the document.")
    * medicalDevicesAndImplants
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Devices and implants are clinically significant historical data and must be representable when medical history is present. Systems must be capable of populating and processing these entries.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the medicalDevicesAndImplants element of the courseOfEncounter section when it is present in the document.")
    * pharmacotherapy
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Medication treatments during the encounter are important for continuity of care. Systems must be capable of populating this section when such information is available.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the medications element of the courseOfEncounter section when it is present in the document.")
    // * objectiveFindings
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "Objective findings such as measurements and vital signs are important for continuity of care. Systems must be capable of populating this section when such information is available.")
    //   * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the objectiveFindings element of the courseOfEncounter section when it is present in the document.")
    * testResults[x]
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Test results of functional\, diagnostic\, and imaging examinations are important for continuity of care. Systems must be capable of populating this section when such information is available.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the testResults element of the courseOfEncounter section when it is present in the document.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * dischargeDetails
    * insert OblProducerDoc(#SHOULD:able-to-populate, "Discharge details are essential to ensure safe transition of care and continuity after discharge. Systems claiming conformance must be capable of populating this section.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about discharge details.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Narrative discharge summaries support human understanding of discharge context. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the dischargeDetails section.")
    * objectiveFindings
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Objective findings at discharge may not always be collected but must be representable when available. Systems must be capable of populating this section; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the objectiveFindings element of the dischargeDetails section when it is present in the document.")
    * functionalStatus[x]
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Functional status at discharge may influence care planning but is context-dependent. Systems must be capable of representing this section; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the functionalStatus element of the dischargeDetails section when it is present in the document.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * medicationSummary
    * insert OblProducerDoc(#SHALL:able-to-populate, "Medication summary at discharge may vary by encounter but must be representable when applicable. Systems must be capable of populating this section; omission is acceptable where justified during conformance testing.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about medication summary.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Narrative summarisation supports understanding of medication changes after discharge. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the medicationSummary section.")
    * medicationUse
      * insert OblProducerDoc(#SHALL:able-to-populate, "Medication and dosing details are essential for safe post-discharge therapy. Systems must be capable of populating this information whenever a medication entry is present.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the medicationUse element of the medicationSummary section when it is present in the document.")
    * note
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumer(#SHALL:process)
  * carePlan
    * insert OblProducerDoc(#SHOULD:able-to-populate, "Post-discharge care plans and recommendations may vary by encounter. Systems must be capable of representing this section; omission is acceptable where justified during conformance testing.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process structured information about care plan and recommendations after discharge.")
    * generatedNarrative
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Narrative recommendations support human interpretation of post-discharge care. Systems must be capable of populating this narrative; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the generatedNarrative element of the carePlan section.")
    * otherRecommendations
      * insert OblProducerDoc(#SHOULD:able-to-populate, "Additional advice may be clinically relevant but is context-dependent. Systems must be capable of representing this information; omission is acceptable where justified during conformance testing.")
      * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume discharge report SHALL process the otherRecommendations element of the carePlan section when it is present in the document.")
  * synthesis
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumer(#SHALL:process)
* presentedForm
  * insert OblProducerDoc(#SHALL:able-to-populate, "Systems claiming DR conformance shall demonstrate the capability to generate a human-readable representation of the document when required by the exchange context. This obligation applies to capability\, not to population in every instance.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems that consume DR report SHALL be able to process the human readable version of the report.")
// * attachments
//   * insert OblProducer(#SHOULD:able-to-populate,"Attachments may be used to include supplementary material but are not required for interoperable processing.")
//   * insert OblConsumer(#SHALL:process)

