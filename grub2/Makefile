# $NetBSD$
#

DISTNAME=		grub-1.99
PKGNAME=		grub2-1.99
CATEGORIES=		sysutils
MASTER_SITES=		ftp://ftp.gnu.org/gnu/grub/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=		gsutre@NetBSD.org
HOMEPAGE=		http://www.gnu.org/software/grub/
COMMENT=		GRand Unified Bootloader, version 2
LICENSE=		gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

ONLY_FOR_PLATFORM=	*-*-i386 *-*-x86_64

USE_TOOLS+=		gmake bison

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--program-transform-name='s,grub-,grub2-,'
CONFIGURE_ARGS+=	--disable-efiemu
CONFIGURE_ARGS+=	--disable-grub-emu-usb
CONFIGURE_ARGS+=	--disable-grub-emu-sdl
CONFIGURE_ARGS+=	--disable-grub-emu-pci
INFO_FILES=		yes
USE_PKGLOCALEDIR=	yes

.include "../../mk/bsd.prefs.mk"

#
# Requirements: GCC >= 4.1.3, Flex >= 2.5.35 and help2man.
#
GCC_REQD=		4.1.3
BUILD_DEPENDS+=		flex>=2.5.35:../../devel/flex
BUILD_DEPENDS+=		help2man>=1.36:../../converters/help2man

#
# The configure script sets the variables `target_cpu' and `platform', which
# are used for the location of the library directory.  The following mimics
# the configure script's behavior for i386 and x86_64.
#
GRUB_TARGET_CPU=	${MACHINE_ARCH}
.if ${LOWER_VENDOR} == "apple"
GRUB_PLATFORM=		efi
.else
GRUB_PLATFORM=		pc
.endif
.if ${GRUB_TARGET_CPU} == "x86_64" && ${GRUB_PLATFORM} == "pc"
GRUB_TARGET_CPU=	i386
.endif
PLIST_SUBST+=		GRUB_TARGET_CPU=${GRUB_TARGET_CPU}
PLIST_SUBST+=		GRUB_PLATFORM=${GRUB_PLATFORM}

#
# Configuration files.
#
PKG_SYSCONFSUBDIR=	${PKGBASE}
EGDIR=			${PREFIX}/share/examples/${PKGBASE}
INSTALL_MAKE_FLAGS+=	grubconfdir=${EGDIR}
INSTALL_MAKE_FLAGS+=	bashcompletiondir=${EGDIR}
INSTALL_MAKE_FLAGS+=	bash_completion_script=grub2-bash-completion.sh

EGFILES=		00_header 05_pkgsrc_theme 30_os-prober 40_custom 41_custom
.if ${OPSYS} == "FreeBSD"
EGFILES+=		10_kfreebsd
.elif ${OPSYS} == "Linux"
EGFILES+=		10_linux
.elif ${OPSYS} == "NetBSD"
EGFILES+=		10_netbsd
.endif
.for file in ${EGFILES}
CONF_FILES_PERMS+=	${EGDIR}/${file} ${PKG_SYSCONFDIR}/${file} ${ROOT_USER} ${ROOT_GROUP} 0755
.endfor
CONF_FILES+=		${EGDIR}/README ${PKG_SYSCONFDIR}/README
CONF_FILES+=		${EGDIR}/default.conf.sample ${PKG_SYSCONFDIR}/default.conf

post-install: do-install-custom-config

.PHONY: do-install-custom-config
do-install-custom-config:
	${INSTALL_DATA} ${FILESDIR}/default.conf ${DESTDIR}${EGDIR}/default.conf.sample
	${INSTALL_SCRIPT} ${FILESDIR}/05_pkgsrc_theme ${DESTDIR}${EGDIR}/05_pkgsrc_theme

#
# Force installation of all OS configuration scripts in ${EGDIR}.
#
SUBST_CLASSES+=			fix-os-conf
SUBST_STAGE.fix-os-conf=	post-patch
SUBST_MESSAGE.fix-os-conf=	Fixing installation of OS configuration scripts.
SUBST_FILES.fix-os-conf=	Makefile.in
SUBST_SED.fix-os-conf=		-e 's,^@COND_HOST_WINDOWS_TRUE@,,g'
SUBST_SED.fix-os-conf+=		-e 's,^@COND_HOST_HURD_TRUE@,,g'
SUBST_SED.fix-os-conf+=		-e 's,^@COND_HOST_KFREEBSD_TRUE@,,g'
SUBST_SED.fix-os-conf+=		-e 's,^@COND_HOST_NETBSD_TRUE@,,g'
SUBST_SED.fix-os-conf+=		-e 's,^@COND_HOST_LINUX_TRUE@,,g'

#
# Adjust the configuration paths in scripts.
#
SUBST_CLASSES+=			fix-paths-1
SUBST_STAGE.fix-paths-1=	post-patch
SUBST_MESSAGE.fix-paths-1=	Fixing configuration paths in scripts.
SUBST_FILES.fix-paths-1=	util/grub-install.in util/grub-mkconfig.in
SUBST_SED.fix-paths-1=		-e 's,\$${sysconfdir}/grub.d,\$${sysconfdir},g'
SUBST_SED.fix-paths-1+=		-e 's,\$${sysconfdir}/default/grub,\$${sysconfdir}/default.conf,g'

#
# Adjust the package name (GRUB2) in configure.
#
SUBST_CLASSES+=			fix-name-1
SUBST_STAGE.fix-name-1=		post-patch
SUBST_MESSAGE.fix-name-1=	Fixing package name in configure.
SUBST_FILES.fix-name-1=		configure
SUBST_SED.fix-name-1=		-e 's,^\([gG][rR][uU][bB]\)\([ '\'']\),\12\2,g'
SUBST_SED.fix-name-1+=		-e 's,\([ '\'']\)\([gG][rR][uU][bB]\)\([ '\'']\),\1\22\3,g'

#
# Fix the command names in man pages.
#
SUBST_CLASSES+=			fix-name-2
SUBST_STAGE.fix-name-2=		post-build
SUBST_MESSAGE.fix-name-2=	Fixing command names in man pages.
SUBST_FILES.fix-name-2=		grub-*.[1-9]
SUBST_SED.fix-name-2=		-e '\,^\.TH , { s,GRUB-,GRUB2-,g ; s,grub-,grub2-,g ; }'
SUBST_SED.fix-name-2+=		-e '\,^\.SH NAME, { n ; s,^grub-,grub2-,g ; }'
SUBST_SED.fix-name-2+=		-e '\,^\.SH SYNOPSIS, { n ; s,\.B grub-,\.B grub2-,g ; }'

#
# Adjust the name of the generated info files.
#
SUBST_CLASSES+=			fix-name-3
SUBST_STAGE.fix-name-3=		post-patch
SUBST_MESSAGE.fix-name-3=	Fixing names of info files.
SUBST_FILES.fix-name-3=		docs/Makefile.in
SUBST_SED.fix-name-3=		-e 's,grub\.info,grub2\.info,g'
SUBST_SED.fix-name-3+=		-e 's,grub-dev\.info,grub2-dev\.info,g'

post-patch: do-move-info

.PHONY: do-move-info
do-move-info:
	${MV} ${WRKSRC}/docs/grub.info ${WRKSRC}/docs/grub2.info
	${MV} ${WRKSRC}/docs/grub-dev.info ${WRKSRC}/docs/grub2-dev.info

#
# Includes.
#
.include "options.mk"

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
