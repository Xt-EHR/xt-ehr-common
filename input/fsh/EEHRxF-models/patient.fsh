/*Idea is to document the consolidated eHN logical models (as is) first, and then refine them into computable EEHRxF models.
Consolidated models are based on the work of eHN guidelines consistency task force work results*/

Logical: EEHRxFPatient
Parent: Base
Title: "Patient"
Description: "EEHRxF refined base model for identification of the patient/subject"
Characteristics: #can-be-target
Id: eehrxf-patient-model
* personalIdentifier 0..* Identifier "Personal identifier"
* name 0..* HumanName "Name of the patient"