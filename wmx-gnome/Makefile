# $NetBSD: Makefile,v 1.11 2010/02/12 19:59:29 joerg Exp $

PKGNAME=	wmx-gnome-${WMX_VERS}
CATEGORIES+=	gnome
COMMENT=	Another X11 window manager based on wm2, with GNOME compliance

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../wip/wmx/Makefile.common"

CPPFLAGS+=	-DCONFIG_GNOME_BUTTON_COMPLIANCE=True
CXXFLAGS+=	-DCONFIG_GNOME_BUTTON_COMPLIANCE=True

.include "../../mk/bsd.pkg.mk"
