# $NetBSD$
#

DISTNAME=	Sys-Syslog-0.29
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/S/SA/SAPER/}

MAINTAINER=	evaldo@gardenali.biz
#HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/S/SA/SAPER/
HOMEPAGE=	http://search.cpan.org/dist/Sys-Syslog/
COMMENT=	Perl interface to the UNIX syslog(3) calls
LICENSE=        ${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-XSLoader>=0:../../devel/p5-XSLoader

PERL5_PACKLIST=	auto/Sys/Syslog/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
