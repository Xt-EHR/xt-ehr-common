Logical: EHDSLaboratoryReport
Parent: EHDSDocument
Title: "Laboratory report model"
Description: """A - EHDS refined base model for Laboratory result report"""
Characteristics: #can-be-target

* header ^short = "A.1 - Laboratory report header"
  * healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information" """Health insurance information (Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.)"""
  * intendedRecipient 0..* Reference(EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSDevice) "Intended recipient" """Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"""
  * eventType ^binding.description = "SNOMED CT"
  * eventType ^binding.strength = #preferred
* laboratoryReportStructuredBody 1..1 EHDSLaboratoryReportBody "A.2 - Laboratory Report structured body" """Report body data elements"""