Logical: EHDSDosage
Title: "Dosage model"
Description: "The model covers usage instructions for administering a medicinal product, focusing on the most frequently used data elements. More complex dosage schemes may require additional elements, which should be communicated as part of the rendered dosage instructions element."
Characteristics: #can-be-target

* renderedDosageInstruction 0..1 string "Full dosage information as human-readable text covering all dosage steps. Generating the text follows local rules and should include all locally implemented dosage data even when such elements are not present in this model."
* dosageDetails 0..* Base "Details of single dosage scheme step"
  * sequence 0..1 integer "Order of the dosage instruction, in case one treatment consists of several dosage steps. When two schemes share the same sequence number, they are meant to be running in parallel."  
  * note 0..1 string "Patient oriented instructions as free text for this dosage step"
  * doseAndRate 0..* Base "Amount of medication administered per one dose (= one timing)"
    * dose[x] 0..1 Quantity or Range "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)"
      * ^binding.description = "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
      * ^binding.strength = #preferred
    * rate[x] 0..1 Quantity or Ratio "Amount of medication per time period (e.g. 100mg per 1 hour). When rate is provided per 1 time unit, Quantity data type can be used with a suitable unit (e.g. mg/h, ug/min)."
      * ^binding.description = "UCUM (units of measurement), EDQM Standard Terms (units of presentation)"
      * ^binding.strength = #preferred
  * repeat 0..1 Base "Repetition of the administration."
    * bounds 0..1 Base "Time bounds for the treatment (current dosage scheme). Only one of the following can exist."
      * duration 0..1 Quantity "Number of time units, e.g 10 days"
        * ^binding.description = "UCUM"
        * ^binding.strength = #preferred
      * period 0..1 Period "Start and end date, 05.08.2023 - 10.08.2023"
    * duration 0..1 Quantity "Duration of administration (e.g '5 minutes', '1 hour')"
      * ^binding.description = "UCUM"
      * ^binding.strength = #preferred
    * frequency 0..1 Base "Frequency of intake/administration (e.g 'three times a day')"
      * numberOfTimes 0..1 integer "Number of times per period (e.g '3 times')"
      * period 0..1 Quantity "Duration to which the frequency applies (e.g '... / 1 day')"
        * ^binding.description = "UCUM"
        * ^binding.strength = #preferred
    * dayOfWeek 0..* CodeableConcept "The day of the week of administration, e.g Mon, Tue, etc"
    * timeOfDay 0..* time "Exact time of day of administration (e.g '10:00')"
    * eventTime 0..* CodeableConcept "Time period or event when the administration should happen ('before meal', 'immediately', 'morning')"
  * asNeeded 0..1 boolean "Take as needed"
  * bodySite 0..1 EHDSBodyStructure "Body site of administration"
  * routeOfAdministration 0..1 CodeableConcept "Route of administration"
    * ^binding.description = "EDQM Standard Terms"
    * ^binding.strength = #preferred