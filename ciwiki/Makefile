# $NetBSD$
#

DISTNAME=	ciwiki-1.7.0.1
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ciwiki/}

MAINTAINER=	ryo_on@yk.rim.or.jp
HOMEPAGE=	http://ciwiki.sourceforge.net/
COMMENT=	CiWiki is a small and simple WikiWikiWeb implementation written in C

LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

#WRKSRC=		${WRKDIR}/ciwiki-1.6.0 # 1.6.1 archive is broken.

DOCSDIR=	${PREFIX}/share/doc/${PKGBASE}
SCRIPTSDIR=	${PREFIX}/share/${PKGBASE}

INSTALLATION_DIRS=	bin \
			${DOCSDIR} \
			${DOCSDIR}/docs \
			${SCRIPTSDIR}/scripts \
			${PKGMANDIR}/man1

DOCFILES=	AUTHORS \
		COPYING \
		ChangeLog \
		INSTALL \
		NEWS \
		README \

NEWDOCFILES=	BUGS \
		CIWIKI_ON_USBDRIVE \
		FAQ_HELP \
		FIRST \
		FLASH_PLAYER \
		FORMS \
		HOWTOLOGIN \
		IMAGES_and_ZIP \
		MAILINGCODE \
		MYSERVER \
		PAGESTYLES \
		README \
		index.html \
		ciwiki.png

SCRIPTFILES=	activity.sh \
		backup_wiki.sh \
		inet_adr.sh \
		inetadress.sh \
		kill_wiki.sh \
		listnewuser.sh \
		notifynewuser.sh

MANFILES1=	didiwiki.1

CONFFILES=	didiwiki.conf

GNU_CONFIGURE=	yes

post-install:
.for filename in ${DOCFILES} ${CONFFILES}
	${INSTALL_DATA} ${WRKSRC}/${filename} ${DESTDIR}${DOCSDIR}
.endfor
.for filename in ${NEWDOCFILES}
	${INSTALL_DATA} ${WRKSRC}/docs/${filename} ${DESTDIR}${DOCSDIR}/docs
.endfor
	${INSTALL_MAN} ${WRKSRC}/${MANFILES1} ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
.for filename in ${SCRIPTFILES}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/${filename} ${DESTDIR}/${SCRIPTSDIR}/scripts
.endfor

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
