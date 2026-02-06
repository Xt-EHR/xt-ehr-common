Logical: EHDSLocation
//Id: EHDSlocation
Title: "Location model"
Description: """Model for details and position information for a place where services are provided and resources and participants may be stored, found, contained, or accommodated."""

//TODO
* identifier 0..* Identifier "Location identifier"
* name 0..1 string "Name of the location as used by humans"
* description 0..1 string "Additional details about the location that could be displayed as further information to identify the location beyond its name"
* type 0..* CodeableConcept "Type of function performed at the location"
  * ^binding.description = "HL7 ServiceDeliveryLocationRoleType"
  * ^binding.strength = #preferred
* address 0..1 EHDSAddress "Physical location address"
//* position 0..1 Base "The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML)."
//  * longitude 1..1 decimal "Longitude with WGS84 datum"
//  * latitude 1..1 decimal "Latitude with WGS84 datum"
* managingOrganisation 0..1 EHDSOrganisation "The organisation responsible for the provisioning and upkeep of the location"
* partOf 0..1 EHDSOrganisation "Another location of which this location is physically a part of"
