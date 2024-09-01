// Keep in sync with IHE MPD/MEOW
Logical: EHDSDosaging
Title: "Dosaging (model)"
Description: "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. When implemented, this model may be reduced significantly according to the specific use case."
Characteristics: #can-be-target


* sequence 0..1 integer "Order of the dosage instruction, in case one treatment consists of several dosaging schemes"
* text 0..1 string "Free text usage/dosage instructions"
* additionalInstruction 0..* CodeableConcept "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc"
* patientInstruction 0..1 string "Patient oriented instructions as free text"
* doseAndRate 0..* BackboneElement "Amount of medication administered per one dose (= one timing)"
  * type 0..1 CodeableConcept "The kind of dose or rate specified (e.g calculated, ordered, etc)."
  * dose[x] 0..1 Quantity or Range "Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)"
  * rate[x] 0..1 Ratio or Quantity or Range "Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)"
* timing 0..1 BackboneElement "When medication should be administered (period, time of day, frequency, etc)" 
  * event 0..* dateTime "Exact date and/or time of the administration"
  * code 0..1 CodeableConcept "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)"
  * repeat 0..1 BackboneElement "Repetition of the administration."
    * bounds 0..1 BackboneElement "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist."
      * duration 0..1 Quantity "Number of time units, e.g 10 days"
      * range 0..1 Range "A range of numbers of time units, 5-10 days"
      * period 0..1 Period "Start and end date, 05.08.2023 - 10.08.2023"
    * count 0..1 BackboneElement "Number of times to repeat, exact or range"
      * count 1..1 integer "Number of times (e.g 'once', '10 times')"
      * countMax 0..1 integer "Maximum number of times (e.g 'maximum 10 times')"
    * duration 0..1 BackboneElement "Duration of one administration, exact or range"
      * duration 1..1 Quantity "Duration of administration (e.g '5 minutes', '1 hour')"
      * durationMax 0..1 Quantity "Maximum duration of administration (e.g 'maximum 1 hour')"
    * frequency 0..1 BackboneElement "Frequency of intake/administration (e.g 'three times a day')"
      * numberOfTimes 1..1 integer "Number of times per period (e.g '3 times')"
      * maxNumberOfTimes 0..1 integer "Maximum number of times per period (e.g. 'maximum 3 times')"
      * period 1..1 Quantity "Duration to which the frequency applies (e.g '... / 1 day')"
      * periodMax 0..1 Quantity "Upper limit of the period (e.g ... / 4-6 hours)"
    * dayOfWeek 0..* CodeableConcept "The day of the week of administration, e.g Mon, Tue, etc"
    * timeOfDay 0..* time "Time of day of administration (e.g '10:00')"
    * eventTime 0..* BackboneElement "An event the administration is bound to, e.g 'before meal', '30 min before meal'"
      * when 0..* CodeableConcept "Time period or event ('before meal', 'immediately', 'morning')"
      * offset 0..1 integer "minutes from event, before or after (?not sure how to show before/after with only positive integers)"
* asNeeded 0..1 boolean "Take as needed"
* asNeededFor 0..* CodeableConcept "Take as needed for the coded reason"
* bodySite 0..1 CodeableConcept "Body site of administration"
* routeOfAdministration 0..1 CodeableConcept "Route of administration"
* methodOfAdministration 0..1 CodeableConcept "Method of administration"
* maxDose 0..* BackboneElement "Maximum dose for the patient"
  * maxDosePerPeriod 0..* Ratio "Upper limit on medication per unit of time"
  * maxDosePerAdministration 0..1 Quantity "Upper limit on medication per one administration"
  * maxDosePerLifetime 0..1 Quantity "Upper limit on medication per lifetime of the patient"