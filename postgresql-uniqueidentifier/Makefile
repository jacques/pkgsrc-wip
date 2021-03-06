# $NetBSD$
#

DISTNAME=		uniqueidentifier-0.2
PKGNAME=		postgresql-${DISTNAME}
CATEGORIES=		databases
MASTER_SITES=		ftp://gborg.postgresql.org/pub/uniqueidentifier/stable/ \
			${PGSQL_MASTER_SITES}
DISTFILES=		uniqueidentifier-0.2.tar.gz ${PGSQL_DISTFILES}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://gborg.postgresql.org/project/uniqueidentifier/projdisplay.php
COMMENT=		Allows PostgreSQL databases to use Global Unique Identifier (GUID)

DEPENDS=		postgresql82-server>=8.2:../../databases/postgresql82-server

WRKSRC=			${PGSQL_CONTRIBSRC}/${DISTNAME:S/-0.2//}
USE_TOOLS+=		gmake

post-extract: postgresql-post-extract
	${MV} ${WRKDIR}/uniqueidentifier ${PGSQL_CONTRIBSRC}

do-configure: postgresql-do-configure

PG_UID_DIR=	${PREFIX}/share/uniqueidentifier

do-install:
	${INSTALL_DATA_DIR} ${PG_UID_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.uniqueidentifier ${PG_UID_DIR}/README
	${INSTALL_DATA} ${WRKSRC}/uniqueidentifier.sql ${PG_UID_DIR}/uniqueidentifier.sql
	${INSTALL_PROGRAM} ${WRKSRC}/uniqueidentifier.so ${PREFIX}/lib/postgresql/uniqueidentifier.so

.include "../../wip/mk/postgresql.mk"
.include "../../wip/libuuid/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
