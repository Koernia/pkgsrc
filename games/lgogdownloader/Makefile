# $NetBSD: Makefile,v 1.1 2014/04/19 08:19:31 wiz Exp $

DISTNAME=	lgogdownloader-2.12
CATEGORIES=	games
MASTER_SITES=	http://sites.google.com/site/gogdownloader/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/Sude-/lgogdownloader
COMMENT=	Download games from GOG
#LICENSE=	dwtfywtpl

BUILD_DEPENDS+=	help2man-[0-9]*:../../converters/help2man

#WRKSRC=		${WRKDIR}/lgogdownloader
USE_LANGUAGES=	c++
USE_TOOLS+=	gmake gunzip
LDFLAGS+=	${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.boost-libs}/lib

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-build:
	cd ${WRKSRC}/man && gunzip lgogdownloader.1
do-install:
	cd ${WRKSRC} && \
		${INSTALL_PROGRAM} bin/Release/lgogdownloader ${DESTDIR}${PREFIX}/bin && \
		${INSTALL_DATA} man/lgogdownloader.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../security/liboauth/buildlink3.mk"
.include "../../textproc/tinyxml/buildlink3.mk"
.include "../../www/htmlcxx/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../misc/rhash/buildlink3.mk"
.include "../../textproc/jsoncpp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
