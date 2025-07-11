Logical: EHDSEndpoint
//Id: EHDSendpoint
Title: "Endpoint model"
Description: """EHDS refined base model for Endpoint"""
Characteristics: #can-be-target

* identifier 1..* Identifier "Identifier" """Identifier for the organisation that is used to identify the endpoint across multiple disparate systems."""
* status 1..1 CodeableConcept "Status" """Status of the endpoint. The endpoint status represents whether the endpoint can currently be used for connections or why it can't be used."""
  * ^binding.description = "hl7:EndpointStatus"
  * ^binding.strength = #preferred
* connectionType 1..* CodeableConcept "Connection type" """A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook)."""
  * ^binding.description = "hl7:endpoint-connection-type"
  * ^binding.strength = #preferred
* name 0..1 string "Name" """A friendly name that this endpoint can be referred to with."""
* managingOrganisation 0..1 EHDSOrganisation "Managing organisation" """The organisation that provides technical management services for this endpoint. """
* payload 0..* Base "Payload" """The set of payloads that are provided/available at this endpoint."""
  * type 0..* CodeableConcept "Type" """The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)."""
    * ^binding.description = "hl7:endpoint-payload-type"
    * ^binding.strength = #preferred
  * mimeType 0..* CodeableConcept "Mime type" """The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. """
    * ^binding.description = "BCP-13"
    * ^binding.strength = #preferred
  * profileCanonical 0..* uri "Profile Canonical" """The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types."""
  * profileUri 0..* uri "Profile uri" """The profile (as a uri) that is expected at this endpoint when not represented using a FHIR profile."""
* address 1..1 uri "Address" """The uri that describes the actual end-point to connect to."""
* header 0..* string "Header" """Additional headers / information to send as part of the notification. Usage depends on the channel type."""