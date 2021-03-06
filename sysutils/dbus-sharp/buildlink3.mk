# $NetBSD: buildlink3.mk,v 1.4 2014/04/09 07:27:01 obache Exp $

BUILDLINK_TREE+=	dbus-sharp

.if !defined(DBUS_SHARP_BUILDLINK3_MK)
DBUS_SHARP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.dbus-sharp+=	dbus-sharp>=0.7.0
BUILDLINK_ABI_DEPENDS.dbus-sharp?=	dbus-sharp>=0.7.0nb4
BUILDLINK_PKGSRCDIR.dbus-sharp?=	../../sysutils/dbus-sharp

.include "../../lang/mono2/buildlink3.mk"
.endif	# DBUS_SHARP_BUILDLINK3_MK

BUILDLINK_TREE+=	-dbus-sharp
