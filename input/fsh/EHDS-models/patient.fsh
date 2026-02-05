Logical: EHDSPatient
Title: "Patient model"
Description: """Model for information about a patient (subject of care)."""

* identifier 1..* Identifier "An identifier of the patient that is unique within a defined scope (typically a national patient identifier, but it can also be a temporary identifier issued by the EHR)."
* name 0..* EHDSHumanName "Name associated with the patient/subject." """Name might consist of name parts, e.g. Given name or names, family name/surname, name prefix etc."""
* dateOfBirth 0..1 dateTime "Date of birth" 
* deceased[x] 0..1 boolean or dateTime "Whether the patient is deceased or date of death."
* administrativeGender 0..1 CodeableConcept "Administrative gender" """This field must contain a recognised valid value for "administrative gender". If different, "physiological gender" should be communicated elsewhere."""
  * ^binding.description = "HL7 Administrative Gender"
  * ^binding.strength = #preferred
* address 0..* EHDSAddress "Mailing and home or office addresses." """The addresses are always sequences of address parts (e.g. street address line, country, postal code, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* telecom 0..* EHDSTelecom "Contact information."
