Logical: EHDSImmunization
Parent: EHDSDataSet
Title: "Immunization model"
Description: """C.24 - EHDS refined base model for Immunization"""
Characteristics: #can-be-target

* status 1..1 CodeableConcept "Status" """Indicates the current status of the immunization event (completed, not-done)."""
* diseaseOrAgentTargeted 0..* CodeableConcept "Disease or agent targeted" """Disease or agent that the vaccination provides protection against."""
  * ^binding.description = "ICD-10*, SNOMED CT"
  * ^binding.strength = #preferred
* vaccine 1..1 CodeableConcept "Vaccine" """Generic description of the vaccine/prophylaxis or its component(s)."""
  * ^binding.description = "SNOMED CT, ATC (IDMP/ EMA SPOR SMS)"
  * ^binding.strength = #preferred
* administeredProduct 0..1 EHDSMedication "Administered product" """Medicinal product administered."""
* doseNumber 0..1 integer64 "Number in a series of vaccinations / doses" """Order in the vaccination course."""

//* batchNumber 0..* string "C.24.8 - Batch number" """A distinctive combination of numbers and/or letters which specifically identifies a batch."""

* dateOfVaccination 1..1 date "Date of vaccination" """The date and time when the vaccination was administered"""

* administeringCentre 0..* EHDSOrganization "Administering centre" """Name/code of administering centre or a health authority responsible for the vaccination event"""
* healthProfessionalIdentification 0..* EHDSHealthProfessional "C.24.11 - Health Professional identification" """Name or health professional code responsible for administering the vaccine or prophylaxis"""
// * countryOfVaccination 0..1 CodeableConcept "Country of vaccination" """The country in which the individual has been vaccinated"""
//   * ^binding.description = "ISO 3166"
//   * ^binding.strength = #preferred
* nextVaccinationDate 0..1 date "Next vaccination date" """The date when the vaccination is planned to be given/repeated (e.g. next dose)"""
