Profile: EHDSLaboratoryObservationObligations
Parent: EHDSLaboratoryObservation
Title: "Laboratory observation Obligations"
Description: "Obligations for the logical model of laboratory observation"

* header
  * identifier
    * insert OblProducerDoc(#SHALL:able-to-populate, "A business identifier of the observation SHALL be populated.")
    * insert OblConsumerDoc(#SHALL:process, "EHR systems SHALL be able to process identifiers accordingly. Processing means mainly storing identifiers as part of the resource if EHR system stores it.")
  * subject
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR systems SHALL provide information about the subject of care (patient\).")
    * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL render information about the subject of care in such a way that unambiguous assignment to the care subject is preserved.")
    * insert OblConsumerDoc(#SHALL:process, "Information about the subject of care SHALL be processed by the EHR system in such a way that the identity of the subject of care cannot be confused.")
  * status
    * insert OblProducerDoc(#SHALL:able-to-populate, "HL7 Observation status (e.g.\, “final\,” “preliminary”\) SHALL be provided.")
    * insert OblConsumerDoc(#SHALL:display, "Always show status of the Observation\, esp. If different from \"final\"\, e.g.\, “Status: preliminary” in UI and printouts; accept any valid status code.")
  * directSubject[x]
    * insert OblProducerDoc(#SHALL:able-to-populate, "SHALL provide information about direct subject of the observation if diferent from the subject of care (another patient\, animal or other allowed subject type\).")
    * insert OblConsumerDoc(#SHALL:display, "EHR system SHALL always display information about subject of the observation if different from subject of care.")
  * author[x]
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate known information about authorhip of the observation.  Multiple authors could be provided.")
    * insert OblConsumerDoc(#SHOULD:display, "If provided\, EHR system SHOULD display information about authorship of the Observation.")


* observationDate[x]
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to populate date and time and/or period for when the lab test was performed.")
  * insert OblConsumerDoc(#SHALL:display, "Observation date or period SHALL be displayed if provided.")
* observationDateDateTime
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to populate exact date and time when the lab test was performed.")
  * insert OblConsumerDoc(#SHALL:display, "Show Observation Date in UI and print; accept any valid ISO 8601 dateTime.")
* observationDatePeriod
  * insert OblProducerDoc(#SHOULD:able-to-populate, "Lab system SHALL be able to populate period for when the lab test was performed.")
  * insert OblConsumerDoc(#SHALL:display, "Show Observation Period; accept any valid Period (start ≤ end\).")
* type
  * insert OblProducerDoc(#SHALL:able-to-populate, "Test code is mandatory element for identification of the kind of lab test performed from approved code system.")
  * insert OblConsumerDoc(#SHALL:display, "Observation type is a mandatory element. EHR system SHALL display observation  type. The type carries the correct semantic meaning of the observation. i.e. code and display name. Any valid CodeableConcept SHALL be accepted.")
  * insert OblConsumerDoc(#SHALL:process, "Observation type SHALL be processed accordingly\, this value should be taken into consideration especially when comparing result values.")
* originalName
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If the lab system supplies its own original test name\, it SHALL be provided.")
  * insert OblConsumerDoc(#SHOULD:display, "Original (local\) test name SHOULD be displayed\, if provided.")
* method
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL provide the specific method of measurement used to perform the observation if method of measurement is not included in the observation. Code.")
  * insert OblConsumerDoc(#SHALL:display, "Observation method SHALL be displayed if provided.")
  * insert OblConsumerDoc(#SHALL:process, "Observation method SHALL be consider when processing the resource\, especially for comparability of result values.")
* specimen
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL provide information about specimen used for the observation if this information is known.")
  * insert OblConsumerDoc(#SHOULD:display, "Information about specimen SHOULD be displayed if provided.")

* order
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to provide information about order (service request\) that was the basis of the laboratory observation. ")
* performer[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "Lab system SHOULD provide information about performer of the test\, if available. Test can be performed by professional\, patient himself or by a care giver.")
//* professional
//    * insert OblProducerDoc(#SHOULD:able-to-populate, "Information about healthcare professional who performed the test SHOULD by provided if known.")


* result
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to provide test results in various forms:  numeric\, textual and coded.")
  * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")

  * value[x]
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to provide test result values in various forms:  numeric\, textual and coded.")
    * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")


  * valueString
    * insert OblProducerDoc(#SHOULD:able-to-populate, "If only purely textual results are expected\, it MUST be provided. Coded results are preferred in most cases.")
    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display textual Result Value in UI and printouts; accept any string.")
  * valueQuantity
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display numeric Result Value in UI and printouts; accept any valid Quantity.")
  //* units
  //    * insert OblProducerDoc(#SHOULD:able-to-populate, "Numeric result values MUST be always provided with UCUM-encoded  measurement units.")
  //    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display Result Value units in UI and printouts.")
  * valueRange
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display range Result Value in UI and printouts; accept any valid Range.")
  * valueRatio
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display ratio Result Value in UI and printouts; accept any valid Ratio.")
  * valueCodeableConcept
    * insert OblProducer(#SHOULD:able-to-populate)
    * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display coded Result Value in UI and printouts; accept any valid CodeableConcept.")
  * uncertainty
    * insert OblProducerDoc(#SHOULD:able-to-populate, "If the test reports uncertainty (e.g.\, “±0.1”\)\, allow numeric entry of uncertainty. Store in Quantity or Range.")
    * insert OblConsumerDoc(#SHOULD:display, "If present\, SHOULD display uncertainty of measurement in UI and printouts. Show “Uncertainty: ±0.1”.")
  * dataAbsentReason
    * insert OblProducerDoc(#SHALL:able-to-populate, "If no result is available\, lab system SHALL be able to provide data absent reason. Data absent reason SHOULD NOT be expressed as a test result value.")
    * insert OblConsumerDoc(#SHALL:display, "If provided\, display e.g. “No result: not‐performed” in UI and print; accept any valid dataAbsentReason without error.")
* referenceRange
  * insert OblProducerDoc(#SHALL:able-to-populate, "Allow zero or more referenceRange entries (e.g.\, normal range “12–16 g/dL”\). Populate each as a structured Range or coded description.")
  * insert OblConsumerDoc(#SHALL:display, "If present\, display each range clearly (e.g.\, “Reference: 12.0–16.0 g/dL”\); accept any valid referenceRange structure.")
  * low
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate Low value of the normal reference range\, if known.")
    * insert OblConsumer(#SHALL:display)
  * high
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate High  value of the normal reference range\, if known")
    * insert OblConsumer(#SHALL:display)
  * normalValue
    * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL populate Normal  value of the normal reference range\, if known.")
    * insert OblConsumer(#SHALL:display)
  * type
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate type of the normal reference range.")
    * insert OblConsumer(#SHALL:display)
  * appliesTo
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate target population of the normal reference range.")
  * age
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate age range for the normal reference range.")
  * text
    * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL populate reference range\, if known.")
    * insert OblConsumer(#SHALL:display)
* interpretation
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to populate interpretation of the result in comparison with the reference range\, if such range is available.")
  * insert OblConsumerDoc(#SHALL:display, "Show each interpretation (e.g.\, “Interpretation: High”\); accept any valid CodeableConcept.")
* triggeredBy[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If this observation was triggered by another (e.g.\, reflex test\)\, this information SHOULD be provided.")
* hasMember[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If this is a pannel of tests or a test sequence\, a reference to the member observation SHALL be provided.")
* note
  * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to populate textual comment to the test result value.")
  * insert OblConsumerDoc(#SHALL:display, "If present\, show “e.g. Result Note: Hemolysis observed” in UI and print; accept any string.")

* component
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If the test has components\, those component entries SHALL be provided. Each component’s sub-fields (code\, result\, etc.\) follow the same obligations below. Components share all other elements with the parent observation.")
  * insert OblConsumerDoc(#SHALL:display, "If components exist\, render each component details in UI and print; accept any valid component structure.")
  * type
    * insert OblProducerDoc(#SHALL:able-to-populate, "Component code is mandatory element for identification of the kind of lab test performed from approved code system.")
    * insert OblConsumerDoc(#SHALL:display, "Observation type is a mandatory element. EHR system SHALL display observation  type. The type carries the correct semantic meaning of the observation. i.e. code and display name. Any valid CodeableConcept SHALL be accepted.")
    * insert OblConsumerDoc(#SHALL:process, "Observation type SHALL be processed accordingly\, this value should be taken into consideration especially when comparing result values.")
  * originalName
    * insert OblProducerDoc(#SHOULD:able-to-populate, "If the lab system supplies its own original test name\, it SHALL be provided.")
    * insert OblConsumerDoc(#SHOULD:display, "Original (local\) test name SHOULD be displayed\, if provided.")
  * result
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to provide test results in various forms:  numeric\, textual and coded.")
    * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")
    * value[x]
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to provide test result values in various forms:  numeric\, textual and coded.")
      * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")
    * valueString
      * insert OblProducerDoc(#SHOULD:able-to-populate, "If only purely textual results are expected\, it MUST be provided. Coded results are preferred in most cases.")
      * insert OblConsumer(#SHALL:display)
    * valueQuantity
      * insert OblProducerDoc(#SHOULD:able-to-populate, "If lab system knows numeric result value or numeric range\, it MUST be provided.")
      * insert OblConsumer(#SHALL:display)
      // * units
      //   * insert OblProducerDoc(#SHOULD:able-to-populate, "Numeric result values MUST be always provided with UCUM-encoded  measurement units.")
      //   * insert OblConsumer(#SHALL:display)
    * valueRange
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display range Result Value in UI and printouts; accept any valid Range.")
    * valueRatio
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display ratio Result Value in UI and printouts; accept any valid Ratio.")
    * valueCodeableConcept
      * insert OblProducer(#SHOULD:able-to-populate)
      * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display coded Result Value in UI and printouts; accept any valid CodeableConcept.")
    * uncertainty
      * insert OblProducerDoc(#SHOULD:able-to-populate, "If the test reports uncertainty (e.g.\, “±0.1”\)\, allow numeric entry of uncertainty. Store in Quantity or Range.")
      * insert OblConsumerDoc(#SHOULD:display, "If present\, SHOULD display uncertainty of measurement in UI and printouts. Show “Uncertainty: ±0.1”.")
    * dataAbsentReason
      * insert OblProducerDoc(#SHALL:able-to-populate, "If no result is available\, lab system SHALL be able to provide data absent reason. Data absent reason SHOULD NOT be expressed as a test result value.")
      * insert OblConsumerDoc(#SHALL:display, "If provided\, display e.g. “No result: not‐performed” in UI and print; accept any valid dataAbsentReason without error.")
  * referenceRange
    * insert OblProducerDoc(#SHALL:able-to-populate, "Allow zero or more referenceRange entries (e.g.\, normal range “12–16 g/dL”\). Populate each as a structured Range or coded description.")
    * insert OblConsumerDoc(#SHALL:display, "If present\, display each range clearly (e.g.\, “Reference: 12.0–16.0 g/dL”\); accept any valid referenceRange structure.")
    * low
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate Low value of the normal reference range\, if known.")
      * insert OblConsumer(#SHALL:display)
    * high
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL populate High  value of the normal reference range\, if known")
      * insert OblConsumer(#SHALL:display)
    * normalValue
      * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL populate Normal  value of the normal reference range\, if known.")
      * insert OblConsumer(#SHALL:display)
    * type
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate type of the normal reference range.")
      * insert OblConsumer(#SHALL:display)
    * appliesTo
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate target population of the normal reference range.")
    * age
      * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate age range for the normal reference range.")
    * text
      * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL populate reference range\, if known.")
      * insert OblConsumer(#SHALL:display)
  * interpretation
    * insert OblProducerDoc(#SHALL:able-to-populate, "Lab system SHALL be able to populate interpretation of the result in comparison with the reference range\, if such range is available.")
    * insert OblConsumerDoc(#SHALL:display, "Show each interpretation (e.g.\, “Interpretation: High”\); accept any valid CodeableConcept.")

* derivedFrom[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If this observation is derived from other resources (e.g.\, earlier lab or imaging results or in case of calculated test results from other observations\) an information about  related observations SHOULD be provided.")
* testKit
  * insert OblProducerDoc(#SHALL:able-to-populate, "If a specific test kit was used (e.g.\, rapid antigen kit\)\, provide an EHDSDevice information.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems SHALL support correct processing of this information especially when comparing result values from different sources and SHOULD indicate this information in the UI.")
* calibrator
  * insert OblProducerDoc(#SHALL:able-to-populate, "If a calibrator identifier is known\, provide relevant information identifier.")
  * insert OblConsumerDoc(#SHALL:process, "EHR systems SHALL support correct processing of this information especially when comparing result values from different sources and SHOULD indicate this information in the UI.")
