Logical: EHDSAddress
//Id: EHDSaddress
Title: "Address model"
Description: """EHDS refined base model for Address structure"""
Characteristics: #can-be-target

* use 0..1 CodeableConcept "Purpose of the address"
  * ^binding.description = "HL7 AddressUse"
  * ^binding.strength = #preferred
* type 0..1 CodeableConcept "Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both."
  * ^binding.description = "HL7 AddressType"
  * ^binding.strength = #preferred
* text 0..1 string "Text representation of the address"
* street 0..1 string "Name of the street"
* houseNumber 0..1 string "House number"
* postBox 0..1 string "Post box"
* city 0..1 string "City"
* postalCode 0..1 string "Postal code"
* country 0..1 CodeableConcept "Country name and country code"
  * ^binding.description =  "ISO 3166-1 alpha-2"
  * ^binding.strength = #preferred
