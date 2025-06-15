
This Implementation Guide defines a common logical data model for the European Health Data Space (EHDS) Patient Summary. 

The input requirements for elaborating this model include the eHN guidelines: 

* reference models
  * eHN guidelines
  * International Patient Summary (ISO 27269)
  * [FHIR IPS](https://hl7.org/fhir/uv/ips) 

* analysis of content and current alignment, as described in the Xt-EHR deliverable D6.1

Additionally, the following considerations apply
* Member States use different constraints (for example value sets) than those used in cross-border settings
* Member states should maintain a common level of interoperability: Even outside the exchange through the NCP, Patient Summaries in one Member State should retain a minimum level of interoperability with other member states
  * This minimum implies some techical and semantic requirements. For FHIR, this is assumed to mean there is an expected conformance to the FHIR IPS specification.


To meet these requirements, the common model structure presents the common data requirements for Patient Summaries across Europe, both in cross-border settings as well as within borders. Specialized models can be derived from this for cross-border implementation, or for common specifications for member states.

## Structure

| Specification | Purpose |
|----------------|---------|
| **EHDS Patient Summary Logical Model** (this model) | Defines the core data elements and their relationships for a patient summary, independent of exchange format and of specialisation. |
| **EHDS Cross-Border Patient Summary** | A specialisation of the logical model for cross-border exchange between Member States via the NCP. |
| **EHDS National Patient Summary** | A specialisation of the logical model for exchange and use within Member States, which may be further tailored to national contexts and workflows. |

## Relationship Diagram

See the diagram below for an overview of how the logical model relates to its specializations.

<figure>
{% include ps-models.svg %}
</figure>