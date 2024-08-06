Logical: EEHRxFMedia
//Id: EEHRxFmedia
Title: "Media"
Description: """C.14 - EEHRxF refined base model for A photo, video, or audio recording acquired or used in healthcare."""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.14.1 - Identifier" """Image identifier"""
* type 0..1 CodeableConcept "C.14.2 - Type" """Classification of media as image, video, audio recording or other media type"""
  * ^comment = "HL7 MediaType"
* modality 0..1 CodeableConcept "C.14.3 - Modality" """The type of acquisition equipment/process"""
  * ^comment = "HL7 MediaModality"
* view 0..1 CodeableConcept "C.14.4 - View" """The name of the imaging view e.g. Lateral or Antero-posterior """
  * ^comment = "HL7 MediaCollectionView/Projection"
* subject[x] 0..1 Reference(EEHRxFPatient or EEHRxFSpecimen) "C.14.5 - Subject" """Who/What this Media is a record of"""
* created[x] 0..1 dateTime or Period "C.14.6 - Created" """The date and time(s) at which the media was collected."""
* reason 0..* CodeableConcept "C.14.7 - Reason" """Describes why the event occurred in coded or textual form."""
  * ^comment = "SNOMED CT"
* bodysite 0..1 CodeableConcept "C.14.8 - BodySite" """Observed body part, i.e. target site"""
  * ^comment = "SNOMED CT"
* deviceName 0..1 string "C.14.9 - Device name" """The name of the device / manufacturer of the device that was used to make the recording."""
* device 0..1 Reference(EEHRxFDevice) "C.14.10 - Device" """The device used to collect the media."""
* content 1..1 EEHRxFAttachment "C.14.11 - Content" """The actual content of the media - inline or by direct reference to the media source file."""
* note 0..* Narrative "C.14.12 - Note" """Comments made about the media by the performer, subject or other participants."""
