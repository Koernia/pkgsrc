# $NetBSD: Makefile,v 1.24 2014/04/10 06:21:32 obache Exp $

DISTNAME=	superkaramba-${_KDE_VERSION}
PKGREVISION=	2
CATEGORIES=	misc
COMMENT=	KDE desktop widgets

PYTHON_VERSIONS_INCOMPATIBLE=  33 # not yet ported as of 4.11.3

.include "../../meta-pkgs/kde4/Makefile.kde4"

#make sure cmake picks up the same Python version as pkgsrc
CMAKE_ARGS+=	-DPYTHON_EXECUTABLE:FILEPATH=${PYTHONBIN}

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/qimageblitz/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
