## Scope and Usage

**Observation** is one of the most complex and versatile structures in the logical model. It is designed to cover many different types of observations across a wide range of use cases, from sharing simple findings (e.g. skin color or pulse rate) to representing complex laboratory and medical test results.

The Observation model includes several elements that support complex scenarios in which an observation either:

- consists of several parts that are observed at the same time, under the same conditions, and need to be reported together, or
- is composed of multiple observations that may be performed at different times and under different conditions, but need to be logically grouped to express the intended clinical meaning or workflow.

To support this flexibility, the Observation model allows the use of additional **components** within a single observation and/or **relationships** of various types between different observations.

One of the crucial challenges is selecting the appropriate modeling approach to accurately express the intended semantic meaning for each complex observation scenario.

