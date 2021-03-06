# $NetBSD: options.mk,v 1.2 2011/06/17 11:59:57 obache Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.dwm
PKG_SUPPORTED_OPTIONS=	xinerama
PKG_SUGGESTED_OPTIONS=	xinerama

.include "../../mk/bsd.options.mk"

#
# Xinerama support
#
# If we don't want the Xinerama support we delete XINERAMALIBS and
# XINERAMAFLAGS lines, otherwise the Xinerama support is the default.
#
.if !empty(PKG_OPTIONS:Mxinerama)
.  include "../../x11/libXinerama/buildlink3.mk"
.else
SUBST_CLASSES+=		options
SUBST_STAGE.options=	pre-build
SUBST_MESSAGE.options=	Toggle the Xinerama support
SUBST_FILES.options=	config.mk
SUBST_SED.options+=	-e '/^XINERAMA/d'
.  include "../../x11/libX11/buildlink3.mk"
.endif
