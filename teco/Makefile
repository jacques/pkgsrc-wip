# $NetBSD$

DISTNAME=	tecoclinux0398
PKGNAME=	teco-0398
CATEGORIES=	editors
MASTER_SITES=	http://almy.us/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://almy.us/teco.html
COMMENT=	Powerful and compact editor with nongrafical user interface

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_FILE=	makefile
WRKSRC=		${WRKDIR}/tecoc${PKGVERSION}
BUILD_DIRS=	src
BUILD_TARGET=	#

DOCSFILES=	src/readme.1st src/readme.lnx src/changes.txt src/aaout.txt \
		src/problems.txt src/video.txt doc/teco.doc doc/wchart.txt

INSTALLATION_DIRS+=	bin share/teco share/doc/teco

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/tecoc ${DESTDIR}${PREFIX}/bin/
	for f in ${WRKSRC}/lib/*; do \
	${INSTALL_DATA} $$f ${DESTDIR}${PREFIX}/share/teco/; \
	done
.for file in ${DOCSFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DESTDIR}${PREFIX}/share/doc/teco/
.endfor

.include "../../mk/bsd.pkg.mk"
