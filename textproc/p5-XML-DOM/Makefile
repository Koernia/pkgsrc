# $NetBSD: Makefile,v 1.30 2013/05/31 12:42:19 wiz Exp $
#

DISTNAME=	XML-DOM-1.44
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	5
SVR4_PKGNAME=	p5xdo
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	rhaen@NetBSD.org
COMMENT=	Extend XML::Parser to build DOM Level 1 compliant data structure

DEPENDS+=	p5-XML-Parser>=2.30:../../textproc/p5-XML-Parser
DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-libxml-[0-9]*:../../textproc/p5-libxml
DEPENDS+=	p5-XML-RegExp-[0-9]*:../../textproc/p5-XML-RegExp

CONFLICTS+=	p5-libxml-enno-[0-9]*

PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/XML-DOM/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
