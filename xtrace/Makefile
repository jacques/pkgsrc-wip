# $NetBSD: Makefile,v 1.11 2005/12/05 20:50:09 rillig Exp $

DISTNAME=	xtrace_0.5.orig
PKGNAME=	${DISTNAME:S/_/-/:S/.orig//}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/x/xtrace/}

MAINTAINER=	reed@reedmedia.net
# could not find real homepage
#HOMEPAGE=	http://packages.qa.debian.org/x/xtrace.html
COMMENT=	Trace communication between X11 client and server

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

.include "../../mk/bsd.pkg.mk"
