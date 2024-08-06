Logical: EEHRxFDevice
//Id: EEHRxFdevice
Title: "Device (model)"
Description: """C.12 - EEHRxF refined base model for Device information"""
Characteristics: #can-be-target

* identifier 1..* Identifier "C.12.1 - Identifier" """An identifier of the device which is unique within in a defined scope. Multiple identifiers can be used."""
* manufacturer 0..1 string "C.12.2 - Manufacturer" """Name of device manufacturer"""
* manufactureDate 0..1 dateTime "C.12.3 - Manufacture date" """The date and time when the device was manufactured"""
* expiryDate 0..1 dateTime "C.12.4 - Expiry date" """The date and time beyond which this device is no longer valid or should not be used (if applicable)."""
* lotNumber 0..1 string "C.12.5 - Lot number" """Lot number of manufacture"""
* serialNumber 0..1 string "C.12.6 - Serial number" """Serial number assigned by the manufacturer"""
* name 0..* string "C.12.7 - Name" """The name and name type of the device as known to the manufacturer and/or patient"""
* modelNumber 0..1 string "C.12.8 - Model number" """The manufacturer's model number for the device"""
* version 0..1 string "C.12.9 - Version" """The actual design of the device or software version running on the device"""
* type 0..* CodeableConcept "C.12.10 - Type" """Device type"""
  * ^comment = "SNOMED CT, EMDN"
* note 0..* Narrative "C.12.11 - Note" """Device notes and comments"""
