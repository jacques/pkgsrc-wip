# $NetBSD: Makefile,v 1.21 2010/12/11 12:09:23 abs Exp $
#

DISTNAME=	munin-${VER}
PKGNAME=	munin-node-${VER}
VER=		1.4.5
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=munin/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://munin-monitoring.org/
COMMENT=	System monitoring tool, client version
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Net-Server>=0:../../net/p5-Net-Server
DEPENDS+=	munin-common>=1.4:../../wip/munin-common
#DEPENDS+=	munin-doc>=1.3.1:../../sysutils/munin-doc

.include "../../mk/bsd.prefs.mk"

USE_TOOLS+=	bash:run perl:run tar
USE_TOOLS+=	gmake
USE_PKGINSTALL=	YES

WRKSRC=		${WRKDIR}/${DISTNAME}

PLIST_VARS+=	smartos not-smartos
.if !empty(SUNOS_FLAVOR:Mjoyent)
PLIST.smartos=		yes
.else
PLIST.not-smartos=	yes
.endif

PKG_GROUPS_VARS+=	MUNIN_GROUP
PKG_USERS_VARS+=	MUNIN_USER
USERGROUP_PHASE=	pre-install

MUNIN_GROUP?=	munin
MUNIN_USER?=	munin

PKG_GROUPS=	${MUNIN_GROUP}
PKG_USERS=	${MUNIN_USER}:${MUNIN_GROUP}
PKG_GECOS.${MUNIN_USER}=	Munin user
PKG_SYSCONFSUBDIR?=	munin

REPLACE_BASH+=	plugins/node.d/multigraph_tester.in

REPLACE_PERL+=	node/sbin/munin-node
REPLACE_PERL+=	node/sbin/munin-node-configure
REPLACE_PERL+=	node/sbin/munin-run
REPLACE_PERL+=	node/node.d/*.in
REPLACE_PERL+=	plugins/node.d/slony_lag_.in

STATEDIR?=	${VARBASE}/munin/plugin-state
MUNIN_RUN?=	${VARBASE}/run/munin

MAKE_DIRS=	${VARBASE}/munin
MAKE_DIRS+=	${VARBASE}/run/munin
MAKE_DIRS+=	${VARBASE}/log/munin
MAKE_DIRS+=	${STATEDIR}

OWN_DIRS=	${VARBASE}/munin
OWN_DIRS+=	${VARBASE}/run/munin
OWN_DIRS+=	${VARBASE}/log/munin
OWN_DIRS+=	${VARBASE}/munin/plugin-state

OWN_DIRS_PERMS+=${VARBASE}/munin ${MUNIN_USER} ${MUNIN_GROUP} 0755
OWN_DIRS_PERMS+=${VARBASE}/run/munin ${MUNIN_USER} ${MUNIN_GROUP} 0755
OWN_DIRS_PERMS+=${VARBASE}/log/munin ${MUNIN_USER} ${MUNIN_GROUP} 0755
OWN_DIRS_PERMS+=${VARBASE}/munin/plugin-state ${MUNIN_USER} ${MUNIN_GROUP} 0775

INSTALL_TARGET=	install-node install-node-plugins

BUILD_TARGET=	build

MAKE_ENV+=	PREFIX=${PREFIX}
MAKE_ENV+=	CONFDIR=${PKG_SYSCONFDIR}
MAKE_ENV+=	MUNIN_USER=${MUNIN_USER}
MAKE_ENV+=	MUNIN_GROUP=${MUNIN_GROUP}
MAKE_ENV+=	PERL5=${PERL5:Q}
MAKE_ENV+=	PYTHON=${PYTHONBIN:Q}
MAKE_ENV+=	RUBY=${RUBY:Q}

FILES_SUBST+=	PERL=${PERL5:Q}
FILES_SUBST+=	PKG_SYSCONFDIR=${PKG_SYSCONFDIR}
FILES_SUBST+=	STATEDIR=${STATEDIR}
FILES_SUBST+=	MUNIN_RUN=${MUNIN_RUN:Q}
FILES_SUBST+=	MUNIN_USER=${MUNIN_USER:Q}
FILES_SUBST+=	MUNIN_GROUP=${MUNIN_GROUP:Q}

MESSAGE_SUBST+=	VARBASE=${VARBASE:Q}

BUILD_DEFS+=	VARBASE

RCD_SCRIPTS+=	munin-node

EGDIR=		${PREFIX}/share/examples/munin

CONF_FILES+=	${EGDIR}/munin-node.conf ${PKG_SYSCONFDIR}/munin-node.conf
INSTALLATION_DIRS+=	${EGDIR}

pre-configure:
	cd ${FILESDIR}; ${TAR} cf - . | (cd ${WRKSRC}; ${TAR} xfp -)

post-install:
	${INSTALL_DATA} ${WRKSRC}/build/node/munin-node.conf ${DESTDIR}${EGDIR}

.include "../../lang/python/application.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"
