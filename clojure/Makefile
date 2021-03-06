# $NetBSD$
#

DISTNAME=	clojure-1.2.1
CATEGORIES=	lang
MASTER_SITES=	https://github.com/downloads/clojure/clojure/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/downloads/clojure/clojure/
COMMENT=	Dynamic programming language that targets the Java VM
#LICENSE=	eclipse-1.0 # http://opensource.org/licenses/eclipse-1.0.php

PKG_DESTDIR_SUPPORT=	user-destdir

# Force using "curl" for fetching the distribution file. It is only available
# over HTTPS and "curl" is the only fetch program which always supports HTTPS.
FETCH_USING=	curl

NO_BUILD=	yes
USE_JAVA=	run
USE_JAVA2=	1.5
USE_LANGUAGES=	# none
USE_TOOLS+=	pax

INSTALLATION_DIRS=	bin \
			share/doc/${PKGNAME_NOREV} \
			lib/java/clojure \
			share/examples/${PKGNAME_NOREV}

CLOJURE_DOCS=	changes.txt epl-v10.html readme.txt \
		doc/clojure/pprint/CommonLispFormat.markdown \
		doc/clojure/pprint/PrettyPrinting.markdown

SUBST_CLASSES+=		java
SUBST_STAGE.java=	pre-install
SUBST_MESSAGE.java=	Set Java
SUBST_FILES.java=	clj.sh
SUBST_SED.java=		-e 's,@JAVA_HOME@,${PKG_JAVA_HOME},g'

pre-patch:
	${INSTALL_DATA} ${FILESDIR}/clj.sh ${WRKSRC}

do-install:
	${INSTALL_DATA} ${WRKSRC}/clojure.jar \
		${DESTDIR}${PREFIX}/lib/java/clojure

	cd ${WRKSRC}/test/clojure && pax -rw -pmp test_clojure \
		${DESTDIR}${PREFIX}/share/examples/${PKGNAME_NOREV}/
	${INSTALL_DATA} ${WRKSRC}/test/clojure/test_clojure.clj \
		${DESTDIR}${PREFIX}/share/examples/${PKGNAME_NOREV}

.for f in ${CLOJURE_DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} \
		${DESTDIR}${PREFIX}/share/doc/${PKGNAME_NOREV}
.endfor

	${INSTALL_SCRIPT} ${WRKSRC}/clj.sh ${DESTDIR}${PREFIX}/bin/clj

.include "../../mk/java-env.mk"
.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
