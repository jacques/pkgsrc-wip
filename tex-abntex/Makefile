# $NetBSD$
#
# TODO: it doesn't compile nor install documentation yet.

DISTNAME=	abntex-0.9-beta2
CATEGORIES=	print
MASTER_SITES=	http://codigolivre.org.br/frs/download.php/5337/

MAINTAINER=	silasdb@gmail.com
HOMEPAGE=	http://abntex.codigolivre.org.br/
COMMENT=	Support for ABNT documentation standards

USE_TOOLS+=	gmake

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/abntex-0.9

.include "../../print/kpathsea/texmf.mk"
.include "../../mk/bsd.pkg.mk"
