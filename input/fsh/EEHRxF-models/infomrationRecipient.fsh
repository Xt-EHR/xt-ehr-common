/*
Logical: EEHRxFInformationRecipient
//Id: EEHRxFinformationRecipient
Title: "Information recipient"
Description: """C.6 - EEHRxF refined base model for Information recipient structure"""
Characteristics: #can-be-target

* patient 0..1 Reference (EEHRxFPatient) "C.6.1 - Patients" """Patient recipient"""
* relatedPerson 0..1 Reference (EEHRxFRelatedPerson) "C.6.2 - Related person" """Contact person other than patient recipient"""
* healthProfessional 0..1 Reference (EEHRxFHealthProfessional) "C.6.3 - Health professional" """Health professional recipient"""
* organization 0..1 Reference (EEHRxFOrganization) "C.6.4 - Organization" """Organization recipient"""
* healthProfessionalRole 0..1 Reference (EEHRxFHealthProfessionalRole) "C.6.5 - Health professional role" """Health professional role recipient"""
* device 0..1 Reference (EEHRxFDevice) "C.6.6 - Device" """Device recipient"""
*/