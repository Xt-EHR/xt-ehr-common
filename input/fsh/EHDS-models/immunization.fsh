Logical: EHDSImmunization
//Id: EHDSimmunization
Title: "Immunization"
Description: """C.24 - EHDS refined base model for Immunization"""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.24.1 - Identifier" """Immunization identifier"""
* status 1..1 CodeableConcept "C.24.2 - Status" """Indicates the current status of the immunization event (completed, not-done)."""
* diseaseOrAgentTargeted 0..* CodeableConcept "C.24.3 - Disease or agent targeted" """Disease or agent that the vaccination provides protection against."""
  * ^binding.description = "ICD-10*, SNOMED CT"
  * ^binding.strength = #preferred
* vaccine 1..1 CodeableConcept "C.24.4 - Vaccine" """Generic description of the vaccine/prophylaxis or its component(s)."""
  * ^binding.description = "SNOMED CT, ATC (IDMP/ EMA SPOR SMS)"
  * ^binding.strength = #preferred
* administeredProduct 0..1 EHDSMedication "C.24.5 - Administered product" """Medicinal product administered."""
* doseNumber 0..1 integer64 "C.24.7 - Number in a series of vaccinations / doses" """Order in the vaccination course."""
* batchNumber 0..* string "C.24.8 - Batch number" """A distinctive combination of numbers and/or letters which specifically identifies a batch."""
* dateOfVaccination 1..1 date "C.24.9 - Date of vaccination" """The date and time when the vaccination was administered"""
* administeringCentre 0..* EHDSOrganization "C.24.10 - Administering centre" """Name/code of administering centre or a health authority responsible for the vaccination event"""
* healthProfessionalIdentification 0..* EHDSHealthProfessional "C.24.11 - Health Professional identification" """Name or health professional code responsible for administering the vaccine or prophylaxis"""
* countryOfVaccination 0..1 CodeableConcept "C.24.12 - Country of vaccination" """The country in which the individual has been vaccinated"""
  * ^binding.description = "ISO 3166"
  * ^binding.strength = #preferred
* nextVaccinationDate 0..1 date "C.24.13 - Next vaccination date" """The date when the vaccination is planned to be given/repeated (e.g. next dose)"""
* subject 1..1 Reference(EHDSPatient) "C.24.14 - Subject" """The patient who either received or did not receive the immunization."""
