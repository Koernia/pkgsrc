# $NetBSD: Makefile,v 1.6 2013/05/31 12:41:00 wiz Exp $
#

DISTNAME=	Padre-Plugin-XS-0.02
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	editors perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Padre/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Padre-Plugin-XS/
COMMENT=	Padre support for perl XS (and perlapi)
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Padre>=0.49:../../editors/p5-Padre
DEPENDS+=	p5-Perl-APIReference>=0.04:../../devel/p5-Perl-APIReference

PERL5_PACKLIST=		auto/Padre/Plugin/XS/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

#pre-configure:
#	cd ${WRKSRC} && find `pwd` -name "*.orig" -type f | xargs rm

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
