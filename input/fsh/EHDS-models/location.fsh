Logical: EHDSLocation
//Id: EHDSlocation
Title: "Location model"
Description: """C.17 - EHDS refined base model for Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."""
Characteristics: #can-be-target

* identifier 0..* Identifier "C.17.1 - Identifier" """Location identifier"""
* name 0..1 string "C.17.2 - Name" """Name of the location as used by humans"""
* description 0..1 Narrative "C.17.3 - Description" """Additional details about the location that could be displayed as further information to identify the location beyond its name"""
* type 0..* CodeableConcept "C.17.4 - Type" """Type of function performed at the location"""
  * ^binding.description = "HL7 ServiceDeliveryLocationRoleType"
  * ^binding.strength = #preferred
* address 0..1 EHDSAddress "C.17.5 - Address" """Physical location address"""
* position 0..1 Base "C.17.6 - Position" """The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."""
  * longitude 1..1 decimal "C.17.6.1 - Longitude" """Longitude with WGS84 datum"""
  * latitude 1..1 decimal "C.17.6.2 - Latitude" """Latitude with WGS84 datum"""
* managingOrganization 0..1 Reference(EHDSOrganization) "C.17.7 - Managing organization" """The organization responsible for the provisioning and upkeep of the location"""
* partOf 0..1 Reference(EHDSOrganization) "C.17.8 - Part of" """Another Location of which this Location is physically a part of"""
