
// In case key images are added, add this sentence to the end of model description:  If significant images are flagged in the imaging study, this information is included to allow a rapid access limited to such significant images.

Logical: EHDSImagingStudy
Parent: EHDSDataSet
Title: "Imaging study model"
Description: """Imaging study model includes the key information about the content of an imaging study. It does not include image pixels but includes location pointers to its image content and organises this information according to the well-established model of an imaging study made of one or more series and each series made of instances or images. Composed of a set of data (DICOM KOS) that facilitates the location of all available images."""
Characteristics: #can-be-target

* header.identifier ^short = "Identifiers for the Imaging Study such as DICOM Study Instance UID. If one or more series elements are present in the ImagingStudy, then there shall be one DICOM Study UID identifier."
* header.identifier 1..*
  * ^requirements = "eHN Guideline IMG (v1.1): B.1.1"
* modality 0..* CodeableConcept "All of the distinct values for series' modalities"
  * ^binding.description = "DICOM CID029"
  * ^binding.strength = #preferred
* encounter 0..1 EHDSEncounter "Reference to the encounter with which this imaging study is associated"
* started 0..1 dateTime "Date and time the study started."
* basedOn 0..* EHDSServiceRequest "References to the diagnostic requests that resulted in this imaging study being performed."
* numberOfSeries 0..1 integer "Number of Series in the Study. This value given may be larger than the number of series elements this Resource contains due to resource availability, security, or other factors. This element should be present if any series elements are present."
* numberOfInstances 0..1 integer "Number of Service-Object Pairs (SOP) Instances in Study. This value given may be larger than the number of instance elements this resource contains due to resource availability, security, or other factors. This element should be present if any instance elements are present."
* description 0..1 string "The Imaging Manager description of the study. Institution-generated description or classification of the Study (component) performed."
  * ^requirements = "eHN Guideline IMG (v1.1): B.1.2"
* studyCustodian 0..1 EHDSOrganisation "Organisation name, address, contact information."
  * ^requirements = "eHN Guideline IMG (v1.1): B.1.3"
* studyEndpoint 0..1 EHDSEndpoint "Study endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
* series 0..* Base "Series. Each study has one or more series of instances, but they may be absent when no series information needs to be conveyed"
  * ^requirements = "eHN Guideline IMG (v1.1): B.1.4"
  * seriesUid 1..1 Identifier "DICOM Series Instance UID for the series"
    * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.2"
  * number 0..1 integer "Numeric identifier of this series"
  * acquisitionModality 1..1 CodeableConcept "Acquisition modality - the modality used for this series"
    * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.3"  
    * ^binding.description = "DICOM CID029"
    * ^binding.strength = #preferred
  * description 0..1 string "A short human readable summary of the series"
    * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.1"
  * numberOfInstances 0..1 integer "Number of Series Related Instances"
  * seriesEndpoint 0..1 EHDSEndpoint "Series endpoint describing the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner. These may be locally hosted services, regional services, or national service."
    * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.6"
  * bodySite 0..1 EHDSBodyStructure "Body part (with laterality) examined"
//  * laterality 0..1 CodeableConcept "Body part laterality"
//    * ^binding.description = "SNOMED CT"
//    * ^binding.strength = #preferred
  * specimen 0..* EHDSSpecimen "Specimen imaged"
  * started 0..1 dateTime "When the series started"
  * instancesInTheSeries 0..* Base "Each series has one or more instances, but they may be absent when no instance information needs to be conveyed"
    * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.7"
    * instanceTitle 0..1 string "Instance title that is the description of the instance."
    * instanceUid 1..1 Identifier "DICOM SOP Instance UID"
      * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.7.1"
    * sopClass 1..1 uri "SOP class - DICOM class type"
      * ^requirements = "DICOM KOS"
    * instanceNumber 0..1 integer "The number of this instance in the series"
      * ^requirements = "eHN Guideline IMG (v1.1): B.1.4.7.3"
    * numberOfFrames 0..1 integer "The number of frames in a multiframe instance"
      * ^requirements = "DICOM KOS"
    * keyImage 0..* Base "List of key image flags with a reason why this image is selected as a key image, and reference to the Key Image Note that flags the image as significant within the Imaging Study Manifest"
      * flag 1..1 CodeableConcept "Reason for flagging the image as significant"
        * ^binding.description = "DICOM PS3.16 in Table CID 7010"
        * ^binding.strength = #preferred
      * reason 0..1 string "Textual reason for flagging the image as significant"
      * seriesUID 1..* Identifier "Series instance UID for the series that contains the instances flagged as significant"
      * instanceUID 1..* Identifier "SOP Instance UID for the instances flagged as significant by the Key Image Note object (DICOM KOS) that flags this image"


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