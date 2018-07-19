pSGML - An Emacs mode for SGML and XML
======================================

## Overview

This source repository contains a fork on Lennart Staflin's pSGML. The
source code has been updated to merge changes developed in pSGML
version 1.4.0 - [as available via the Debian packages
repository][psgml-deb] - merging these changes onto pSGML
1.3.2. Subsequently, changes developed in pSGML version 1.3.3 - [as
available via Lennart Staflin's GitHub repository][psgml-lenst] - have
been merged onto the local pSGML 1.4.0 tree. Furthermore, the source
code has been updated with some changes developed in the FreeBSD port
for pSGML (more information [available via FreshPorts][psgml-fbsd]). 
Some assorted local changes have been developed to this merged
tree. The version for this pSGML distribution will be updated to 1.4.1

## Documentation

The manuals, _PSGML, a major mode for SGML documents_ and _PSGML, the
API documentation_ are available in the source tree, in GNU TeXinfo
format. Once installed, these manuals may be viewed in the Emacs
`info` viewer. For purpose of presentation in paged display and for
printing, PDF files may be produced from the corresponding TeXinfo
files, using shell tools such as `texi2pdf`.

## See Also

* [SGML CD: Free SGML Software and How to Use It][ducharme]
* [Emacs Wiki - Psgml Mode][psgml-ewik]
* [Emacs Wiki - Nxml Mode][nxml-ewik]

[psgml-deb]: https://packages.debian.org/sid/psgml/
[psgml-lenst]: https://github.com/lenst/psgml/
[psgml-fbsd]: https://www.freshports.org/editors/psgml/
[ducharme]: http://www.snee.com/bob/sgmlfree/
[psgml-ewik]: https://www.emacswiki.org/emacs/PsgmlMode
[nxml-ewik]: https://www.emacswiki.org/emacs/NxmlMode
