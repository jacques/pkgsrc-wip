# $NetBSD$

DISTNAME=	xbnbt-81b.3.5
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xbnbt/}
EXTRACT_SUFX=	.zip

MAINTAINER=	loic-hoguin@users.sourceforge.net
HOMEPAGE=	http://xbnbt.sourceforge.net/
COMMENT=	Alternative BitTorrent tracker written in C++

WRKSRC=		${WRKDIR}/xbnbt/bnbt/src

USE_LANGUAGES=	c++
USE_TOOLS+=	gmake pax

BUILD_TARGET+=	bnbt

INSTALLATION_DIRS+=	sbin share/doc/xbnbt share/examples/xbnbt share/xbnbt

post-extract:
	mv ${WRKDIR:Q}/"Copy of xbnbt-81b.3" ${WRKDIR:Q}/xbnbt
	mv ${WRKDIR:Q}/xbnbt/bnbt/examples/"XBNBT IPB2 Mod" \
		${WRKDIR:Q}/xbnbt/bnbt/examples/ipb2_mod

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bnbt ${PREFIX}/sbin
	cd ${WRKDIR}/xbnbt/bnbt/doc && pax -rwpam . \
		${PREFIX}/share/doc/xbnbt
	cd ${WRKDIR}/xbnbt/bnbt/examples && pax -rwpam . \
		${PREFIX}/share/examples/xbnbt
	cd ${WRKDIR}/xbnbt/bnbt/public_http/xbnbt && pax -rwpam . \
		${PREFIX}/share/xbnbt

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
