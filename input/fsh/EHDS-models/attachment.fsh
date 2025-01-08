Logical: EHDSAttachment
//Id: EHDSattachment
Title: "Attachment model"
Description: """C.7 - EHDS refined base model for This type is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type."""
Characteristics: #can-be-target

* contentType 0..1 CodeableConcept "C.7.1 - Content Type" """Mime type of the content, with charset etc."""
  * ^binding.description = "BCP-13"
  * ^binding.strength = #preferred
* language 0..1 CodeableConcept "C.7.2 - Language" """Human language of the content"""
  * ^binding.description = "ISO 639"
  * ^binding.strength = #preferred
* data 0..1 base64Binary "C.7.3 - Data" """The actual data of the attachment - a sequence of bytes, base64 encoded."""
* url 0..1 uri "C.7.4 - URL" """A location where the data can be accessed."""
* size 0..1 integer64 "C.7.5 - Size" """The number of bytes of data that make up this attachment (before base64 encoding)."""
* hash 0..1 base64Binary "C.7.6 - Hash" """The calculated hash of the data using SHA-1. Represented using base64."""
* title 0..1 string "C.7.7 - Title" """A label or set of text to display in place of the data."""
* creationDate 0..1 dateTime "C.7.8 - Creation date" """The date that the attachment was created."""
