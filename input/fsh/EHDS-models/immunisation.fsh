Logical: EHDSImmunisation
Parent: EHDSDataSet
Title: "Immunisation model"
Description: """EHDS refined base model for Immunisation"""
Characteristics: #can-be-target

* header.status 
  * ^definition = """Indicates the current status of the immunisation event (completed, not-done)."""
* diseaseOrAgentTargeted 0..* CodeableConcept "Disease or agent targeted" """Disease or agent that the vaccination provides protection against."""
  * ^binding.description = "ICD-10, SNOMED CT"
  * ^binding.strength = #preferred
* vaccine 1..1 CodeableConcept "Type of vaccine" """Generic description of the vaccine/prophylaxis or its component(s)."""
  * ^binding.description = "SNOMED CT, ATC"
  * ^binding.strength = #preferred
* administeredProduct 0..1 EHDSMedication "Administered medicinal product"
* doseNumber 0..1 integer "Number in a series of vaccinations / doses" """Order in the vaccination course."""
* dateTimeOfVaccination 1..1 dateTime "Date and time of vaccination" """The date and optionally the exact time when the vaccination was administered."""
* administeringCentre 0..* EHDSOrganisation "Administering centre" """Name/code of administering centre or a health authority responsible for the vaccination event"""
* vaccineAdministrator 0..* EHDSHealthProfessional "Administrator of vaccine" """Health professional responsible for administering the vaccine or prophylaxis"""
* nextVaccinationDate 0..1 date "Next vaccination date" """The date when the vaccination is planned to be given/repeated (e.g. next dose)"""