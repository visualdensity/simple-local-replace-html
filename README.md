# Overview

Context is the content separation for example:
 * "adobe" - Adobe installation
 * "microsoft" - Microsoft installation

Each context has its own folder under the `bundles/` directory:
 * "adobe" - `bundles/adobe/`
 * "microsoft" - `bundles/microsoft/`

`bundles/` directory structure:
 * `bundles/{context}/` - all your context content
 * `bundles/{context}/main.png` - *fixed* name - the main image
 * `bundles/{context}/content.js` - *fixed* name - where content structured

`content.js` data structure:

    var content = {
        "title": "Adobe update in progress",
        "heading": "Adobe installation in progress...",
        "description": "Some longer description right here. Please do not shut down"
    }


# How to use

Dynamically generating context-relevant page:
 * Search & replace `{replace}` text with the context 

Example - if you're trying to launch the page for Adobe installation, you'd do this (on Mac or Linux):

    cat template.html | sed -e 's/{replace}/adobe/g' > launch.html

You can also use the `generate.sh` or view source for working example:
    ./generate.sh adobe


# Adding new context

To add a new context, just add a new folder with your context name. For example, if you want to add a new context called "putty", create a new folder called "putty" with the files `main.png` and `content.js` in it.

So, you'll have the following:

    +-bundles
        |
        +- adobe/
        |
        +- putty/
            |
            +-- main.png
            +-- content.js
