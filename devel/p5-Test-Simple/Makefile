# $NetBSD: Makefile,v 1.52 2014/04/20 13:44:53 wen Exp $

DISTNAME=		Test-Simple-1.001003
PKGNAME=		p5-${DISTNAME}
SVR4_PKGNAME=		p5tsi
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		rhaen@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-Simple/
COMMENT=		Perl5 module with a simple framework for writing tests
LICENSE=		${PERL5_LICENSE}

CONFLICTS+=		p5-Test-Builder-Tester-[0-9]*

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/Test/Simple/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
