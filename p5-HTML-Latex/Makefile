# $NetBSD$

.include "Makefile.common"

PKGNAME=		p5-HTML-Latex-${HTML2LATEX_VERSION}
WRKSRC=			${WRKDIR}/${DISTNAME}/HTML
CATEGORIES=		print www perl5

COMMENT=		Perl5 module for converting HTML to LaTeX

DEPENDS+=		p5-XML-Simple-[0-9]*:../../textproc/p5-XML-Simple
DEPENDS+=		p5-HTML-Tree-[0-9]*:../../www/p5-HTML-Tree

REPLACE_PERL+=		Latex.pm
PERL5_PACKLIST=		auto/HTML/Latex/.packlist

# LWP::Simple (called libwwwperl too)
# URI (libwww or Bundle::LWP)
# Image::Magik

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
