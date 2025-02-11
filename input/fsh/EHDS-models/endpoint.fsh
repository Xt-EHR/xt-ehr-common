Logical: EHDSEndpoint
//Id: EHDSendpoint
Title: "Endpoint model"
Description: """C.33 - EHDS refined base model for Endpoint"""
Characteristics: #can-be-target

* identifier 1..* Identifier "C.32.1 - Identifier" """Identifier for the organization that is used to identify the endpoint across multiple disparate systems."""
* status 1..1 CodeableConcept "C.32.2 - Status" """Status of the endpoint. The endpoint status represents whether the endpoint can currently be used for connections or why it can't be used."""
  * ^binding.description = "hl7:EndpointStatus"
  * ^binding.strength = #preferred
* connectionType 1..* CodeableConcept "C.32.3 - Connection type" """A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook)."""
  * ^binding.description = "hl7:endpoint-connection-type"
  * ^binding.strength = #preferred
* name 0..1 string "C.32.4 - Name" """A friendly name that this endpoint can be referred to with."""
* managingOrganization 0..1 EHDSOrganization "C.32.5 - Managing organization" """The organization that provides technical management services for this endpoint. """
* payload 0..* Base "C.32.6 - Payload" """The set of payloads that are provided/available at this endpoint."""
  * type 0..* CodeableConcept "C.32.6.1 - Type" """The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)."""
    * ^binding.description = "hl7:endpoint-payload-type"
    * ^binding.strength = #preferred
  * mimeType 0..* CodeableConcept "C.32.6.2 - Mime type" """The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. """
    * ^binding.description = "BCP-13"
    * ^binding.strength = #preferred
  * profileCanonical 0..* uri "C.32.6.3 - Profile Canonical" """The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types."""
  * profileUri 0..* uri "C.32.6.4 - Profile uri" """The profile (as a uri) that is expected at this endpoint when not represented using a FHIR profile."""
* address 1..1 uri "C.32.7 - Address" """The uri that describes the actual end-point to connect to."""
* header 0..* string "C.32.8 - Header" """Additional headers / information to send as part of the notification. Usage depends on the channel type."""