Logical: EHDSAttachment
//Id: EHDSattachment
Title: "Attachment model"
Description: """EHDS refined base model for This type is for containing or referencing attachments - additional data content defined in other formats. The most common use of this type is to include images or reports in some report format such as PDF. However, it can be used for any data that has a MIME type."""
Characteristics: #can-be-target

* contentType 0..1 CodeableConcept "Mime type of the content, with charset etc."
  * ^binding.description = "BCP-13"
  * ^binding.strength = #preferred
* language 0..1 CodeableConcept "Human language of the content"
  * ^binding.description = "BCP 47"
  * ^binding.strength = #preferred
* data 0..1 base64Binary "The actual data of the attachment - a sequence of bytes, base64 encoded."
* url 0..1 uri "A location where the data can be accessed."
* size 0..1 integer64 "The number of bytes of data that make up this attachment (before base64 encoding)."
* title 0..1 string "A label or set of text to display in place of the data."

/*
* hash 0..1 base64Binary "The calculated hash of the data using SHA-1. Represented using base64."
* creationDate 0..1 dateTime "The date that the attachment was created."
* height 0..1 unsignedInt "Height of the image in pixels (photo/video)"
* width 0..1 unsignedInt "Width of the image in pixels (photo/video)"
* frames 0..1 unsignedInt "Number of frames if > 1 (photo)"
* duration 0..1 decimal "Length in seconds (audio / video)"
*/