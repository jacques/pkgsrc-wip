# $NetBSD: buildlink3.mk,v 1.10 2011/03/09 16:30:44 drochner Exp $

BUILDLINK_TREE+=	kdelibs

.if !defined(KDELIBS_BUILDLINK3_MK)
KDELIBS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.kdelibs+=	kdelibs4>=4.0.0
BUILDLINK_ABI_DEPENDS.kdelibs?=	kdelibs4>=4.5.4nb1
BUILDLINK_PKGSRCDIR.kdelibs?=	../../wip/kdelibs4

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../databases/shared-mime-info/buildlink3.mk"
.include "../../devel/libdbusmenu-qt/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/jasper/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/giflib.buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../wip/phonon/buildlink3.mk"
.include "../../net/mDNSResponder/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/fam.buildlink3.mk"
.include "../../sysutils/strigi/buildlink3.mk"
.include "../../wip/soprano/buildlink3.mk"
.include "../../textproc/aspell/buildlink3.mk"
.include "../../textproc/enchant/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"
.include "../../mk/krb5.buildlink3.mk"
.endif # KDELIBS_BUILDLINK3_MK

BUILDLINK_TREE+=	-kdelibs