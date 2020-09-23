# Identity Lab

[![Build Status](https://travis-ci.org/cu-idlab/lab-www.svg?branch=prod)](https://travis-ci.org/cu-idlab/lab-www)

## Introduction

This is the Identity Lab website GitHub repository. 

The IDLab website is built on the static site generator [Jekyll](https://jekyllrb.com/), with a custom template. New commits to this repository are automatically deployed to the CMCI web server using [Travis](https://travis-ci.org). The icon above indicates the current Travis build status, and you can see detailed build information by clicking on the icon.

## How to Update Publications

The most common kind of update you will need to make is to add new publications. To update the publications page, add a new entry in the lab BibTeX file (`assets/bibliography/lab.bib`), then upload the paper PDF in the PDF folder (`assets/bibliography/pdf/`) with **its filename the same as the corresponding BibTeX citation key**. The publication page will be updated automatically.

For example, if you are adding the following BibTeX entry:
```
@inproceedings{Fiesler2019,
    address = {New York, New York, USA},
    author = {Fiesler, Casey and Brubaker, Jed R. and Forte, Andrea and Guha, Shion and McDonald, Nora and Muller, Michael},
    booktitle = {Conference Companion Publication of the 2019 on Computer Supported Cooperative Work and Social Computing - CSCW '19},
    doi = {10.1145/3311957.3359428},
    isbn = {9781450366922},
    pages = {455--460},
    publisher = {ACM Press},
    title = {{Qualitative Methods for CSCW: Challenges and Opportunities}},
    url = {http://dl.acm.org/citation.cfm?doid=3311957.3359428},
    keywords = {workshoporg},
    year = {2019}
}
```
Then the PDF file must be named `Fiesler2019.pdf` because the citation key is `Fiesler2019`.

## How to Update News

All lab news are stored in `_data/news.yml`. Follow the template and you'll know what to do.

## File Locations

Most of the time, you only need to update certain Markdown files (and maybe upload some PDFs) to update the website. Different parts of the website are kept in the following files:

- PhD Lab members: `_data/people.yml`
- Member images: `images/members`
- Undergraduate RAs: `_data/ugrads.yml`
- Funders: `_data/funders.yml`
- Alumni: `_data/alum.yml`
- Undergraduate Alumni: `_data/ugrad_alum.yml`

- Navigation bar: `_data/nav.yml`

- Project pages: `_pages/`
- Project images: `images/projects`

- Lab news: `_data/news.yml`

- Lab bibliography: `assets/bibliography/lab.bib`
- Paper PDF: `assets/bibliography/pdf/`

In rare occasions, you may need to update the webpage layouts to make things work, but you shouldn't mess with the layouts unless you know what you're doing. All layouts are kept in the `_layouts` directory:

- Projects: `_layouts/project.html`
- News items: `_layouts/post.html`
- Bibliography: `_layouts/reference.html`


## Debugging and Travis Build Environment

Most of the time you won't need to care about this, but in case the need arises...

The best debugging practice is to try to build the website on your local machine, and only commit it to the repo if everything works fine. This shouldn't be a problem if you are only updating news or pubs, but could be if you are making more complex changes. 

To build the site on your own machine, you first need to install Ruby. It is good practice to build in the same environment as production. Jekyll is built on top of Ruby. Our Travis build environment runs Ruby 2.5.0 (which is the lowest possible version for Jekyll to run), so ideally you will want that on your own machine too. To manage Ruby environments, [rbenv](https://github.com/rbenv/rbenv) is a good choice. You might be tempted to have it run on a more recent Ruby version, but experience has told the first-gen webmaster that it's likely a terrible idea and things are probably going to break. 

Once you have Ruby setup, follow the instructions [here](https://jekyllrb.com/docs/installation/) to build and serve the website on your local machine.

