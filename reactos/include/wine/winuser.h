#ifndef __WINE_WINUSER_H
#define __WINE_WINUSER_H

/*
 * Compatibility header
 */

#include <w32api.h>
#include <wingdi.h>
#include_next <winuser.h>

#define WS_EX_TRAYWINDOW 0x80000000L
#define DCX_USESTYLE     0x00010000
#define WS_EX_MANAGED    0x40000000L /* Window managed by the window system */
#define LB_CARETOFF      0x01a4

UINT WINAPI PrivateExtractIconsA(LPCSTR,int,int,int,HICON*,UINT*,UINT,UINT);
UINT WINAPI PrivateExtractIconsW(LPCWSTR,int,int,int,HICON*,UINT*,UINT,UINT);

typedef struct tagCWPSTRUCT *LPCWPSTRUCT;

#define WM_ALTTABACTIVE         0x0029

#ifndef E_PROP_ID_UNSUPPORTED
#define E_PROP_ID_UNSUPPORTED            ((HRESULT)0x80070490)
#endif
#ifndef E_PROP_SET_UNSUPPORTED
#define E_PROP_SET_UNSUPPORTED           ((HRESULT)0x80070492)
#endif

#define MAKEINTATOMA(atom)  ((LPCSTR)((ULONG_PTR)((WORD)(atom))))
#define MAKEINTATOMW(atom)  ((LPCWSTR)((ULONG_PTR)((WORD)(atom))))

#endif /* __WINE_WINUSER_H */
