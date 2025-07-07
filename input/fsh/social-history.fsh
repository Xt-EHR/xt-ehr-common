Logical: EHDSSocialHistory
Parent: EHDSDataSet
Title: "Social history model"
Description: "EHDS simplified model for care plan. The model includes very minimal information and is not designed to cover the full functionality of care plans."
Characteristics: #can-be-target
* description 1..1 string "Textual description of the social history."
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
* observation 0..* EHDSObservation "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
* referenceDateRange 0..* Period "Reference date range" """Example: from 1974 to 2004"""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"

