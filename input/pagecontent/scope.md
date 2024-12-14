### Scope   

The Xt-EHR Logical Data Models guide includes computable data models developed for implementing EHDS priority categories:  
- ePrescription and eDispensation  
- Patient Summary  
- Medical Images and Reports  
- Laboratory Results and Reports  
- Discharge Reports  
  
All logical models are developed from eHealth Network guidelines and X-eHealth project and refined to be machine-processable and consistenth with eacother.  

### Content  

The focus of the guides is logical data models represented in various representations (see [How to read this guide](howto.html)). While the logical models implementation guide uses HL7 FHIR tooling for publishing, the models themselves are technology-agnostic and they are not coupled with FHIR resources for data exchange. These models can be used for designing services or self-assessing the conformity to future EHDS requirements and recommendations.  

In addition to logical data models, links to related FHIR specifications are provided. Referenced HL7 Europe FHIR implementation guides are based on Xt-EHR logical models, and the mapping to logical model elements is provided in the FHIR implementation guides. All EHDS-related FHIR implementation guides are work in progress - the status of the work varies and temporary discrepancies with models may appear.  

### Target audience  

The logical models are designed for a wider audience than FHIR implementation guides for data exchange. Within this guide, multiple presentations (including simplified mindmap-like diagrams) are provided to target different readers and their needs.  

The logical data models are useful for:  
- Clinicians who are assessing the content or helping EHR vendors to design new services;  
- Analysts to understand the requirements and possibilities of implementing EHDS use cases;  
- Software designers to design new services and assess the conformance of the existing services;  
- Developers for creating or following mappings between different formats.  

