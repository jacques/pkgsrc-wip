# $NetBSD$
#

DISTNAME=	CGI-Application-Plugin-ViewCode-1.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/W/WO/WONKO/
COMMENT=	View the source of the running application


DEPENDS+=	p5-Syntax-Highlight-Perl-Improved>=1.01:../../wip/p5-Syntax-Highlight-Perl-Improved
DEPENDS+=	p5-Test-Simple>=0.94:../../devel/p5-Test-Simple
DEPENDS+=	p5-CGI-Application>=4:../../www/p5-CGI-Application
DEPENDS+=	p5-Test-LongString>=0.11:../../devel/p5-Test-LongString
DEPENDS+=	p5-Pod-Xhtml>=1:../../wip/p5-Pod-Xhtml

PKG_INSTALLATION_TYPES= overwrite pkgviews
PKG_DESTDIR_SUPPORT=    user-destdir

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/CGI/Application/Plugin/ViewCode/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
