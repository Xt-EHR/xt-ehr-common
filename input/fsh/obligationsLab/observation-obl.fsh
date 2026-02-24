Profile: EHDSObservationObligations
Parent: EHDSObservation
Title: "Observation Obligations"
Description: "Obligations for the logical model of observation"
* header
  * identifier
    * insert OblProducerDoc(#SHALL:able-to-populate, "A business identifier of the observation SHALL be populated if known.")
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
    * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate known information about authorhip of the observation.  Multiple authors could be provided.")
    * insert OblConsumerDoc(#SHOULD:display, "If provided\, EHR system SHOULD display information about authorship of the Observation.")
    // * healthCareProfessional
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate information about professional who authored the observation. ")
    //   * insert OblConsumer(#SHOULD:display)
    // * organization
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate information about healthcare organization which authored the observation. ")
    //   * insert OblConsumerDoc(#SHOULD:display, "If provided\, EHR system SHOULD display information about health care organization that authored of the Observation.")
    //   * insert OblConsumerDoc(#SHOULD:process, "SHOULD consider the value of this element when processing the resource\, especially for comparability of result values.")
    // * device
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate information about device used to perform the observation. ")
    //   * insert OblConsumerDoc(#SHOULD:display, "If provided\, EHR system SHOULD display information about device used to perform the Observation.")
    //   * insert OblConsumerDoc(#SHALL:process, "SHALL consider the value of this element when processing the resource\, especially for comparability of result values.")
* observationDate[x]
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate date and time and/or period for when the test was performed.")
  * insert OblConsumerDoc(#SHALL:display, "Observation date or period SHALL be displayed if provided.")
//   * observationDatetime
//     * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to populate exact date and time when the test was performed.")
//     * insert OblConsumerDoc(#SHALL:display, "Show Observation Date in UI and print; accept any valid ISO 8601 dateTime.")
//   * observationPeriod
//     * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL be able to populate period for when the test was performed.")
//     * insert OblConsumerDoc(#SHALL:display, "Show Observation Period; accept any valid Period (start ≤ end\).")
* type
  * insert OblProducerDoc(#SHALL:able-to-populate, "Test code is mandatory element for identification of the kind of test performed from approved code system.")
  * insert OblConsumerDoc(#SHALL:display, "Observation type is a mandatory element. EHR system SHALL display observation  type. The type carries the correct semantic meaning of the observation. i.e. code and display name. Any valid CodeableConcept SHALL be accepted.")
  * insert OblConsumerDoc(#SHALL:process, "Observation type SHALL be processed accordingly\, this value should be taken into consideration especially when comparing result values.")
* originalName
  * insert OblProducerDoc(#SHOULD:able-to-populate, "If the EHR system supplies its own original test name\, it SHALL be provided.")
  * insert OblConsumerDoc(#SHOULD:display, "Original (local\) test name SHOULD be displayed\, if provided.")




* performer[x]
  * insert OblProducerDoc(#SHOULD:able-to-populate, "EHR system SHALL provide information about performer of the test\, if available. Test can be performed by professional\, patient himself or by a care giver.")



* result[x]
  * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to provide test results in various forms:  numeric\, textual and coded.")
  * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")
//   * textualResult
//     * insert OblProducerDoc(#SHOULD:able-to-populate, "If only purely textual results are expected\, it MUST be provided. Coded results are preferred in most cases.")
//     * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display textual Result Value in UI and printouts; accept any string.")
//   * numericResult
//     * insert OblProducerDoc(#SHOULD:able-to-populate, "If the result is numeric\, provide structured entry for Numeric value (Quantity or Range\)\, units\, and uncertainty. Store each element exactly.")
//     * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display numeric Result Value\, units of measurement in UI and printouts.")
//     * numericValue
//       * insert OblProducerDoc(#SHOULD:able-to-populate, "If EHR system knows numeric result value or numeric range\, it MUST be provided.")
//       * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display numeric Result Value in UI and printouts; accept any valid Quantity/Range.")
//     * units
//       * insert OblProducerDoc(#SHOULD:able-to-populate, "Numeric result values MUST be always provided with UCUM-encoded  measurement units.")
//       * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display Result Value units in UI and printouts.")
//     * uncertainty
//       * insert OblProducerDoc(#SHOULD:able-to-populate, "If the test reports uncertainty (e.g.\, “±0.1”\)\, allow numeric entry of uncertainty. Store in Quantity or Range.")
//       * insert OblConsumerDoc(#SHOULD:display, "If present\, SHOULD display uncertainty of measurement in UI and printouts. Show “Uncertainty: ±0.1”.")
//   * codedResult
//     * insert OblProducerDoc(#SHOULD:able-to-populate, "If the EHR system knows coded result value\, it SHALL be provided.")
//     * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display coded Result Value in UI and printouts; accept any valid CodeableConcept.")
* dataAbsentReason
  * insert OblProducerDoc(#SHALL:able-to-populate, "If no result is available\, EHR system SHALL be able to provide data absent reason. Data absent reason SHOULD NOT be expressed as a test result value.")
  * insert OblConsumerDoc(#SHALL:display, "If provided\, display e.g. “No result: not‐performed” in UI and print; accept any valid dataAbsentReason without error.")
* referenceRange
  * insert OblProducerDoc(#SHOULD:able-to-populate, "Allow zero or more referenceRange entries (e.g.\, normal range “12–16 g/dL”\). Populate each as a structured Range or coded description.")
  * insert OblConsumerDoc(#SHALL:display, "If present\, display each range clearly (e.g.\, “Reference: 12.0–16.0 g/dL”\); accept any valid referenceRange structure.")












* component
  * type
    * insert OblProducerDoc(#SHALL:able-to-populate, "Component code is mandatory element for identification of the kind of test performed from approved code system.")
    * insert OblConsumerDoc(#SHALL:display, "Observation type is a mandatory element. EHR system SHOULD display observation  type and SHALL process it accordingly. The type carries the correct semantic meaning of the observation. i.e. code and display name. Any valid CodeableConcept SHALL be accepted.")
    * insert OblConsumerDoc(#SHALL:process, "Observation type is a mandatory element. EHR system SHOULD display observation  type and SHALL process it accordingly. The type carries the correct semantic meaning of the observation. i.e. code and display name. Any valid CodeableConcept SHALL be accepted.")
  * originalName
    * insert OblProducerDoc(#SHOULD:able-to-populate, "If the EHR system supplies its own original test name\, it SHALL be provided.")
    * insert OblConsumerDoc(#SHOULD:display, "Original (local\) test name SHOULD be displayed\, if provided.")
  * result[x]
    * insert OblProducerDoc(#SHALL:able-to-populate, "EHR system SHALL be able to provide test results in various forms:  numeric\, textual and coded.")
    * insert OblConsumerDoc(#SHALL:display, "SHALL display results of the Observation.")
    // * textualResult
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "If only purely textual results are expected\, it MUST be provided. Coded results are preferred in most cases.")
    //   * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display textual Result Value in UI and printouts; accept any string.")
    // * numericResult
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "If the result is numeric\, provide structured entry for Numeric value (Quantity or Range\)\, units\, and uncertainty.")
    //   * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display numeric Result Value \, units of measurement in UI and printouts.")
    //   * numericValue
    //     * insert OblProducerDoc(#SHOULD:able-to-populate, "If EHR system knows numeric result value or numeric range\, it MUST be provided.")
    //     * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display numeric Result Value in UI and printouts; accept any valid Quantity/Range.")
    //   * units
    //     * insert OblProducerDoc(#SHOULD:able-to-populate, "Numeric result values MUST be always provided with UCUM-encoded  measurement units.")
    //     * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display Result Value units in UI and printouts.")
    //   * uncertainty
    //     * insert OblProducerDoc(#SHOULD:able-to-populate, "If the test reports uncertainty (e.g.\, “±0.1”\)\, allow numeric entry of uncertainty. Store in Quantity or Range.")
    //     * insert OblConsumerDoc(#SHOULD:display, "If present\, SHOULD display uncertainty of measurement in UI and printouts. Show “Uncertainty: ±0.1”.")
    // * codedResult
    //   * insert OblProducerDoc(#SHOULD:able-to-populate, "If the EHR system knows coded result value\, it SHALL be provided.")
    //   * insert OblConsumerDoc(#SHALL:display, "If present\, SHALL display coded Result Value in UI and printouts; accept any valid CodeableConcept.")
  * dataAbsentReason
    * insert OblProducerDoc(#SHALL:able-to-populate, "If no result is available\, EHR system SHALL be able to provide data absent reason. Data absent reason SHOULD NOT be expressed as a test result value.")
    * insert OblConsumerDoc(#SHALL:display, "If provided\, display e.g. “No result: not‐performed” in UI and print; accept any valid dataAbsentReason without error.")
  * referenceRange
    * insert OblConsumerDoc(#SHALL:display, "If present\, display each range clearly (e.g.\, “Reference: 12.0–16.0 g/dL”\); accept any valid referenceRange structure.")
