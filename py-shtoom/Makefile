# $NetBSD$
#

DISTNAME=		shtoom-0.2
PKGNAME=		${PYPKGPREFIX}-shtoom-0.2
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=shtoom/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://divmod.org/trac/wiki/ShtoomProject
COMMENT=		Software VoIP telephony in Python

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		${PYPKGPREFIX}-twisted>=1.3.0:../../net/py-twisted

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/shtoom/ui/gnomeui/shtoom.glade \
		${DESTDIR}${PREFIX}/${PYSITELIB}/shtoom/ui/gnomeui/shtoom.glade

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
