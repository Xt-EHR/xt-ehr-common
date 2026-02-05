Logical: EHDSEndpoint
//Id: EHDSendpoint
Title: "Endpoint model"
Description: "Model covers technical details of an endpoint that can be used for electronic services"

* identifier 1..* Identifier "Identifier for the endpoint"
* status 1..1 CodeableConcept "Status of the endpoint (e.g. active, limited)."
  * ^binding.description = "HL7 Endpoint Status"
  * ^binding.strength = #preferred
* connectionType 1..* CodeableConcept "A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way."
* name 0..1 string "A friendly name that this endpoint can be referred to with."
* managingOrganisation 0..1 EHDSOrganisation "The organisation that provides technical management services for this endpoint."
* payload 0..* Base "The set of payloads that are provided/available at this endpoint."
  * type 0..* CodeableConcept "The type of content that may be used at this endpoint."
  * mimeType 0..* CodeableConcept "The mime type to send the payload in (e.g. application/fhir+xml, application/fhir+json)."
    * ^binding.description = "BCP-13"
    * ^binding.strength = #preferred
  * profileCanonical 0..* uri "The FHIR profile that is expected at this endpoint. It describes the resources that are handled, or even simply which resource types."
  * profileUri 0..* uri "The profile (as a URI) that is expected at this endpoint when not represented using a FHIR profile."
* address 1..1 uri "The URI that describes the actual end-point to connect to."
* header 0..* string "Additional headers / information to send as part of the notification. Usage depends on the channel type."