# $NetBSD$
#

DISTNAME=		ecasound-2.4.1
CATEGORIES=		audio
MASTER_SITES=		http://ecasound.seul.org/download/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://ecasound.seul.org/
COMMENT=		Multitrack audio processor

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_NCURSES=		yes # term.h, setupterm(), ...

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
