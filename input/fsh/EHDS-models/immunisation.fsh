Logical: EHDSImmunisation
Parent: EHDSDataSet
Title: "Immunisation model"
Description: """Model describes the administration of immunisation products, including vaccines and immunoglobulins, covering active and passive immunisations. It focuses on immunisation as a clinical procedure rather than the resulting immunity. The model supports routine immunisations at standard doses and may overlap with medication summaries or prescription lists. Natural immunity, immunisation outcomes, refusals, and administration or planning details are out of scope."""
Characteristics: #can-be-target

* header.status 
  * ^short = "Status of the immunisation event (completed, not-done)."
  * ^definition = "Status of the immunisation event (completed, not-done)."
* diseaseOrAgentTargeted 0..* CodeableConcept "Disease or agent targeted" """Disease or agent that the vaccination provides protection against."""
  * ^binding.description = "ICD-10, SNOMED CT"
  * ^binding.strength = #preferred
* vaccine 1..1 CodeableConcept "Type of immunisation, e.g. J07AM01 Tetanus toxoid; or 871803007 Hepatitis A and Hepatitis B virus antigens only vaccine product."
  * ^binding.description = "SNOMED CT, ATC"
  * ^binding.strength = #preferred
* administeredProduct 0..1 EHDSMedication "Administered medicinal product (e.g. TETAVAX suspension for injection)"
* administrationTime 1..1 dateTime "The date and optionally the exact time when the vaccination was administered."
* administeringCentre 0..1 EHDSOrganisation "Administering centre or a health authority responsible for the vaccination event"""
* administrator 0..1 EHDSHealthProfessional "Health professional responsible for administering the immunisation product."
* note 0..1 string "Any additional free-text information about the immunisation"