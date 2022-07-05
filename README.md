# Learning XSLT

### Folders
Basic XSLT: Just for the basics of XSLT, includes the 'hello' and 'cdcatalog' files which both convert to HTML. 'Hello' files are really simple and basic; the bare minimum for xml and xsl files. 'cdcatalog' is a bit more complex and uses some looping.

JSONfunction/JSONtext: Both folders are for conversions to JSON. JSONfunction's contents are something I'm still working on and exploring. The example I gave doesn't seem to work and so I'll figure it out. JSONtext has both a basic and complex version, with more logic and uses of other functions in the latter. 

### Basics for using XSLT
1. Create and fill out a valid XML file.
2. Create a XSL file.
3. Make sure to include the Transform package. Within the <xsl:stylesheet> heading, include 'xmlns:xsl="http://www.w3.org/1999/XSL/Transform"'
4. Complete transformation file. 
5. Use Converter.java file to convert. Make sure to reference the appropiate files for the code. 
6. Run Converter.java and output will be saved in output folder.