# $NetBSD$

VERTEX_VERSION=	0.2.0
DISTNAME=	Vertex-${VERTEX_VERSION}
PKGNAME=	${PYPKGPREFIX}-divmod-vertex-${VERTEX_VERSION}
PKGREVISION=	2
CATEGORIES=	python net
MASTER_SITES=	http://milosn.no-ip.org/files/
#MASTER_SITES=	ftp://ftp.osuosl.org/pub/nslu2/sources/
#MASTER_SITES=	http://divmod.org/trac/attachment/wiki/SoftwareReleases/
EXTRACT_SUFX=	.tar.gz

MAINTAINER=         pkgsrc-wip-users@sourceforge.net
HOMEPAGE=	http://divmod.org/trac/wiki/DivmodVertex
COMMENT=	An implementation of the Q2Q protocol

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-OpenSSL>=0.6:../../security/py-OpenSSL
DEPENDS+=	${PYPKGPREFIX}-twisted>=2.4.0:../../net/py-twisted
DEPENDS+=	${PYPKGPREFIX}-divmod-epsilon>=0.5.0:../../wip/py-divmod-epsilon

PYDISTUTILSPKG=		yes
PYTHON_VERSIONS_ACCEPTED=	26 25

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
