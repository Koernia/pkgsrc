# $NetBSD: Makefile,v 1.25 2012/10/23 18:16:36 asau Exp $

DISTNAME=	mcrypt-2.6.8
PKGREVISION=	2
CATEGORIES=	security devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcrypt/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mcrypt.sourceforge.net/
COMMENT=	Replacement to crypt(1), supports many crypto algorithms

USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
CONFIGURE_ENV+=		ac_cv_path_GZIP="gzip"
CONFIGURE_ENV+=		ac_cv_path_BZIP2="bzip2"

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/libmcrypt/buildlink3.mk"
.include "../../security/mhash/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
