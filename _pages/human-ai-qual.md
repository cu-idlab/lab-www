---
layout: project
permalink: "/project/human-ai-qual/"
title:  'Human-AI Collaboration for Qualitative Analysis'
category: project
image: /images/projects/human-ai-qual.png
image_crop: /images/projects/human-ai-qual.png
images:
  - /images/projects/human-ai-qual.png
excerpt:
  Computational tools have long served quantitative scholars, but what role can AI play in qualitative analysis? We studied how tools can support, rather than supplant, qualitative scholars, attending to the time, perspective, and serendipity that interpretive work depends on.
homepage: false
status: past
order: 270
---
Large datasets are typically the domain of quantitative scholars, who use computational tools to derive numerical insights. Qualitative researchers, who build deep and contextualized understandings of text such as interviews, open-ended surveys, and social media posts, have had far fewer tools to work with at scale. This project asked how computation and AI might support qualitative scholars in developing rich, interpretive understandings of large corpora, without reducing qualitative analysis to automation.

The project was funded by the National Science Foundation (CHS: Medium, Scaling Qualitative Inductive Analysis through Computational Methods, Award 1764089, 2018 to 2022) and was a collaboration between the Identity Lab, Danielle Albers Szafir's visualization lab, and Casey Fiesler. Its central move was to invert the usual "human-in-the-loop" model, in which people verify what a computational system produces. Instead, the work starts from the insights of human analysts and asks how computation can amplify them.

### What we did

**Studying the work of qualitative researchers.** We began by studying how qualitative researchers actually work. Interviews with qualitative scholars described their diverse methodological practices and the messiness and uncertainty of inductive analysis. Scholars wanted full agency over the process, and saw serendipity as something AI should not interfere with. This work framed the question as one of task delegability: which parts of qualitative analysis could people reasonably hand to a machine, and which not.

**Time and perspective.** A follow-up study with 15 CSCW and HCI qualitative researchers showed that the stage of analysis matters. Scholars were open to AI assistance in data exploration and coding, as long as it assisted rather than automated their analytic work, and incorporating AI changes some analytic practices and trades off scale, abstraction, and perspective.

**Building tools.** With visualization and machine learning collaborators, we designed and tested systems for inductive analysis. QualVis, presented at the Machine Learning from User Interaction workshop at IEEE VIS in 2019, modeled an analyst's observations to help them navigate large text corpora, using social media data on emotional distress. Scholastic, presented at UIST 2022, is a visual analytics tool for inductive and interpretive text analysis that uses familiar graphical metaphors with interactive topic modeling and document clustering to support sampling and coding.

**Building community.** We co-organized the CSCW 2019 workshop on qualitative methods for CSCW, which brought researchers together around the challenges of making qualitative work legible and of scaling it responsibly. In 2020 we also recruited a postdoctoral researcher to extend the project's qualitative and design investigations.

### Why it matters

As large language models have made AI assistance in qualitative coding widespread, the questions this project raised have become pressing: where AI can help, where it threatens the interpretive judgment qualitative scholarship rests on, and how to design tools that keep analysts in charge. The project's findings and tools remain a reference point for that conversation, and the Identity Lab's later work on AI in sensitive contexts grew in part from it.

### Researchers
[Jed Brubaker](http://www.jedbrubaker.com), [Danielle Albers Szafir](https://www.danielleszafir.com), [Casey Fiesler](https://caseyfiesler.com), Michael Paul, [Jessica Feuston](https://jfeuston.com), Jialun Aaron Jiang, Kandrea Wade, Matt-Heun Hong, Lauren Marsh, Janet Ruppert, Harshini Priya Muthukrishnan

### Funding
National Science Foundation, [CHS: Medium: Scaling Qualitative Inductive Analysis through Computational Methods](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1764089), Award 1764089.

### Publications
{% bibliography --query @*[tags~=human-ai-qual] %}
