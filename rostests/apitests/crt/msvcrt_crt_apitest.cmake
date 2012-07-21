
list(APPEND SOURCE_MSVCRT
#    _CrtCheckMemory.c
#    _CrtDbgBreak.c
#    _CrtDbgReport.c
#    _CrtDbgReportV.c
#    _CrtDbgReportW.c
#    _CrtDbgReportWV.c
#    _CrtDoForAllClientObjects.c
#    _CrtDumpMemoryLeaks.c
#    _CrtIsMemoryBlock.c
#    _CrtIsValidHeapPointer.c
#    _CrtIsValidPointer.c
#    _CrtMemCheckpoint.c
#    _CrtMemDifference.c
#    _CrtMemDumpAllObjectsSince.c
#    _CrtMemDumpStatistics.c
#    _CrtReportBlockType.c
#    _CrtSetAllocHook.c
#    _CrtSetBreakAlloc.c
#    _CrtSetDbgBlockType.c
#    _CrtSetDbgFlag.c
#    _CrtSetDumpClient.c
#    _CrtSetReportFile.c
#    _CrtSetReportHook.c
#    _CrtSetReportHook2.c
#    _CrtSetReportMode.c
#    _CxxThrowException.c
#    _Getdays.c
#    _Getmonths.c
#    _Gettnames.c
#    _HUGE.c
#    _Strftime.c
#    _XcptFilter.c
#    __CppXcptFilter.c
#    __CxxCallUnwindDelDtor.c
#    __CxxCallUnwindDtor.c
#    __CxxCallUnwindVecDtor.c
#    __CxxDetectRethrow.c
#    __CxxExceptionFilter.c
#    __CxxQueryExceptionSize.c
#    __CxxRegisterExceptionObject
#    __CxxUnregisterExceptionObject
#    __DestructExceptionObject
#    __RTCastToVoid.c MSVCRT___RTCastToVoid
#    __RTDynamicCast.c MSVCRT___RTDynamicCast
#    __RTtypeid.c MSVCRT___RTtypeid
#    __STRINGTOLD.c
#    ___lc_codepage_func.c
#    ___lc_collate_cp_func.c
#    ___lc_handle_func.c
#    ___mb_cur_max_func.c MSVCRT___mb_cur_max_func
#    ___setlc_active_func.c
#    ___unguarded_readlc_active_add_func.c
#    __argc
#    __argv
#    __badioinfo __badioinfo
#    __crtCompareStringA.c kernel32.CompareStringA
#    __crtCompareStringW.c kernel32.CompareStringW
#    __crtGetLocaleInfoW.c kernel32.GetLocaleInfoW
#    __crtGetStringTypeW.c
#    __crtLCMapStringA.c
#    __crtLCMapStringW
#    __daylight.c __p__daylight
#    __dllonexit.c
#    __doserrno.c
#    __fpecode.c
#    __get_app_type.c
#    __getmainargs.c
#    __initenv
#    __iob_func.c
#    __isascii.c
#    __iscsym.c
#    __iscsymf.c
#    __lc_codepage MSVCRT___lc_codepage
#    __lc_collate # not in XP / 7
#    __lc_collate_cp MSVCRT___lc_collate_cp
#    __lc_handle MSVCRT___lc_handle
#    __lconv_init.c
#    __libm_sse2_acos
#    __libm_sse2_acosf
#    __libm_sse2_asin
#    __libm_sse2_asinf
#    __libm_sse2_atan
#    __libm_sse2_atan2
#    __libm_sse2_atanf
#    __libm_sse2_cos
#    __libm_sse2_cosf
#    __libm_sse2_exp
#    __libm_sse2_expf
#    __libm_sse2_log
#    __libm_sse2_log10
#    __libm_sse2_log10f
#    __libm_sse2_logf
#    __libm_sse2_pow
#    __libm_sse2_powf
#    __libm_sse2_sin
#    __libm_sse2_sinf
#    __libm_sse2_tan
#    __libm_sse2_tanf
#    __mb_cur_max
#    __pctype_func.c
#    __pioinfo
#    __pwctype_func.c
#    __pxcptinfoptrs.c
#    __set_app_type.c
#    __setlc_active
#    __setusermatherr.c
#    __strncnt
#    __threadhandle.c kernel32.GetCurrentThread
#    __threadid.c kernel32.GetCurrentThreadId
#    __toascii.c
#    __uncaught_exception.c
#    __unDName.c
#    __unDNameEx.c
#    __unguarded_readlc_active
#    __wargv __wargv
#    __wcserror.c
#    __wcserror_s.c
#    __wcsncnt
#    __wgetmainargs.c
#    __winitenv
#    _abnormal_termination.c
#    _abs64
#    _access.c
#    _access_s.c
#    _acmdln
#    _aexit_rtn
#    _aligned_free.c
#    _aligned_free_dbg
#    _aligned_malloc.c
#    _aligned_malloc_dbg
#    _aligned_offset_malloc.c
#    _aligned_offset_malloc_dbg
#    _aligned_offset_realloc.c
#    _aligned_offset_realloc_dbg
#    _aligned_realloc.c
#    _aligned_realloc_dbg
#    _amsg_exit.c
#    _assert.c
#    _atodbl.c
#    _atodbl_l
#    _atof_l.c
#    _atoflt_l
#    -ret64 _atoi64.c
#    _atoi64_l
#    _atoi_l
#    _atol_l
#    _atoldbl.c
#    _atoldbl_l
#    _beep.c
#    _beginthread.c
#    _beginthreadex.c
#    _c_exit.c
#    _cabs.c
#    _callnewh.c
#    _calloc_dbg
#    _cexit.c
#    _cgets.c
#    _cgets_s
#    _cgetws
#    _cgetws_s
#    _chdir.c
#    _chdrive.c
#    _chgsign.c
#    _chmod.c
#    _chsize.c
#    _chsize_s
#    _chvalidator
#    _chvalidator_l
#    _clearfp.c
#    _close.c
#    _commit.c
#    _commode
#    _control87.c
#    _controlfp.c
#    _controlfp_s.c
#    _copysign.c
#    _cprintf.c
#    _cprintf_l
#    _cprintf_p
#    _cprintf_p_l
#    _cprintf_s
#    _cprintf_s_l
#    _cputs.c
#    _cputws
#    _creat.c
#    _crtAssertBusy
#    _crtBreakAlloc
#    _crtDbgFlag
#    _cscanf.c
#    _cscanf_l.c
#    _cscanf_s.c
#    _cscanf_s_l.c
#    _ctime32.c
#    _ctime32_s.c
#    _ctime64.c
#    _ctime64_s.c
#    _ctype
#    _cwait.c
#    _cwprintf.c
#    _cwprintf_l
#    _cwprintf_p
#    _cwprintf_p_l
#    _cwprintf_s
#    _cwprintf_s_l
#    _cwscanf.c
#    _cwscanf_l.c
#    _cwscanf_s.c
#    _cwscanf_s_l.c
#    _daylight
#    _difftime32.c
#    _difftime64.c
#    _dstbias
#    _dup.c
#    _dup2.c
#    _ecvt.c
#    _ecvt_s
#    _endthread.c
#    _endthreadex.c
#    _environ
#    _eof.c
#    _errno.c
#    _execl.c
#    _execle.c
#    _execlp.c
#    _execlpe.c
#    _execv.c
#    _execve.c
#    _execvp.c
#    _execvpe.c
#    _exit.c
#    _expand.c
#    _expand_dbg
#    _fcloseall.c
#    _fcvt.c
#    _fcvt_s
#    _fdopen.c
#    _fgetchar.c
#    _fgetwchar.c
#    _filbuf.c
#    _fileinfo
#    _filelength.c
#    -ret64 _filelengthi64.c
#    _fileno.c
#    _findclose.c
#    _findfirst.c
#    _findfirst64.c
#    _findfirsti64.c
#    _findnext.c
#    _findnext64.c
#    _findnexti64.c
#    _finite.c
#    _flsbuf.c
#    _flushall.c
#    _fmode
#    _fpclass.c
#    _fpieee_flt.c
#    _fpreset.c
#    _fprintf_l
#    _fprintf_p
#    _fprintf_p_l
#    _fprintf_s_l
#    _fputchar.c
#    _fputwchar.c
#    _free_dbg
#    _freea
#    _freea_s
#    _fscanf_l
#    _fscanf_l.c
#    _fscanf_s_l.c
#    _fseeki64.c
#    _fsopen.c
#    _fstat.c
#    _fstat64.c
#    _fstati64.c
#    -ret64 _ftelli64.c
#    _ftime.c
#    _ftime32.c
#    _ftime32_s
#    _ftime64.c
#    _ftime64_s
#    _ftol2_sse_excpt
#    _fullpath.c
#    _fullpath_dbg
#    _futime.c
#    _futime32.c
#    _futime64.c
#    _fwprintf_l
#    _fwprintf_p
#    _fwprintf_p_l
#    _fwprintf_s_l
#    _fwscanf_l.c
#    _fwscanf_s_l.c
#    _gcvt.c
#    _gcvt_s
#    _get_doserrno.c
#    _get_environ
#    _get_errno.c
#    _get_fileinfo
#    _get_fmode
#    _get_heap_handle.c
#    _get_osfhandle.c
#    _get_osplatform.c
#    _get_osver
#    _get_output_format.c
#    _get_pgmptr.c
#    _get_sbh_threshold.c
#    _get_wenviron
#    _get_winmajor
#    _get_winminor
#    _get_winver
#    _get_wpgmptr.c
#    _get_terminate.c
#    _get_tzname.c
#    _get_unexpected.c
#    _getch.c
#    _getche.c
#    _getcwd.c
#    _getdcwd.c
#    _getdiskfree.c
#    _getdllprocaddr.c
#    _getdrive.c
#    _getdrives.c kernel32.GetLogicalDrives
#    _getmaxstdio.c
#    _getmbcp.c
#    _getpid.c kernel32.GetCurrentProcessId
#    _getsystime.c
#    _getw.c
#    _getwch
#    _getwche
#    _getws.c
#    _gmtime32.c
#    _gmtime32_s.c
#    _gmtime64.c
#    _gmtime64_s.c
#    _heapadd.c
#    _heapchk.c
#    _heapmin.c
#    _heapset.c
#    _heapused.c
#    _heapwalk.c
#    _hypot.c
#    _i64toa.c
#    _i64toa_s.c
#    _i64tow.c
#    _i64tow_s.c
#    _initterm.c
#    _initterm_e.c
#    _invalid_parameter.c
#    _iob
#    _isalnum_l
#    _isalpha_l
#    _isatty.c
#    _iscntrl_l
#    _isctype.c
#    _isctype_l
#    _isdigit_l
#    _isgraph_l
#    _isleadbyte_l
#    _islower_l
#    _ismbbalnum.c
#    _ismbbalnum_l
#    _ismbbalpha.c
#    _ismbbalpha_l
#    _ismbbgraph.c
#    _ismbbgraph_l
#    _ismbbkalnum.c
#    _ismbbkalnum_l
#    _ismbbkana.c
#    _ismbbkana_l
#    _ismbbkprint.c
#    _ismbbkprint_l
#    _ismbbkpunct.c
#    _ismbbkpunct_l
#    _ismbblead.c
#    _ismbblead_l
#    _ismbbprint.c
#    _ismbbprint_l
#    _ismbbpunct.c
#    _ismbbpunct_l
#    _ismbbtrail.c
#    _ismbbtrail_l
#    _ismbcalnum.c
#    _ismbcalnum_l
#    _ismbcalpha.c
#    _ismbcalpha_l
#    _ismbcdigit.c
#    _ismbcdigit_l
#    _ismbcgraph.c
#    _ismbcgraph_l
#    _ismbchira.c
#    _ismbchira_l
#    _ismbckata.c
#    _ismbckata_l
#    _ismbcl0.c
#    _ismbcl0_l
#    _ismbcl1.c
#    _ismbcl1_l
#    _ismbcl2.c
#    _ismbcl2_l
#    _ismbclegal.c
#    _ismbclegal_l
#    _ismbclower.c
#    _ismbclower_l
#    _ismbcprint.c
#    _ismbcprint_l
#    _ismbcpunct.c
#    _ismbcpunct_l
#    _ismbcspace.c
#    _ismbcspace_l
#    _ismbcsymbol.c
#    _ismbcsymbol_l
#    _ismbcupper.c
#    _ismbcupper_l
#    _ismbslead.c
#    _ismbslead_l
#    _ismbstrail.c
#    _ismbstrail_l
#    _isnan.c
#    _isprint_l
#    _isspace_l
#    _isupper_l
#    _iswalnum_l
#    _iswalpha_l
#    _iswcntrl_l
#    _iswctype_l
#    _iswdigit_l
#    _iswgraph_l
#    _iswlower_l
#    _iswprint_l
#    _iswpunct_l
#    _iswspace_l
#    _iswupper_l
#    _iswxdigit_l
#    _isxdigit_l
#    _itoa.c
#    _itoa_s.c
#    _itow.c
#    _itow_s.c
#    _j0.c
#    _j1.c
#    _jn.c
#    _kbhit.c
#    _lfind.c
#    _lfind_s
#    _loaddll.c
#    _localtime32.c
#    _localtime32_s.c
#    _localtime64.c
#    _localtime64_s.c
#    _lock.c
#    _locking.c
#    _logb.c
#    _longjmpex.c longjmp
#    _lrotl.c
#    _lrotr.c
#    _lsearch.c
#    _lsearch_s
#    _lseek.c
#    -ret64 _lseeki64.c
#    _ltoa.c
#    _ltoa_s.c
#    _ltow.c
#    _ltow_s.c
#    _makepath.c
#    _makepath_s.c
#    _malloc_dbg
#    _mbbtombc.c
#    _mbbtombc_l
#    _mbbtype.c
#    _mbcasemap
#    _mbccpy .c
#    _mbccpy_l
#    _mbccpy_s
#    _mbccpy_s_l
#    _mbcjistojms.c
#    _mbcjistojms_l
#    _mbcjmstojis.c
#    _mbcjmstojis_l
#    _mbclen.c
#    _mbclen_l
#    _mbctohira.c
#    _mbctohira_l
#    _mbctokata.c
#    _mbctokata_l
#    _mbctolower.c
#    _mbctolower_l
#    _mbctombb.c
#    _mbctombb_l
#    _mbctoupper.c
#    _mbctoupper_l
#    _mbctype
#    _mblen_l
#    _mbsbtype.c
#    _mbsbtype_l
#    _mbscat.c
#    _mbscat_s
#    _mbscat_s_l
#    _mbschr.c
#    _mbschr_l
#    _mbscmp.c
#    _mbscmp_l
#    _mbscoll.c
#    _mbscoll_l
#    _mbscpy.c
#    _mbscpy_s
#    _mbscpy_s_l
#    _mbscspn.c
#    _mbscspn_l
#    _mbsdec.c
#    _mbsdec_l
#    _mbsdup.c
#    _strdup_dbg
#    _mbsicmp.c
#    _mbsicmp_l
#    _mbsicoll.c
#    _mbsicoll_l
#    _mbsinc.c
#    _mbsinc_l
#    _mbslen.c
#    _mbslen_l
#    _mbslwr.c
#    _mbslwr_l
#    _mbslwr_s
#    _mbslwr_s_l
#    _mbsnbcat.c
#    _mbsnbcat_l
#    _mbsnbcat_s
#    _mbsnbcat_s_l
#    _mbsnbcmp.c
#    _mbsnbcmp_l
#    _mbsnbcnt.c
#    _mbsnbcnt_l
#    _mbsnbcoll.c
#    _mbsnbcoll_l
#    _mbsnbcpy.c
#    _mbsnbcpy_l
#    _mbsnbcpy_s.c
#    _mbsnbcpy_s_l
#    _mbsnbicmp.c
#    _mbsnbicmp_l
#    _mbsnbicoll.c
#    _mbsnbicoll_l
#    _mbsnbset.c
#    _mbsnbset_l
#    _mbsnbset_s
#    _mbsnbset_s_l
#    _mbsncat.c
#    _mbsncat_l
#    _mbsncat_s
#    _mbsncat_s_l
#    _mbsnccnt.c
#    _mbsnccnt_l
#    _mbsncmp.c
#    _mbsncmp_l
#    _mbsncoll.c
#    _mbsncoll_l
#    _mbsncpy.c
#    _mbsncpy_l
#    _mbsncpy_s
#    _mbsncpy_s_l
#    _mbsnextc.c
#    _mbsnextc_l
#    _mbsnicmp.c
#    _mbsnicmp_l
#    _mbsnicoll.c
#    _mbsnicoll_l
#    _mbsninc.c
#    _mbsninc_l
#    _mbsnlen
#    _mbsnlen_l
#    _mbsnset.c
#    _mbsnset_l
#    _mbsnset_s
#    _mbsnset_s_l
#    _mbspbrk.c
#    _mbspbrk_l
#    _mbsrchr.c
#    _mbsrchr_l
#    _mbsrev.c
#    _mbsrev_l
#    _mbsset.c
#    _mbsset_l
#    _mbsset_s
#    _mbsset_s_l
#    _mbsspn.c
#    _mbsspn_l
#    _mbsspnp.c
#    _mbsspnp_l
#    _mbsstr.c
#    _mbsstr_l
#    _mbstok.c
#    _mbstok_l
#    _mbstok_s
#    _mbstok_s_l
#    _mbstowcs_l
#    _mbstowcs_s_l
#    _mbstrlen.c
#    _mbstrlen_l
#    _mbstrnlen
#    _mbstrnlen_l
#    _mbsupr.c
#    _mbsupr_l
#    _mbsupr_s
#    _mbsupr_s_l
#    _mbtowc_l
#    _memccpy.c
#    _memicmp.c
#    _memicmp_l
#    _mkdir.c
#    _mkgmtime.c
#    _mkgmtime32.c
#    _mkgmtime64.c
#    _mktemp.c
#    _mktemp_s
#    _mktime32.c
#    _mktime64.c
#    _msize.c
#    _msize_debug
#    _nextafter.c
#    _onexit.c
#    _open.c
#    _open_osfhandle.c
#    _osplatform
#    _osver
#    _outp.c
#    _outpd.c
#    _outpw.c
#    _pclose.c
#    _pctype
#    _pgmptr
#    _pipe.c
#    _popen.c
#    _printf_l
#    _printf_p
#    _printf_p_l
#    _printf_s_l
#    _purecall.c
#    _putch.c
#    _putenv.c
#    _putenv_s
#    _putw.c
#    _putwch.c
#    _putws.c
#    _pwctype
#    _read.c
#    _realloc_dbg
#    _resetstkoflw.c
#    _rmdir.c
#    _rmtmp.c
#    _rotl.c
#    _rotl64
#    _rotr.c
#    _rotr64
#    _scalb.c
#    _scanf_l.c
#    _scanf_s_l.c
#    _scprintf
#    _scprintf_l
#    _scprintf_p_l
#    _scwprintf
#    _scwprintf_l
#    _scwprintf_p_l
#    _searchenv.c
#    _searchenv_s.c
#    _set_SSE2_enable
#    _set_controlfp
#    _set_doserrno.c
#    _set_errno.c
#    _set_error_mode.c
#    _set_fileinfo
#    _set_fmode
#    _set_output_format
#    _set_sbh_threshold.c
#    _seterrormode.c
#    _setmaxstdio.c
#    _setmbcp.c
#    _setmode.c
#    _setsystime.c
#    _sleep.c
#    _snprintf.c
#    _snprintf_c
#    _snprintf_c_l
#    _snprintf_l
#    _snprintf_s
#    _snprintf_s_l
#    _snscanf
#    _snscanf_l
#    _snscanf_s
#    _snscanf_s_l
#    _snwprintf.c
#    _snwprintf_l
#    _snwprintf_s
#    _snwprintf_s_l
#    _snwscanf
#    _snwscanf_l
#    _snwscanf_s
#    _snwscanf_s_l
#    _sopen.c
#    _sopen_s.c
#    _spawnl.c
#    _spawnle.c
#    _spawnlp.c
#    _spawnlpe.c
#    _spawnv.c
#    _spawnve.c
#    _spawnvp.c
#    _spawnvpe.c
#    _splitpath.c
#    _splitpath_s
#    _sprintf_l
#    _sprintf_p_l
#    _sprintf_s_l
#    _sscanf_l.c
#    _sscanf_s_l.c
#    _stat.c
#    _stat64.c
#    _stati64.c
#    _statusfp.c
#    _strcmpi.c
#    _strcoll_l
#    _strdate.c
#    _strdate_s
#    _strdup.c
#    _strdup_dbg
#    _strerror.c
#    _strerror_s
#    _stricmp.c
#    _stricmp_l
#    _stricoll.c
#    _stricoll_l
#    _strlwr.c
#    _strlwr_l
#    _strlwr_s
#    _strlwr_s_l
#    _strncoll.c
#    _strncoll_l
#    _strnicmp.c
#    _strnicmp_l
#    _strnicoll.c
#    _strnicoll_l
#    _strnset.c
#    _strnset_s
#    _strrev.c
#    _strset.c
#    _strset_s
#    _strtime.c
#    _strtime_s
#    _strtod_l.c
#    _strtoi64.c
#    _strtoi64_l.c
#    _strtol_l
#    _strtoui64.c strtoull
#    _strtoui64_l.c
#    _strtoul_l
#    _strupr.c
#    _strupr_l
#    _strupr_s
#    _strupr_s_l
#    _strxfrm_l
#    _swab.c
#    _swprintf.c swprintf
#    _swprintf_c
#    _swprintf_c_l
#    _swprintf_p_l
#    _swprintf_s_l
#    _swscanf_l.c
#    _swscanf_s_l.c
#    _sys_errlist
#    _sys_nerr
#    _tell.c
#    -ret64 _telli64.c
#    _tempnam.c
#    _tempnam_dbg
#    _time32.c
#    _time64.c
#    _timezone
#    _tolower.c
#    _tolower_l
#    _toupper.c
#    _toupper_l
#    _towlower_l
#    _towupper_l
#    _tzname
#    _tzset.c
#    _ui64toa.c
#    _ui64toa_s.c
#    _ui64tow.c
#    _ui64tow_s.c
#    _ultoa.c
#    _ultoa_s
#    _ultow.c
#    _ultow_s
#    _umask.c
#    _umask_s
#    _ungetch.c
#    _ungetwch
#    _unlink.c
#    _unloaddll.c
#    _unlock.c
#    _utime32.c
#    _utime64.c
#    _vcprintf
#    _vcprintf_l
#    _vcprintf_p
#    _vcprintf_p_l
#    _vcprintf_s
#    _vcprintf_s_l
#    _vcwprintf.c
#    _vcwprintf_l
#    _vcwprintf_p
#    _vcwprintf_p_l
#    _vcwprintf_s
#    _vcwprintf_s_l
#    _vfprintf_l
#    _vfprintf_p
#    _vfprintf_p_l
#    _vfprintf_s_l
#    _vfwprintf_l
#    _vfwprintf_p
#    _vfwprintf_p_l
#    _vfwprintf_s_l
#    _vprintf_l
#    _vprintf_p
#    _vprintf_p_l
#    _vprintf_s_l
#    _utime.c
    _vscprintf.c
#    _vscprintf_l
#    _vscprintf_p_l
    _vscwprintf.c
#    _vscwprintf_l
#    _vscwprintf_p_l
    _vsnprintf.c
#    _vsnprintf_c.c _vsnprintf
#    _vsnprintf_c_l.c _vsnprintf_l
#    _vsnprintf_l.c
#    _vsnprintf_s.c
#    _vsnprintf_s_l.c
    _vsnwprintf.c
#    _vsnwprintf_l.c
#    _vsnwprintf_s.c
#    _vsnwprintf_s_l.c
#    _vsprintf_l
#    _vsprintf_p.c
#    _vsprintf_p_l
#    _vsprintf_s_l
#    _vswprintf.c
#    _vswprintf_c.c _vsnwprintf
#    _vswprintf_c_l.c _vsnwprintf_l
#    _vswprintf_l.c
#    _vswprintf_p_l.c _vsnwprintf_l
#    _vswprintf_s_l.c
#    _vwprintf_l
#    _vwprintf_p
#    _vwprintf_p_l
#    _vwprintf_s_l
#    _waccess.c
#    _waccess_s.c
#    _wasctime.c
#    _wasctime_s
#    _wassert
#    _wchdir.c
#    _wchmod.c
#    _wcmdln
#    _wcreat.c
#    _wcscoll_l
#    _wcsdup.c
#    _wcsdup_dbg
#    _wcserror.c
#    _wcserror_s.c
#    _wcsftime_l
#    _wcsicmp.c
#    _wcsicmp_l
#    _wcsicoll.c
#    _wcsicoll_l
#    _wcslwr.c
#    _wcslwr_l
#    _wcslwr_s
#    _wcslwr_s_l
#    _wcsncoll.c
#    _wcsncoll_l
#    _wcsnicmp.c
#    _wcsnicmp_l
#    _wcsnicoll.c
#    _wcsnicoll_l
#    _wcsnset.c
#    _wcsnset_s
#    _wcsrev.c
#    _wcsset.c
#    _wcsset_s
#    _wcstoi64.c
#    _wcstoi64_l.c
#    _wcstol_l
#    _wcstombs_l
#    _wcstombs_s_l.c
#    _wcstoui64.c
#    _wcstoui64_l.c
#    _wcstoul_l
#    _wcsupr.c
#    _wcsupr_l
#    _wcsupr_s.c
#    _wcsupr_s_l
#    _wcsxfrm_l
#    _wctime.c
#    _wctime32.c
#    _wctime32_s
#    _wctime64.c
#    _wctime64_s
#    _wctomb_l
#    _wctomb_s_l
#    _wctype
#    _wenviron
#    _wexecl.c
#    _wexecle.c
#    _wexeclp.c
#    _wexeclpe.c
#    _wexecv.c
#    _wexecve.c
#    _wexecvp.c
#    _wexecvpe.c
#    _wfdopen.c
#    _wfindfirst.c
#    _wfindfirst64
#    _wfindfirsti64.c
#    _wfindnext.c
#    _wfindnext64
#    _wfindnexti64.c
#    _wfopen.c
#    _wfopen_s.c
#    _wfreopen.c
#    _wfreopen_s
#    _wfsopen.c
#    _wfullpath.c
#    _wfullpath_dbg
#    _wgetcwd.c
#    _wgetdcwd.c
#    _wgetenv.c
#    _wgetenv_s
#    _winmajor
#    _winminor
#    _winput_s
#    _winver
#    _wmakepath.c
#    _wmakepath_s.c
#    _wmkdir.c
#    _wmktemp.c
#    _wmktemp_s
#    _wopen.c
#    _woutput_s
#    _wperror.c
#    _wpgmptr
#    _wpopen.c
#    _wprintf_l
#    _wprintf_p
#    _wprintf_p_l
#    _wprintf_s_l
#    _wputenv.c
#    _wputenv_s
#    _wremove.c
#    _wrename.c
#    _write.c
#    _wrmdir.c
#    _wscanf_l.c
#    _wscanf_s_l.c
#    _wsearchenv.c
#    _wsearchenv_s
#    _wsetlocale.c
#    _wsopen.c
#    _wsopen_s.c
#    _wspawnl.c
#    _wspawnle.c
#    _wspawnlp.c
#    _wspawnlpe.c
#    _wspawnv.c
#    _wspawnve.c
#    _wspawnvp.c
#    _wspawnvpe.c
#    _wsplitpath.c
#    _wsplitpath_s.c
#    _wstat.c
#    _wstati64.c
#    _wstat64.c
#    _wstrdate.c
#    _wstrdate_s
#    _wstrtime.c
#    _wstrtime_s
#    _wsystem.c
#    _wtempnam.c
#    _wtempnam_dbg
#    _wtmpnam.c
#    _wtmpnam_s
#    _wtof.c
#    _wtof_l.c
#    _wtoi.c
#    _wtoi64.c
#    _wtoi64_l
#    _wtoi_l
#    _wtol.c
#    _wtol_l
#    _wunlink.c
#    _wutime.c
#    _wutime32.c
#    _wutime64.c
#    _y0.c
#    _y1.c
#    _yn.c
#    abort.c
#    abs.c
#    acos.c
#    asctime.c
#    asctime_s
#    asin.c
#    atan.c
#    atan2.c
#    atexit # <-- keep this as an extern, thank you
#    atof.c
#    atoi.c
#    atol.c
#    bsearch.c
#    bsearch_s
#    btowc.c
#    calloc.c
#    ceil.c
#    clearerr.c
#    clearerr_s
#    clock.c
#    cos.c
#    cosh.c
#    ctime.c
#    difftime.c
#    div.c
#    exit.c
#    exp.c
#    fabs.c
#    fclose.c
#    feof.c
#    ferror.c
#    fflush.c
#    fgetc.c
#    fgetpos.c
#    fgets.c
#    fgetwc.c
#    fgetws.c
#    floor.c
#    fmod.c
#    fopen.c
#    fopen_s.c
#    fprintf.c
#    fprintf_s.c
#    fputc.c
#    fputs.c
#    fputwc.c
#    fputws.c
#    fread.c
#    free.c
#    freopen.c
#    freopen_s
#    frexp.c
#    fscanf.c
#    fscanf_s.c
#    fseek.c
#    fsetpos.c
#    ftell.c
#    fwprintf.c
#    fwprintf_s.c
#    fwrite.c
#    fwscanf.c
#    fwscanf_s.c
#    getc.c
#    getchar.c
#    getenv.c
#    getenv_s
#    gets.c
#    getwc.c
#    getwchar.c
#    gmtime.c
#    is_wctype.c
#    isalnum.c
#    isalpha.c
#    iscntrl.c
#    isdigit.c
#    isgraph.c
#    isleadbyte.c
#    islower.c
#    isprint.c
#    ispunct.c
#    isspace.c
#    isupper.c
#    iswalnum.c
#    iswalpha.c
#    iswascii.c
#    iswcntrl.c
#    iswctype.c
#    iswdigit.c
#    iswgraph.c
#    iswlower.c
#    iswprint.c
#    iswpunct.c
#    iswspace.c
#    iswupper.c
#    iswxdigit.c
#    isxdigit.c
#    labs.c
#    ldexp.c
#    ldiv.c
#    localeconv.c
#    localtime.c
#    log.c
#    log10.c
#    longjmp.c
#    malloc.c
#    mblen.c
#    mbrlen
#    mbrtowc
#    mbsdup_dbg
#    mbsrtowcs
#    mbsrtowcs_s
#    mbstowcs.c
#    mbstowcs_s
#    mbtowc.c
#    memchr.c
#    memcmp.c
#    memcpy.c
#    memcpy_s.c memmove_s
#    memmove.c
#    memmove_s.c
#    memset.c
#    mktime.c
#    modf.c
#    perror.c
#    pow.c
#    printf.c
#    printf_s.c
#    putc.c
#    putchar.c
#    puts.c
#    putwc.c fputwc
#    putwchar.c _fputwchar
#    qsort.c
#    qsort_s
#    raise.c
#    rand.c
#    rand_s.c
#    realloc.c
#    remove.c
#    rename.c
#    rewind.c
#    scanf.c
#    scanf_s.c
#    setbuf.c
#    _setjmp.c
#    setlocale.c
#    setvbuf.c
#    signal.c
#    sin.c
#    sinh.c
    sprintf.c
#    sprintf_s.c
#    sqrt.c
#    srand.c
#    sscanf.c
#    sscanf_s.c
#    strcat.c
#    strcat_s.c
#    strchr.c
#    strcmp.c
#    strcoll.c
    strcpy.c
#    strcpy_s.c
#    strcspn.c
#    strerror.c
#    strerror_s.c
#    strftime.c
#    strlen.c
#    strncat.c
#    strncat_s
#    strncmp.c
#    strncpy.c
#    strncpy_s.c
#    strnlen.c
#    strpbrk.c
#    strrchr.c
#    strspn.c
#    strstr.c
#    strtod.c
#    strtok.c
#    strtok_s.c
#    strtol.c
#    strtoul.c
#    strxfrm.c
#    swprintf.c
#    swprintf_s.c
#    swscanf.c
#    swscanf_s.c
#    system.c
#    tan.c
#    tanh.c
#    time.c
#    tmpfile.c
#    tmpfile_s
#    tmpnam.c
#    tmpnam_s
#    tolower.c
#    toupper.c
#    towlower.c
#    towupper.c
#    ungetc.c
#    ungetwc.c
#    utime
#    vfprintf.c
#    vfprintf_s.c
#    vfwprintf.c
#    vfwprintf_s.c
#    vprintf.c
#    vprintf_s.c
#    vsnprintf
#    vsprintf.c
#    vsprintf_s.c
#    vswprintf.c
#    vswprintf_s.c
#    vwprintf.c
#    vwprintf_s.c
#    wcrtomb
#    wcrtomb_s
#    wcscat.c
#    wcscat_s.c
#    wcschr.c
#    wcscmp.c
#    wcscoll.c
#    wcscpy.c
#    wcscpy_s.c
#    wcscspn.c
#    wcsftime.c
#    wcslen.c
#    wcsncat.c
#    wcsncat_s.c
#    wcsncmp.c
#    wcsncpy.c
#    wcsncpy_s.c
#    wcsnlen
#    wcspbrk.c
#    wcsrchr.c
#    wcsrtombs
#    wcsrtombs_s
#    wcsspn.c
#    wcsstr.c
#    wcstod.c
#    wcstok.c
#    wcstok_s.c
#    wcstol.c
#    wcstombs.c
#    wcstombs_s.c
#    wcstoul.c
#    wcsxfrm.c
#    wctob
#    wctomb.c
#    wctomb_s
#    wprintf.c
#    wprintf_s.c
#    wscanf.c
#    wscanf_s.c
)

if (ARCH MATCHES i386)
    list(APPEND SOURCE_MSVCRT
    #    _CIacos.c
    #    _CIasin.c
    #    _CIatan.c
    #    _CIatan2.c
    #    _CIcos.c
    #    _CIcosh.c
    #    _CIexp.c
    #    _CIfmod.c
    #    _CIlog.c
    #    _CIlog10.c
    #    _CIpow.c
    #    _CIsin.c
    #    _CIsinh.c
    #    _CIsqrt.c
    #    _CItan.c
    #    _CItanh.c
    #    _chkesp.c
    #    _EH_prolog.c
    #    __CxxFrameHandler.c
    #    __CxxFrameHandler2.c
    #    __CxxFrameHandler3.c
    #    __CxxLongjmpUnwind.c
    #    __p___argc.c
    #    __p___argv.c
    #    __p___initenv.c
    #    __p___mb_cur_max.c
    #    __p___wargv.c
    #    __p___winitenv.c
    #    __p__acmdln.c
    #    __p__amblksiz.c
    #    __p__commode.c
    #    __p__daylight.c
    #    __p__dstbias.c
    #    __p__environ.c
    #    __p__fileinfo.c
    #    __p__fmode.c
    #    __p__iob.c
    #    __p__mbcasemap.c
    #    __p__mbctype.c
    #    __p__osver.c
    #    __p__pctype.c
    #    __p__pgmptr.c
    #    __p__pwctype.c
    #    __p__timezone.c
    #    __p__tzname.c
    #    __p__wcmdln.c
    #    __p__wenviron.c
    #    __p__winmajor.c
    #    __p__winminor.c
    #    __p__winver.c
    #    __p__wpgmptr.c
    #    _adj_fdiv_m16i.c
    #    _adj_fdiv_m32.c
    #    _adj_fdiv_m32i.c
    #    _adj_fdiv_m64.c
    #    _adj_fdiv_r.c
    #    _adj_fdivr_m16i.c
    #    _adj_fdivr_m32.c
    #    _adj_fdivr_m32i.c
    #    _adj_fdivr_m64.c
    #    _adj_fpatan.c
    #    _adj_fprem.c
    #    _adj_fprem1.c
    #    _adj_fptan.c
    #    _adjust_fdiv
    #    _except_handler2.c
    #    _except_handler3.c
    #    _except_handler4_common.c
    #    _ftol.c
    #    _ftol2.c _ftol
    #    _ftol2_sse.c
    #    _global_unwind2.c
    #    _inp.c
    #    _inpd.c
    #    _inpw.c
    #    _local_unwind2.c
    #    _local_unwind4.c
    #    _safe_fdiv.c
    #    _safe_fdivr.c
    #    _safe_fprem.c
    #    _safe_fprem1.c
    #    _seh_longjmp_unwind4.c
    #    _seh_longjmp_unwind.c
    #    -norelay _setjmp3.c
    )
elseif (ARCH MATCHES amd64)
    list(APPEND SOURCE_MSVCRT
    #    __C_specific_handler
    #    _setjmp.c
    #    _setjmpex.c
    #    _local_unwind.c
    #    longjmp.c
    #    __C_specific_handler.c
    #    _setjmpex.c
    #    ceilf.c
    #    cosf.c
    #    floorf.c
    #    fmodf.c
    #    logf.c
    #    powf.c
    #    sinf.c
    #    sqrtf.c
    )
endif()

# Startup code doesn't go together well with the static CRT... too much __imp_
#add_executable(static_crt_apitest testlist.c ${SOURCE_MSVCRT})
#add_target_compile_definitions(static_crt_apitest TEST_STATIC_CRT)
#target_link_libraries(static_crt_apitest ${PSEH_LIB} crt wine)
#set_module_type(static_crt_apitest win32cui)
#add_importlibs(static_crt_apitest kernel32 ntdll)
#add_cd_file(TARGET static_crt_apitest DESTINATION reactos/bin FOR all)

add_executable(msvcrt_crt_apitest testlist.c ${SOURCE_MSVCRT})
add_target_compile_definitions(msvcrt_crt_apitest TEST_MSVCRT)
target_link_libraries(msvcrt_crt_apitest wine ${PSEH_LIB})
set_module_type(msvcrt_crt_apitest win32cui)
add_importlibs(msvcrt_crt_apitest msvcrt kernel32 ntdll)
add_cd_file(TARGET msvcrt_crt_apitest DESTINATION reactos/bin FOR all)
