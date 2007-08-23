
#include <w32k.h>

#define NDEBUG
#include <debug.h>


BOOL
FASTCALL
DCU_UpdateUserXForms(PDC pDC, ULONG uMask)
{
#if 0
  PDC_ATTR DC_Attr = pDC->pDc_Attr;

  if (!uMask) return FALSE;

  if (!DC_Attr) return FALSE;
  else
  {
    NTSTATUS Status = STATUS_SUCCESS;
    _SEH_TRY
    {
      ProbeForWrite(DC_Attr,
            sizeof(DC_ATTR),
                          1);
    if (uMask & WORLD_XFORM_CHANGED)
      XForm2MatrixS( &DC_Attr->mxWorldToDevice, &pDC->w.xformWorld2Vport);

    if (uMask & DEVICE_TO_WORLD_INVALID)
      XForm2MatrixS( &DC_Attr->mxDevicetoWorld, &pDC->w.xformVport2World);

    if (uMask & WORLD_TO_PAGE_IDENTITY)
      XForm2MatrixS( &DC_Attr->mxWorldToPage, &pDC->w.xformWorld2Wnd);
    }
    _SEH_HANDLE
    {
      Status = _SEH_GetExceptionCode();
    }
    _SEH_END;
    if(!NT_SUCCESS(Status))
    {
      SetLastNtError(Status);
      return FALSE;
    }                                                                                                                                                                      
  }
#endif
  return TRUE;
}


VOID
APIENTRY
NtGdiFlush(VOID)
{
  UNIMPLEMENTED;
}

NTSTATUS
APIENTRY
NtGdiFlushUserBatch(VOID)
{
  NTSTATUS Status = STATUS_SUCCESS;
//  UNIMPLEMENTED;
  return Status;
}

