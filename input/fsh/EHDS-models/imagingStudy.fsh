Logical: EHDSImagingStudy
//Id: EHDSimagingStudy
Title: "Imaging study model"
Description: """EHDS refined base model for Imaging study"""
Characteristics: #can-be-target

* identifier 1..* Identifier "Identifiers for the ImagingStudy such as DICOM Study Instance UID. If one or more series elements are present in the ImagingStudy, then there shall be one DICOM Study UID identifier."
* modality 0..* CodeableConcept "All of the distinct values for series' modalities"
  * ^binding.description = "DICOM CID029"
  * ^binding.strength = #preferred
* subject 1..1 EHDSPatient "The subject of the study"
* encounter 0..1 EHDSEncounter "Reference to the encounter with which this imaging study is associated"
* started 0..1 dateTime "Date and time the study started."
* basedOn 0..* EHDSServiceRequest "References to the diagnostic requests that resulted in this imaging study being performed."
* numberOfSeries 0..1 integer "Number of Series in the Study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present."
* numberOfInstances 0..1 integer "Number of Service-Object Pairs (SOP) Instances in Study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present."
* description 0..1 string "The Imaging Manager description of the study. Institution-generated description or classification of the Study (component) performed."
* studyCustodian 0..1 EHDSOrganisation "Organisation name, address, contact information."
* studyEndpoint 0..1 EHDSEndpoint "Study endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
* series 0..* Base "Series. Each study has one or more series of instances"
  * seriesUid 1..1 Identifier "DICOM Series Instance UID for the series"
  * number 0..1 integer "Numeric identifier of this series"
  * acquisitionModality 1..1 CodeableConcept "Acquisition modality - the modality used for this series"
    * ^binding.description = "DICOM CID029"
    * ^binding.strength = #preferred
  * description 0..1 string "A short human readable summary of the series"
  * numberOfInstances 0..1 integer "Number of Series Related Instances"
  * seriesEndpoint 0..1 EHDSEndpoint "Series endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
  * bodySite 0..1 CodeableConcept "Body part examined"
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * laterality 0..1 CodeableConcept "Body part laterality"
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * specimen 0..* EHDSSpecimen "Specimen imaged"
  * started 0..1 dateTime "When the series started"
  * instancesInTheSeries 0..* Base "Instances in the series - a single SOP instance from the series"
    * instanceTitle 0..1 string "Instance title that is the description of the instance."
    * instanceUid 1..1 Identifier "DICOM SOP Instance UID"
    * sopClass 1..1 uri "SOP class - DICOM class type"
    * instanceNumber 0..1 integer "The number of this instance in the series"


/* Removed according to issue 172
    * radiationDoseInformation 0..1 Base "Radiation dose information" """Kerma area product (KAP), Total KAP, Kerma at the end of tube (dental X-ray), Thickness of breast for the calculation of Average absorbed breast dose."""
      * kap 0..1 Quantity "KAP" """Kerma area product (KAP). A method of radiation dose monitoring used in radiographic and fluoroscopic studies."""
      * totalKerma 0..1 Quantity "Total Kerma" """Kerma is a measure of energy transferred from radiation to matter and is an acronym for kinetic energy released to matter."""
      * endTubeKerma 0..1 Quantity "End tube Kerma" """Kerma at the end of tube"""
      * breastThickness 0..1 Quantity "Breast thickness" """Thickness of breast for the calculation of Average absorbed breast dose."""
      * abd 0..1 Quantity "2ABD" """Average absorbed breast dose."""
* phase 0..1 Base "Phase" """Study phase, e.g., without contrast, arterial phase, venous phase, delayed phase. Only some types of studies have phases."""
  * phaseCode 1..1 CodeableConcept "Phase code" """Study phase, e.g., without contrast, arterial phase, venous phase, delayed phase. Only some types of studies have phases."""
    * ^binding.description = "SNOMED CT"
    * ^binding.strength = #preferred
  * radiationDose 0..1 Quantity "Radiation dose" """Dose length product - Computerized Tomography (CT) related."""

*/