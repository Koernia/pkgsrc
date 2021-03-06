$NetBSD: patch-dbus_dbus-sysdeps-unix.c,v 1.1 2014/04/24 09:40:08 wiz Exp $

On Linux, poll accepts any negative value as infinity.
On at least FreeBSD and NetBSD, only -1 is acceptable.

--- dbus/dbus-sysdeps-unix.c.orig	2014-01-17 16:59:48.000000000 +0000
+++ dbus/dbus-sysdeps-unix.c
@@ -2555,6 +2555,10 @@ _dbus_poll (DBusPollFD *fds,
       _DBUS_STRUCT_OFFSET (DBusPollFD, revents) ==
       _DBUS_STRUCT_OFFSET (struct pollfd, revents))
     {
+      if (timeout_milliseconds < -1)
+      {
+        timeout_milliseconds = -1;
+      }
       return poll ((struct pollfd*) fds,
                    n_fds,
                    timeout_milliseconds);
