# $NetBSD$
#

DISTNAME=	TaskCoach-1.2.31
PKGNAME=	${DISTNAME:tl}
CATEGORIES=	time
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taskcoach/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://www.taskcoach.org/
COMMENT=	Task Coach is a simple open source todo manager
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

DEPENDS+=	${PYPKGPREFIX}-wxWidgets>=2.8.9.1:../../x11/py-wxWidgets

PYDISTUTILSPKG=	YES

SUBST_CLASSES+=		fix-cdll
SUBST_STAGE.fix-cdll=	pre-configure
SUBST_FILES.fix-cdll=	taskcoachlib/powermgt/xsm.py
SUBST_SED.fix-cdll=	-e 's,libSM.so.6,${X11BASE}/lib/libSM.so,'
SUBST_SED.fix-cdll+=	-e 's,libICE.so.6,${X11BASE}/lib/libICE.so,'

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
