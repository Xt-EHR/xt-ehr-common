# Ways of working - EHDS Logical Information Models v0.4.0

* [**Table of Contents**](toc.md)
* **Ways of working**

## Ways of working

### Change management

All changes in the implementation guide for logical models shall have a traceable history, including the origin of the change proposal, the group’s decision to reject or approve the proposal, and authoring details. Xt-EHR uses GitHub for version management and GitHub Issues for tracking change proposals and their resolutions. Other platforms with similar functionality may be considered for long-term maintenance, considering the ease of use for non-developers and suitability for the stack of related tools in use.

#### Starting a change request

Any person can add an issue requesting a correction, clarification, addition, or change. A GitHub account is required. All issues need to include sufficient information to understand the request and its justification.

The issues are triaged by GitHub repository editors.

The triager can make changes to the issue for better readability and tracking:

* Correct the title (add the name of the related logical model, correct typos, and make other non-substantive clarifications).
* Add labels to indicate which tasks or cross-task working groups are expected to work on the issue.

In the following cases, an issue can be closed without further processing or group discussion:

* When an issue with the exact same content already exists, the issue may be closed as “duplicate”. Link with the duplicated issue for tracking should be included.
* When the requested correction or change has already been applied, the issue may be closed as “completed”. Relevant clarification should be provided in the issue's closing message.
* When an issue lacks sufficient information for processing, the triager may request additional clarifications. If the clarifications are not provided, the issue may be closed as “not planned”. The reason for closing the issue should be provided.
* When an issue is out of scope for the logical information models, the issue can be closed as “not planned”. The reason for closing the issue should be provided.

#### Decision process for resolving issues

Issues are regularly monitored by the task leads and GitHub editors to identify open issues relevant to the tasks.

Task leads organise the discussion and provide group decisions for issues that are specific to their task. Common models that are shared across the tasks are discussed in cross-task working groups. When a decision is not reached through regular discussion, the decision may be reached by voting (positive, negative, abstain).

Decisions are recorded in the issue, providing information about the meeting where the decision was reached, the exact decision, and a description of the change. The description must be clear enough to be acted on without having been present at the decision making meeting.

Change proposals that are considered relevant for future discussions may be marked as “Backlog”. These issues are considered closed for now, but are expected to be reopened during the next revisions of the models.

#### Technical implementation of a change

When a resolution for the issue has been documented, any GitHub editor is allowed to make the change according to the following principles:

* Assign the issue to a technical author (self-assignment is allowed and encouraged).
* Create a temporary branch from the repository’s main branch to make the change.
* Indicate the issue number in the commit message to create a link between the commit and the issue: use “resolves X” or “fixes X” to automatically close the issue after merging changes; use “related to X” when the issue has only been partially resolved and should stay open.

The temporary authoring branch may include multiple commits for multiple issues, especially when they are related to the same topic.

To merge the temporary authoring branch into the main branch, a review is requested according to the following principles:

* Make sure the autobuild of the web version builds correctly and includes the recent changes.
* Create a Pull Request to merge the temporary authoring branch into the main branch.
* Choose a GitHub editor for review and assign the review (additional notification to the reviewer is recommended).

The reviewer compares the issues and the actual changes, as well as the web build. If there are questions or problems, the author is contacted for corrections or clarifications.

When the PR has been approved by the reviewer, the author (or reviewer, if agreed) merges the temporary branch into the main branch and deletes the temporary branch.

Issues marked as resolved in the related commits are automatically closed. For issues that are related but not resolved by the PR, the status of the issue should be clarified in issue comments.

In case of external contributors, forks may be used instead of branches, given that the rest of the process remains intact.

#### Reopening issues

The general rule is that, when an issue is closed with a decision, the same issue should not be opened without providing new aspects that might overrule the earlier decision. A reopened issue without justification may be closed without discussion.

An issue may always be reopened when closing it can be considered a technical error (no decision, the decision not implemented, or implemented erroneously).

If a larger issue is ready to be closed but a more specific detail remains undecided, a new issue with a narrower scope may be raised to keep a clearer focus. The new issue should have a reference to the closed issue for background information.

### Release publication process

A new release is published upon a request from task leads or GitHub editors and approval from the project coordinator.

Release versioning follows the principles of semantic versioning. The release remains a draft until the end of the project. A GitHub tag and change log description are required.

During the process of releasing, the main branch should be in an authoring freeze.

After the release, authoring continues in the main branch according to the rules described above. The version number of the main branch should be raised.

