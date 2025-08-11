Logical: EHDSDevice
//Id: EHDSdevice
Title: "Device model"
Description: "EHDS refined base model for Device information"
Characteristics: #can-be-target

* identifier 1..* Identifier "Normalised identifier of the device instance, such as UDI according to REGULATION (EU) 2017/745. Multiple identifiers can be used."
* manufacturer 0..1 string "Name of device manufacturer"
* manufactureDate 0..1 dateTime "The date and time when the device was manufactured"
* expiryDate 0..1 dateTime "The date and time beyond which this device is no longer valid or should not be used (if applicable)."
* lotNumber 0..1 string "Lot number of manufacture"
* serialNumber 0..1 string "Serial number assigned by the manufacturer"
* name 0..* string "The name and name type of the device as known to the manufacturer and/or patient"
* modelNumber 0..1 string "The manufacturer's model number for the device"
* version 0..1 string "The actual design of the device or software version running on the device"
* type 0..* CodeableConcept "Device type"
  * ^binding.description = "SNOMED CT, EMDN"
  * ^binding.strength = #preferred
* note 0..* string "Device notes and comments"
