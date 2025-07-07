Logical: EHDSAppointment
//Id: EHDSappointment
Title: "Appointment model"
Description: """EHDS refined base model for Appointment. This is a simplified model with minimal information - it is not intended to cover the full functionality of booking systems."""
Characteristics: #can-be-target

* identifier 0..* Identifier "Appointment identifier"
* subject 0..1 EHDSPatient "The patient associated with the appointment."
* status 1..1 CodeableConcept "The overall status of the Appointment."
  * ^binding.description = "HL7 Appointment status"
  * ^binding.strength = #preferred
* class 0..* CodeableConcept "Classification of patient encounter (e.g. inpatient, outpatient, emergency)."
  * ^binding.description = "HL7 Encounter class"
  * ^binding.strength = #preferred
* serviceType 0..* CodeableConcept "The specific service that is to be performed during this appointment."
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* specialty 0..* CodeableConcept "The specialty of a practitioner that would be required to perform the service requested in this appointment"
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* start 0..1 dateTime "Date and time that the appointment is to take place."
* end 0..1 dateTime "Date and time that the appointment is to conclude."
* note 0..* string "Additional notes/comments about the appointment."

/*
* type 0..1 CodeableConcept "Type" """The type of appointment or patient that has been booked in the slot, e.g. Routine, check-up, walk-in, routine, emenrgency etc."""
  * ^binding.description = "TBD"
  * ^binding.strength = #preferred
* reason 0..* CodeableReference(EHDSCondition or EHDSProcedure or EHDSObservation or EHDSLaboratoryObservation) "Reason" """The reason that this appointment is being scheduled."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* priority 0..1 CodeableConcept "Priority" """The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. """
  * ^binding.description = "HL7 Act priority"
  * ^binding.strength = #preferred
* description 0..1 string "Description" """The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list."""
* supportingInformation 0..* Reference(EHDSCondition or EHDSProcedure or EHDSObservation or EHDSLaboratoryObservation or Resource) "Supporting information" """Additional information to support the appointment provided when making the appointment."""
* start 0..1 dateTime "Start" """Date/Time that the appointment is to take place."""
* end 0..1 dateTime "End" """Date/Time that the appointment is to conclude."""
* requestedPeriod 0..* Period "Requested period" """A set of date ranges (potentially including times) that the appointment is preferred to be scheduled within."""
* slot 0..* Reference(EHDSSlot) "Slot" """The slots from the participants' schedules that will be filled by the appointment."""
* patientInstruction 0..* string "Patient instruction" """Patient facing information about the Appointment (e.g. fast from 8pm night before)."""
* note 0..* string "Note" """Additional notes/comments about the appointment."""

* participant 0..* Base "Participant" """List of participants involved in the appointment."""
  * type 0..* CodeableConcept "Type" """List of participants involved in the appointment."""
    * ^binding.description = "HL7 Participant Type"
    * ^binding.strength = #preferred
  * actor 0..1 Reference(EHDSPatient or EHDSGroup or EHDSHealthProfessional or EHDSHealthProfessional or EHDSOrganization or EHDSRelatedPerson or EHDSDevice) "Actor" """The individual, device, location, or service participating in the appointment."""
  * required 0..1 boolean "Required" """Whether this participant is required to be present at the meeting."""
*/