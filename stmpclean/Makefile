# $NetBSD$
#

DISTNAME=		stmpclean-0.3
CATEGORIES=		sysutils
MASTER_SITES=		http://shlang.com/stmpclean/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://shlang.com/stmpclean/
COMMENT=		Secure /tmp cleaner
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DOCDIR=	${PREFIX}/share/doc/stmpclean

INSTALLATION_DIRS=	sbin ${DOCDIR}	${PKGMANDIR}/man8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stmpclean ${DESTDIR}${PREFIX}/sbin/stmpclean
	${INSTALL_DATA} ${WRKSRC}/stmpclean.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8
	${INSTALL_DATA} ${WRKSRC}/FAQ ${DESTDIR}${DOCDIR}

.include "../../mk/bsd.pkg.mk"
