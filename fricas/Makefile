# $NetBSD$

PKGNAME=		fricas-1.1.99
DISTNAME=		${PKGNAME}-full
CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fricas/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		asau@inbox.ru
HOMEPAGE=		http://fricas.sourceforge.net/
COMMENT=		FriCAS is a fork of the Axiom computer algebra system
LICENSE=		modified-bsd

BUILD_DEPENDS+=		noweb-[0-9]*:../../devel/noweb

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}

GNU_CONFIGURE=		yes
USE_TOOLS+=		gmake

# Problems:
# 1. Building X11 interfaces requires X server running.
# We should run Xvfb for that stage.
# 4. Emacs files should go into "site-lisp".
# 5. view3D hangs sometimes (?), killing it doesn't affect binary package.

#INSTALLATION_DIRS=	lib/fricas/emacs

.include "options.mk"

.if !empty(PKG_OPTIONS:Mclisp)
INSTALL_UNSTRIPPED=	yes	# don't strip AXIOMsys, it breaks FFI
.endif

.if !empty(PKG_OPTIONS:Mx11)
post-build:
# This should start Xvfb temporarily (1024x768x24 resolution recommended):
	cd ${WRKSRC}/src/paste && ${MAKE_PROGRAM} gphts
.endif

# Get it from Subversion repository:
SVN_REPOSITORIES=	fricas
SVN_ROOT.fricas=	http://fricas.svn.sourceforge.net/svnroot/fricas/trunk
SVN_MODULE.fricas=	fricas

WRKSRC=			${WRKDIR}/fricas

.include "../mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
