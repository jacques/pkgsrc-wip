# $NetBSD: Makefile,v 1.55 2004/10/16 22:27:40 reed Exp $

DISTNAME=	libgeotiff-1.2.2
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.remotesensing.org/pub/geotiff/libgeotiff/

MAINTAINER=	gdt@ir.bbn.com
HOMEPAGE=	http://www.remotesensing.org/geotiff/geotiff.html
COMMENT=	Library and tools for reading and writing GeoTIFF data

GNU_CONFIGURE=	yes

.include "../../geography/proj/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
