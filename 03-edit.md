---
layout: page
menutitle: EDIT
permalink: /edit/
---


# The reviewing process

A submission takes the form of an issue. If you're unfamiliar with GitHub, do
not hesitate to ask advices and informations to the editor in charge of editing
the submission. You can have a look at what a full [submission](https://github.com/ReScience/ReScience-submission/pull/3) looks like. Reviewers unfamiliar with git should have a look athttp://git-lectures.github.io

To review a submission, you'll first have to clone the author's repository onto
your desktop environment and each time an author update the manuscript or code
to get reviewer's comment into account, you'll have to update your local copy
using the `git pull` command.

## Reviewer guidelines

### Successful replications

Most articles in Re**Science** reports successful replication of the
results (figures, tables, ...) of previously published research work.
A full replication covers all the results of the original work, whereas
a partial replication covers only a subset of the results.

The main criteria for acceptance are

 1. The actual replication of the research. The reviewer must evaluate
    the authors' claims about a successful replication, applying the
    standards of the field.

 2. Reproducibility of the replication. The reviewers must be able
    to run the proposed implementation on their computer, and obtain
    the same results as the authors with the limits of the state of
    of the art of the field.

 3. Clarity of the code and the instructions for running it.
    Uncommented or obfuscated code is as bad as no code at all.

 4. Clarity and completeness of the accompanying article, in which the
    authors should clearly state why they think they have replicated
    the paper (same figures, same graphics, same behavior, etc.) and
    explain any obstacles they have encountered during the replication
    work.

The primary goal of the review is not to decide whether to accept or
reject a submission, but to help the authors improve their work until
it meets the Re**Science** quality standards. Since Re**Science**
targets replication of already published research, there is no need to
judge the relevance or novelty of the work. Every replication that
meets the criteria listed above is welcome in Re**Science**.
Rejection remains of course a possiblity, in the case that the
authors are not able or willing to improve their submission as
deemed necessary by the reviewers.

When evaluating the criteria for acceptance, reviewers need to apply
the standards of their field of research. There are no absolute
criteria for two results/figures being equal, so both the success and
the reproducibility of the replication must be judged according to
the degree of equality that can be achieved given the state of the
art of the field. The clarity of the code and instructions must also
be judged in the light of the conventions of the field. As a general
goal, any competent researcher in the field should understand the
paper and be able to understand and run the code. The use of
software packages that are mainstream in the field is encouraged,
but not strictly required. The less well-known a software package
is, the more explanation authors should provide concerning its
capabilities and use.

### Failed replications

A replication attempt can lead to the finding that the results of the
original paper cannot be reproduced, suggesting a mistake or ommission
in the original work. The failure can concern some or all of the results.
Re**Science** accepts reports on replication failures, but requires a
particularly careful examination by the reviewers. The authors must describe
in detail why they believe that the original work is mistaken, and the
reviewers must be convinced by the reasoning offered by the authors.

Authors who are confronted with replication failure are strongly encouraged
to contact the authors of the original work and try to explore the causes
of the replication failure in collaboration with them. This is, however, not
a requirement for publication in Re**Science**.


# The editing process

The role of a scientific editor is to manage a submission from start to end,
i.e.  from the initial acknowledgment request by the editor-in-chief to the
final [publication](../read) (with DOI). As an editor, your goal is to help
authors improve their submission in order to meet the journal's quality
standards and to ensure that anyone can re-use the published code. Depending on
the specific domain, an editor might request the article to follow best
practices of the domain. 


## Editor guidelines

* When a pull request (PR) has been assigned to you, you have to acknowledge
  the PR (as a comment in the PR discussion). Depending on your decision, you
  can either **reject** and close the PR (and motivate such decision) or
  **accept** it and assign one or two reviewers (depending if you intend to
  review the PR yourself or not). You alert the reviewers in the PR
  acknowledgment (use the @ alert syntax). If you think you cannot handle the
  submission within a reasonable delay, you should re-assign the PR to another
  editor after having obtained his or her agreement.
* During the review, reviewers are free to interact with the authors to ask for
  clarification or change in any file that is part of the submission.
* Don't forget to update issuer labels according to the status of submission
* The main criterion for acceptance is either:
  * Replication of the original research with a clear statement by the authors
  explaining why they think they have replicated the paper (same figures, same
  graphics, same behavior, etc.).
  * Non replication of the oroginal research with a clear statement by the
  authors explaining why they think this cannot be replicated .
  * A code without the accompanying article is also a criterion for rejection
  since we're not human compilers (well not all of us at least).
* Don't forget to check that there is a license in the code repository. Authors
  can choose whatever open license they prefer (see [the Debian Free Software
  Guidelines](https://www.debian.org/social_contract#guidelines)) but they need
  to choose one.
* If both reviewers agree, the paper can be accepted.


# The publication process

The publication is alsmot automatic but still requires some manual steps:

  * [Reserve a new article number]() and communicate it to the author(s)
  * [Reserve a new DOI]() and communicate it to the author(s)
  * Make sure author has updated all the missing metadata in the YAML file
  * Make sure author regenerated the PDF
  * Fork the author repository under the ReScience archives
    (https://github.com/ReScience-Archives) organization.
  * Upload paper to Zenodo using the provided [upload-zenodo.py]() script.
  * Generate a new bibtex entry using the provided [generate-bibtex.py]()
  * Make a pull request to add this new entry to the [list of published articles]()
  * Add stars on [the board](http://rescience.github.io/board/) to the editor
    and reviewers (linking to the review)
  * Try to contact the editor and the authors of the original article to tell
    them about the successful or unsuccessful replication of their work
  * Add the `Published` label to the review issue and close it

