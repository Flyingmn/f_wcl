dnl $Id$
dnl config.m4 for extension f_wcl

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(f_wcl, for f_wcl support,
dnl Make sure that the comment is aligned:
dnl [  --with-f_wcl             Include f_wcl support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(f_wcl, whether to enable f_wcl support,
dnl Make sure that the comment is aligned:
[  --enable-f_wcl           Enable f_wcl support])

if test "$PHP_F_WCL" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-f_wcl -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/f_wcl.h"  # you most likely want to change this
  dnl if test -r $PHP_F_WCL/$SEARCH_FOR; then # path given as parameter
  dnl   F_WCL_DIR=$PHP_F_WCL
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for f_wcl files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       F_WCL_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$F_WCL_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the f_wcl distribution])
  dnl fi

  dnl # --with-f_wcl -> add include path
  dnl PHP_ADD_INCLUDE($F_WCL_DIR/include)

  dnl # --with-f_wcl -> check for lib and symbol presence
  dnl LIBNAME=f_wcl # you may want to change this
  dnl LIBSYMBOL=f_wcl # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $F_WCL_DIR/$PHP_LIBDIR, F_WCL_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_F_WCLLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong f_wcl lib version or lib not found])
  dnl ],[
  dnl   -L$F_WCL_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(F_WCL_SHARED_LIBADD)

  PHP_NEW_EXTENSION(f_wcl, f_wcl.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
