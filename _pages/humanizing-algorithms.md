---
layout: project
permalink: "/project/humanizing-algorithms/"
title:  'Humanizing Algorithms'
category: project
image: /images/projects/humanizing-algorithms.png
image_crop: /images/projects/humanizing-algorithms.png
images:
  - /images/projects/humanizing-algorithms.png
excerpt:
  We studied how algorithms handle sensitive social data, from upsetting encounters with content about ex-partners and the dead to the way commercial systems classify gender and race, and what human-centered design of algorithmic systems requires.
homepage: false
status: past
order: 280
---

From 2018 to 2021, we studied algorithmic interaction design (AIxD): how to design systems that use algorithms and social data in a human-centered way.

Platforms increasingly use algorithms to curate content from data about people's relationships, behavior, and identities. These algorithms usually optimize for metrics that are easy to calculate, such as likes, plays, and clicks, and they can only work with the social information a person has provided or the system can infer. As a result, they often miss the social context and human meaning that decide whether an interaction feels acceptable.

We looked at where algorithmic and human understandings of social data diverge. Those gaps show what people expect from algorithms, how they make sense of a misfire, and what they do next. Across six studies, we asked how people navigate sensitive algorithmic encounters, how those encounters affect them, and which social concepts algorithms fail to understand. The work included a research partnership with Facebook.

### Sensitive Algorithmic Encounters

1. **Upsetting encounters with ex-partners.** Through 19 interviews, we studied how people experience algorithmically curated content about ex-romantic partners on Facebook. We found that encounters were made worse by the complex networks and data that create inferred connections around otherwise explicit, and often explicitly ended, relationships. We called this the "social periphery" and show how designing for it can give people agency over inferred as well as explicit connections.
2. **Identity after a break-up.** We studied how people handle digital objects and relationships after a break-up. People acted on their possessions and connections to build a post-break-up identity, and existing tools served poorly their competing wishes to present an authentic past and a future self.
3. **Memories and reminiscence.** We interviewed 20 people who had recently seen sensitive content through Facebook's Memories features. They wanted to see "bittersweet" content, but when it was expected, in a context that felt appropriate, and when they could make sense of why the system showed it. We recommend drawing on low-technology artifacts, identifying which contextual features harm users, and studying how users make sense of recommender systems.
4. **Everyday evaluations of the Like button.** In interviews with 25 artists who use Instagram, we found three overlapping orientations to the Like: affective, relational, and infrastructural. The button's ambiguity pushes people toward an economic way of evaluating that crowds out other values, and shapes how artists use the platform and make art.

### Algorithmic Infrastructure and Bias

1. **How computers see gender.** We analyzed ten commercial facial analysis and image labeling services and evaluated five of them on a dataset of diverse genders, using images labeled by the people who posted them. The services performed worse on transgender people and could not classify non-binary genders. Bias came not only from engineering and training data but from how gender is codified in the data standards that surround the classifiers.
2. **How databases define race and gender.** We examined how race and gender are defined and annotated in image databases used for facial analysis. Most databases rarely document the source material behind those definitions or how annotation was done, which makes them opaque and less trustworthy. We offer guidance for database authors.

### Funding

This work was supported by the National Science Foundation under [CRII: CHS: Humanizing Algorithms: Empirical and Design Investigations of Sensitive Algorithmic Encounters](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1756028) (Award #1756028, 2018 to 2021).

### Researchers
Anthony T. Pinter, Jialun "Aaron" Jiang, Katie Z. Gach, Melanie M. Sidwell, James E. Dykes, Morgan Klaus Scheuerman, Jacob M. Paul, Kandrea Wade, Caitlin Lustig, Artie Konrad, Blake Hallinan, [Jed Brubaker](https://www.jedbrubaker.com/)

### Publications

{% bibliography --query @*[tags~=humanizing-algorithms] %}
