# $NetBSD: Makefile,v 1.61 2014/05/05 00:48:32 ryoon Exp $

DISTNAME=	Gtk2-1.249
PKGNAME=	${DISTNAME:C:Gtk2:p5-gtk2:}
PKGREVISION=	1
CATEGORIES=	x11 perl5
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk2-perl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtk2-perl.sourceforge.net/
COMMENT=	Perl bindings for GTK+ 2.0
LICENSE=	gnu-lgpl-v2.1

MAKE_JOBS_SAFE=		no

DEPENDS+=	p5-ExtUtils-Depends>=0.300:../../devel/p5-ExtUtils-Depends
DEPENDS+=	p5-ExtUtils-PkgConfig>=1.03:../../devel/p5-ExtUtils-PkgConfig

USE_TOOLS+=	pkg-config

PERL5_PACKLIST=	auto/Gtk2/.packlist

BUILDLINK_API_DEPENDS.p5-glib2+=	p5-glib2>=1.280
BUILDLINK_API_DEPENDS.p5-cairo+=	p5-cairo>=1.000
BUILDLINK_API_DEPENDS.p5-pango+=	p5-pango>=1.220

.include "../../devel/p5-glib2/buildlink3.mk"
.include "../../graphics/p5-cairo/buildlink3.mk"
.include "../../devel/p5-pango/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
