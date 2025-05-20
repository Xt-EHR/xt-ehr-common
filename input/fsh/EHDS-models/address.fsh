Logical: EHDSAddress
//Id: EHDSaddress
Title: "Address model"
Description: """C.5 - EHDS refined base model for Address structure"""
Characteristics: #can-be-target

* use 0..1 CodeableConcept "C.5.1 - Use" """Purpose of the address"""
  * ^binding.description = "HL7 AddressUse"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "C.5.2 - Type" """Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both."""
  * ^binding.description = "HL7 AddressType"
  * ^binding.strength = #preferred
* text 0..1 string "C.5.3 - Text" """Text representation of the address"""
* street 0..1 string "C.5.4 - Street" """Name of the street"""
* houseNumber 0..1 string "C.5.5 - House number" """House number"""
* pOBox 0..1 string "C.5.6 - P.O. Box" """Post box"""
* city 0..1 string "C.5.7 - City" """City"""
* postalCode 0..1 string "C.5.8 - Postal code" """Postal code"""
* country 0..1 CodeableConcept "C.5.9 - Country" """Country name and country code"""
  * ^binding.description =  "ISO 3166-1-2"
  * ^binding.strength = #preferred
