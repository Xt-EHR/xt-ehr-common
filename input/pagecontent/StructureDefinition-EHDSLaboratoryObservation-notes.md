#### When to use components

##### Semantic meaning of components

A **component** represents a structured sub-result that:

- is measured together with other components,
- shares the same observation context, and
- is not clinically meaningful on its own.

Components answer the question:

> *“What are the parts of this one observation?”*

All components share the same:

- subject,
- time of observation,
- performer,
- method.

Components:

- cannot stand alone without the parent observation, and
- are usually presented together.

##### Guidance for use

Use **components** if **all** of the following are true:

- the values are observed at the same moment,
- they are produced by the same observation act,
- they are meaningless or potentially misleading in isolation, and
- they are not expected to be referenced independently.

#### When to use relationships between observations

##### Semantic meaning of relationships

The Observation model allows observations to be related using the following relationship types:

- **hasMember** – to group multiple observations that belong to a common set or panel,
- **derivedFrom** – to indicate that one observation is calculated, inferred, or otherwise derived from one or more other observations,
- **triggeredBy** – to indicate that one observation was initiated or caused by another observation or event.

Each related observation:

- has independent clinical meaning,
- may be observed or reported separately, and
- may be reused or referenced independently.

##### Guidance for use

Use **relationships between observations** when the related observations:

- have independent meaning,
- may have different observation times,
- may have different performers or methods, and
- can be referenced, queried, or interpreted independently.

#### Summary principles

- Use **components** when the parts are inseparable aspects of a single observation.
- Use **relationships between observations** when each observation has independent clinical meaning.