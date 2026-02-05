#### Scope and Usage

**Observation** is one of the most complex and versatile structures in the logical model. It is designed to cover many different types of observations across a wide range of use cases, from sharing simple findings (e.g. skin color or pulse rate) to representing complex laboratory and medical test results.

The Observation model includes several elements that support complex scenarios in which an observation either:

- consists of several parts that are observed at the same time, under the same conditions, and need to be reported together, or
- is composed of multiple observations that may be performed at different times and under different conditions, but need to be logically grouped to express the intended clinical meaning or workflow.

To support this flexibility, the Observation model allows the use of additional **components** within a single observation and/or **relationships** of various types between different observations.

One of the crucial challenges is selecting the appropriate modeling approach to accurately express the intended semantic meaning for each complex observation scenario.

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