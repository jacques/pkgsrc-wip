# $NetBSD$
#

DISTNAME=	AI-NeuralNet-Simple-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	perl5 misc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=AI/}

MAINTAINER=	athaba@users.sourceforge.net
HOMEPAGE=	http://search.cpan.org/~ovid/AI-NeuralNet-Simple-0.11/
COMMENT=	Easy to use backprop neural net
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=user-destdir

DEPENDS+=	p5-Log-Agent>=0.208:../../devel/p5-Log-Agent
DEPENDS+=	p5-Sub-Uplevel>=0:../../devel/p5-Sub-Uplevel
DEPENDS+=	p5-Test-Exception>=0.15:../../devel/p5-Test-Exception

PERL5_PACKLIST=	auto/AI/NeuralNet/Simple/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
