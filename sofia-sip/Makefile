# $NetBSD$
#

DISTNAME=	sofia-sip-1.12.11
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sofia-sip/}

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://sofia-sip.sourceforge.net/
COMMENT=	Open-source SIP User-Agent library

LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	pkg-config

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_LANGUAGES=	c

.include "../../devel/glib2/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
