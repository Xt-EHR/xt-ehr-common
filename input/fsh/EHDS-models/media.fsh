Logical: EHDSMedia
//Id: EHDSmedia
Title: "Media model"
Description: """EHDS refined base model for A photo, video, or audio recording acquired or used in healthcare."""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Image identifier"""
* type 0..1 CodeableConcept "Type" """Classification of media as image, video, audio recording or other media type"""
  * ^binding.description = "HL7 MediaType"
  * ^binding.strength = #preferred
* modality 0..1 CodeableConcept "Modality" """The type of acquisition equipment/process"""
  * ^binding.description = "HL7 MediaModality"
  * ^binding.strength = #preferred
* view 0..1 CodeableConcept "View" """The name of the imaging view e.g. Lateral or Antero-posterior """
  * ^binding.description = "HL7 MediaCollectionView/Projection"
  * ^binding.strength = #preferred
* subject[x] 0..1 EHDSPatient or EHDSSpecimen "Subject" """Who/What this Media is a record of"""
* created[x] 0..1 dateTime or Period "Created" """The date and time(s) at which the media was collected."""
* reason 0..* CodeableConcept "Reason" """Describes why the event occurred in coded or textual form."""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* bodysite 0..1 CodeableConcept "BodySite" """Observed body part, i.e. target site"""
  * ^binding.description = "SNOMED CT"
  * ^binding.strength = #preferred
* deviceName 0..1 string "Device name" """The name of the device / manufacturer of the device that was used to make the recording."""
* device 0..1 EHDSDevice "Device" """The device used to collect the media."""
* content 1..1 EHDSAttachment "Content" """The actual content of the media - inline or by direct reference to the media source file."""
* note 0..* string "Note" """Comments made about the media by the performer, subject or other participants."""
* performer[x] 0..* EHDSHealthProfessional or EHDSOrganisation "Performer" """Performer of the imaging acquisition process. """
