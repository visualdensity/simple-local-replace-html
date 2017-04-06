# How to use

Context is the content separation for example:
 * "adobe" - Adobe installation
 * "microsoft" - Microsoft installation

Each context has its own folder under the `bundles/` directory:
 * "adobe" - `bundles/adobe/`
 * "microsoft" - `bundles/microsoft/`

Dynamically generating context-relevant page:
 * Search & replace `{replace}` text with the context 

Example - if you're trying to launch the page for Adobe installation, you'd do this (on Mac):

    cat template.html | sed -e 's/{replace}/adobe/g' > launch.html
