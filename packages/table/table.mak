################################################################
#
#
################################################################

.SUFFIXES: .obj .c

PLBASE=D:/Development/pl

CC=cl.exe
COFLAGS=
CFLAGS=/MD $(COFLAGS) -I$(PLBASE)/include /W3 /DWIN32 /nologo
LDFLAGS=/DLL /nologo
LIBS=libpl.lib
LD=link.exe
DOC2TEX=$$HOME/src/xpce/bin/doc2tex
LATEX=latex
RANLIB=ranlib
RM=del

OBJ=		table.obj order.obj error.obj

all:		table.dll

table.dll:	$(OBJ)
		$(LD) /out:$@ $(LDFLAGS) $(OBJ) $(LIBS)

.c.obj:
		$(CC) -c $(CFLAGS) $*.c

clean:
		$(RM) $(OBJ) *.c~ *.h~ table.ncb table.vcp *.dll

distclean:	clean
		$(RM) table.dll

