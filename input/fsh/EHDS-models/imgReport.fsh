Logical: EHDSImagingReport
Title: "Imaging report model"
Parent: EHDSDocument
Description: """A - EHDS refined base model for Medical Imaging Result Report"""
Characteristics: #can-be-target


//* presentedForms 0..* EHDSAttachment "A.3 - Presented forms" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
//* imagingReportAttachments[x] 0..* EHDSAttachment or EHDSMedia "A.4 - Attachment, Media" """Report attachments data elements"""
//* dicomStudyMetadata 0..* EHDSImagingStudy "A.5 - Imaging study" """Metadata of the DICOM study. A study comprises a set of series, each of which includes a set of Service-Object Pair Instances (SOP Instances - images or other data) acquired or produced in a common context. A series is of only one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have multiple series of different modalities."""

* header ^short = "Imaging Report header"
* header 1..1
* header.accessionNumber 0..1 string "Accession number - an identifier, managed by the RIS at the local level, which usually uniquely identifies an imaging procedure request, and links it to imaging study(ies) and related imaging report(s). As it is prefixed by the registration authority it is a globally unique ID, usable both nationally and cross-border."
* header.healthInsuranceAndPaymentInformation 0..* EHDSCoverage "Health insurance and payment information" """Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."""
* header.intendedRecipient[x] 0..* EHDSPatient or EHDSRelatedPerson or EHDSHealthProfessional or EHDSOrganization or EHDSDevice "Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"

* body 1..1 Base "Imaging Report structured body"
