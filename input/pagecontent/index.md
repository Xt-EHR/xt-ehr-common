  <div style="
  border: 1px solid #aaaa00;
  border-radius: 4px;
  background-color: #ffff99;
  padding: 0.8em 1em;
  margin: 1em 0;
  display: flex;
  align-items: flex-start;
  gap: 0.8em;
  max-width: 100%;
  box-sizing: border-box;
  font-size: 0.9em;
  line-height: 1.5;
">

  <!-- Info icon -->
  <div style="flex-shrink: 0; display: flex; align-items: center; justify-content: center;">
    <img 
      src="24px.svg" 
      alt="Information icon" 
      style="height: 28px; width: 28px; filter: invert(35%) sepia(70%) saturate(400%) hue-rotate(25deg) brightness(85%);"
    />
  </div>

  <!-- Text -->
  <div style="flex: 1 1 auto; text-align: left; color: #333;">
    <p style="margin: 0;">This is the end-of-project release of the EHDS Logical Information Models developed under the Xt-EHR Joint Action. The models are a reflection of project deliverables and are subject to future refinement.</p>
  </div>

</div>

<style>
@media (max-width: 600px) {
  div[style*="display: flex;"][style*='background-color: #ffff99'] {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>

### Introduction
This implementation guide includes logical information models created in the [Xt-EHR project](https://www.xt-ehr.eu/work-packages). These models are the basis for designing the EHDS data exchange format (EEHRxF). The models published in this implementation guide are subject to change during the comitology process of EHDS implementing acts. Please consider the publication date when reusing the models.  


### Specification
This guide includes EHDS models for all the priority categories, and many of the models are shared between use cases.

Logical Information Models IG should be used as a basis for all the use cases to make sure common data objects (patient, medication, etc.) are modelled in a consistent way. The IG also contains system obligations for the same models. 

HL7 FHIR Implementation Guides for the EEHRxF are created in cooperation with other EU projects working on EHDS implementation (please find the links under priority category pages). FHIR implementation guides include mappings to the models and replicate the data obligations in FHIR profiles. 

Content of the guide is based on many earlier works. Common sources for all use cases include:
- [eHealth Network guidelines](https://health.ec.europa.eu/ehealth-digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines) (including the results from eHN Subgroup on Semantics guideline consistency task force);  
- [MyHealth@EU requirements catalogue](https://webgate.ec.europa.eu/fpfis/wikis/display/EHDSI/1.+MyHealth@EU+Requirements+Catalogue);  
- [X-eHealth project](https://x-ehealth.min-saude.pt/);  
- [XpanDH project](https://build.fhir.org/ig/hl7-eu/xpandh/).  

### Authors and contributors

This Implementation Guide is a result of work across different work packages:  
- WP5 Task 5.4 "Metadata management",  
- WP6 Task 6.1 "Patient Summary",  
- WP6 Task 6.2 "ePrescription and eDispensation",  
- WP7 Task 7.1 "Medical Results and Reports",  
- WP7 Task 7.2 "Medical Images and Reports",  
- WP7 Task 7.3 "Discharge Reports".  

<br/><br/>
