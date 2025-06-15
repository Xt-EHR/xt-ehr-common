### Differences and relationship to eHN

The main proposed changes of the proposed EEHRxF logical model, compared with the eHN Guideline are: 

* The structure has been flattened to facilitate implementation of only parts of the Patient summary and better support a data centric approach. The result is that all sections are at the same level, not having the grouper-sections "Alerts", "Medical problems", "Medical history", and "Patient provided data" that the eHN GL does. 

* All content sections are kept the same as in the Guideline. However, we do suggest that the two problem sections are combined into one. This is to better support different use cases and current available data. See under the section "Problems" for more information. 

* In line with the International Patient Summary and MyHealth@EU specifications, there is an empty list reason elements for all sections that are suggested to be mandatory 

* Each section has a Generated narrative text element. This is in line with the FHIR International Patient Summary implementation guide, and supports the right for natural persons to get the content in an easily readable format (Article 3 in the EHDS regulation).   

* Instead of top level preferred code systems, which in many cases are not meant to be implemented in full, we have added value sets that are in use in the MyHealth@EU and HL7 Europe specifications as examples. We also include some value sets based on suggestions from participating Member states. 

* The logical models have cardinality, and repeatable elements are split into their own models, which is often reused between different priority categories (e.g. problems, procedures). The individual information elements in these reusable models are based on the eHN Guideline, unless otherwise stated. 

<figure>
{% include ps-model.svg %}
</figure>