# $NetBSD$

DISTNAME=	siproxd-0.8.1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=siproxd/}

MAINTAINER=	schwarz@NetBSD.org
HOMEPAGE=	http://siproxd.sourceforge.net/
COMMENT=	Session Initiation Protocol Application-Level Gateway (SIP ALG)
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	YES
USE_TOOLS+=	gmake

CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}
CONFIGURE_ARGS+=	--with-libosip-prefix=${BUILDLINK_PREFIX.libosip2}

EGDIR=		${PREFIX}/share/examples/siproxd

CONF_FILES=	${EGDIR}/siproxd.conf.example ${PKG_SYSCONFDIR}/siproxd.conf \
		${EGDIR}/siproxd_passwd.cfg \
		${PKG_SYSCONFDIR}/siproxd_passwd.cfg

INSTALLATION_DIRS=	sbin share/examples/siproxd

.include "../../mk/pthread.buildlink3.mk"
PTHREAD_LIBS+=	${PTHREAD_LDFLAGS}
# needed since siproxd's configure does not check for PTHREAD_LDFLAGS

.include "../../devel/libosip/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
