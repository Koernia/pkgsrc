# $NetBSD: Makefile,v 1.41 2014/05/04 13:10:47 rodent Exp $

VERS=			4.5.18
DISTNAME=		eric4-${VERS}
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=eric-ide/}
EXTRACT_USING=		gtar

MAINTAINER=		helgoman@users.sourceforge.net
HOMEPAGE=		http://eric-ide.python-projects.org/index.html
COMMENT=		Python - IDE
LICENSE=		gnu-gpl-v3

NO_BUILD=				yes

PY_PATCHPLIST=			yes
PYTHON_VERSIONS_INCOMPATIBLE=	33 # not yet ported as of 4.5.18

CONFIGURE_ARGS+=		-b ${PREFIX}/bin
CONFIGURE_ARGS+=		-d ${PREFIX}/${PYSITELIB}
CONFIGURE_ARGS+=		-a ${PREFIX}/qt4/qsci/api
.include "../../mk/bsd.prefs.mk"
.if defined(DESTDIR) && !empty(DESTDIR)
CONFIGURE_ARGS+=		-i ${DESTDIR}
.endif

do-install:
	(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${PYTHONBIN} install.py ${CONFIGURE_ARGS})

.include "options.mk"
.include "../../lang/python/extension.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../x11/qt4-qscintilla/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/py-qt4-qscintilla/buildlink3.mk"
BUILDLINK_API_DEPENDS.pyxml+=	${PYPKGPREFIX}-xml>=0.8.4nb3
.include "../../mk/bsd.pkg.mk"
