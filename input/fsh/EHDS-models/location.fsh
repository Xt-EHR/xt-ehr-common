Logical: EHDSLocation
//Id: EHDSlocation
Title: "Location model"
Description: """EHDS refined base model for Details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."""
Characteristics: #can-be-target

* identifier 0..* Identifier "Identifier" """Location identifier"""
* name 0..1 string "Name" """Name of the location as used by humans"""
* description 0..1 string "Description" """Additional details about the location that could be displayed as further information to identify the location beyond its name"""
* type 0..* CodeableConcept "Type" """Type of function performed at the location"""
  * ^binding.description = "HL7 ServiceDeliveryLocationRoleType"
  * ^binding.strength = #preferred
* address 0..1 EHDSAddress "Address" """Physical location address"""
//* position 0..1 Base "Position" """The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."""
//  * longitude 1..1 decimal "Longitude" """Longitude with WGS84 datum"""
//  * latitude 1..1 decimal "Latitude" """Latitude with WGS84 datum"""
* managingOrganisation 0..1 Reference(EHDSOrganisation) "Managing organisation" """The organisation responsible for the provisioning and upkeep of the location"""
* partOf 0..1 Reference(EHDSOrganisation) "Part of" """Another Location of which this Location is physically a part of"""
