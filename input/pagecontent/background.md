### eHealth Network guidelines

The work on cross-border electronic health services in Europe started with the epSOS (European Patients Smart Open Services) project (2008–2014), which defined the first structured Patient Summary and ePrescription/eDispensation datasets, together with interoperability and semantic specifications. These results formed the foundation for later European cooperation in digital health.  

Part of this work resulted in eHealth Network guidelines to support the safe and interoperable exchange of key health documents. The guidelines define minimum clinical datasets, terminology, governance, and technical interoperability requirements to ensure continuity of care and patient safety across EU Member States.  

The operational implementation of these guidelines is realised through MyHealth@EU, the European digital service infrastructure. The first EU cross-border digital health services went live in 2020, marking the transition from pilot projects to real-world deployment and gradual expansion to additional countries and document types.  

The eHealth Network Patient Summary guidelines was also the basis for the International Patient Summary (IPS). The IPS extends the European work to a global context and supports interoperable sharing of core patient information worldwide.  

The eHealth Network guidelines with their first publication dates:
- Patient Summary (November 2013)  
- ePrescription and eDispensation (November 2014)  
- Laboratory Test Results (December 2020)  
- Imaging Reports (2021)  
- Hospital Discharge Reports (2022)  

All eHN guidelines include a list of data elements required or proposed for the particular clinical use case. However, these datasets were primarily designed for clinical and organisational interoperability rather than direct computable implementation.

### From guidelines to logical information models

In early 2024, the eHealth Network Subgroup on Semantics established a task force to analyse the consistency of the different guideline datasets and identify common data objects. The analysis showed that the same clinical information is occasionally modelled or described differently across guidelines. The task force therefore recommended harmonisation of data elements, terminology, and descriptions across the different document types. This work was handed over to the Xt-EHR project to be taken into account when building a more robust and sustainable approach to describing datasets.  

The Xt-EHR project used the eHealth Network datasets as a starting point, acknowledging that they cannot be directly transformed into computable logical models for several reasons:  
- the granularity of modelling is low, sub-elements often described only in text;  
- cardinality is not explicitly stated;  
- data types are not defined and need to be inferred.

The same datasets had also been explored and refined in previous projects, such as xShare and XpanDH. These results were taken into account when creating the initial proposal for the Xt-EHR logical models for EHDS priority categories.

Other sources for refining the models have been:
- MyHealth@EU Requirements Catalogue (and corresponding CDA specification)
- HL7 FHIR resources
- OpenEHR 
- ISO standards (IPS, IDMP, etc)
- SNOMED CT machine-readable concept model

Stakeholder feedback collected during the Xt-EHR project provided important insight into real-world expectations and readiness to adopt the models. Many proposed models were significantly simplified based on this feedback in order to keep the focus on a core dataset that would be feasible to implement within the EHDS timeframe.
