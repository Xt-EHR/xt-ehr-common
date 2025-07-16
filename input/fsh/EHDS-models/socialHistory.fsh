Logical: EHDSSocialHistory
Parent: EHDSDataSet
Title: "Social history model"
Description: "EHDS model for social history observations"
Characteristics: #can-be-target
* description 0..1 string "Textual description of the social history."
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
* observation 0..1 EHDSObservation "Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption"""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"
* referencePeriod 0..1 Period "Reference date range" """Example: from 1974 to 2004"""
  * ^requirements = "eHN PS Guideline, MyHealth@EU, ISO IPS"