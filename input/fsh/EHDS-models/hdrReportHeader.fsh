Logical: EHDSDischargeReportHeader
Parent: EHDSDocument
Title: "Discharge Report header model"
Description: """EHDS refined base model for Discharge Report header data elements"""
Characteristics: #can-be-target


* healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
* intendedRecipient 0..* Reference(EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSDevice) "Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
