/*
 * Copyright (C) 2005 Mike McCormack
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef _CFGMGR32_H_
#define _CFGMGR32_H_

/* cfgmgr32 doesn't use the normal convention, it adds an underscore before A/W */
#ifdef __WINESRC__
# define DECL_WINELIB_CFGMGR32_TYPE_AW(type)  /* nothing */
#else   /* __WINESRC__ */
# define DECL_WINELIB_CFGMGR32_TYPE_AW(type)  typedef WINELIB_NAME_AW(type##_) type;
#endif  /* __WINESRC__ */

typedef DWORD CONFIGRET;
typedef HANDLE HMACHINE;
typedef HMACHINE *PHMACHINE;
typedef DWORD DEVINST;
typedef DEVINST *PDEVINST;
typedef DWORD DEVNODE;
typedef DEVNODE *PDEVNODE;
typedef ULONG REGDISPOSITION;
typedef DWORD_PTR LOG_CONF;
typedef LOG_CONF *PLOG_CONF;
typedef ULONG PRIORITY;
typedef PRIORITY *PPRIORITY;


typedef CHAR  *DEVINSTID_A;
typedef WCHAR *DEVINSTID_W;
DECL_WINELIB_CFGMGR32_TYPE_AW(DEVINSTID)

#define CR_SUCCESS              0x00000000
#define CR_OUT_OF_MEMORY        0x00000002
#define CR_INVALID_POINTER      0x00000003
#define CR_INVALID_FLAG         0x00000004
#define CR_INVALID_DEVNODE      0x00000005
#define CR_INVALID_DEVINST      CR_INVALID_DEVNODE
#define CR_INVALID_LOG_CONF     0x00000007
#define CR_NO_SUCH_DEVNODE      0x0000000D
#define CR_NO_SUCH_DEVINST      CR_NO_SUCH_DEVNODE
#define CR_FAILURE              0x00000013
#define CR_BUFFER_SMALL         0x0000001A
#define CR_REGISTRY_ERROR       0x0000001D
#define CR_INVALID_DEVICE_ID    0x0000001E
#define CR_INVALID_DATA         0x0000001F
#define CR_NO_SUCH_VALUE        0x00000025
#define CR_INVALID_PRIORITY     0x00000027
#define CR_NO_SUCH_REGISTRY_KEY 0x0000002E
#define CR_INVALID_MACHINENAME  0x0000002F
#define CR_ACCESS_DENIED        0x00000033
#define CR_CALL_NOT_IMPLEMENTED 0x00000034
#define CR_INVALID_PROPERTY     0x00000035

#define MAX_CLASS_NAME_LEN  32
#define MAX_GUID_STRING_LEN 39
#define MAX_PROFILE_LEN     80
#define MAX_DEVICE_ID_LEN      200
#define MAX_DEVNODE_ID_LEN     MAX_DEVICE_ID_LEN

/* Disposition values for CM_Open_Class_Key[_Ex] */
#define RegDisposition_OpenAlways   0x00000000
#define RegDisposition_OpenExisting 0x00000001
#define RegDisposition_Bits         0x00000001

/* ulFlags for CM_Add_ID[_Ex] */
#define CM_ADD_ID_HARDWARE   0x00000000
#define CM_ADD_ID_COMPATIBLE 0x00000001
#define CM_ADD_ID_BITS       0x00000001

/* ulFlags for CM_Open_Class_Key[_Ex] */
#define CM_OPEN_CLASS_KEY_INSTALLER 0x00000000
#define CM_OPEN_CLASS_KEY_INTERFACE 0x00000001
#define CM_OPEN_CLASS_KEY_BITS      0x00000001

/* ulFlags for CM_Locate_DevNode[_Ex] */
#define CM_LOCATE_DEVNODE_NORMAL       0x00000000
#define CM_LOCATE_DEVNODE_PHANTOM      0x00000001
#define CM_LOCATE_DEVNODE_CANCELREMOVE 0x00000002
#define CM_LOCATE_DEVNODE_NOVALIDATION 0x00000004
#define CM_LOCATE_DEVNODE_BITS         0x00000007

#define CM_LOCATE_DEVINST_NORMAL       CM_LOCATE_DEVNODE_NORMAL
#define CM_LOCATE_DEVINST_PHANTOM      CM_LOCATE_DEVNODE_PHANTOM
#define CM_LOCATE_DEVINST_CANCELREMOVE CM_LOCATE_DEVNODE_CANCELREMOVE
#define CM_LOCATE_DEVINST_NOVALIDATION CM_LOCATE_DEVNODE_NOVALIDATION
#define CM_LOCATE_DEVINST_BITS         CM_LOCATE_DEVNODE_BITS

/* ulFlags for CM_Set_DevNode_Problem[_Ex] */
#define CM_SET_DEVNODE_PROBLEM_NORMAL   0x00000000
#define CM_SET_DEVNODE_PROBLEM_OVERRIDE 0x00000001
#define CM_SET_DEVNODE_PROBLEM_BITS     0x00000001

#define CM_SET_DEVINST_PROBLEM_NORMAL   CM_SET_DEVNODE_PROBLEM_NORMAL
#define CM_SET_DEVINST_PROBLEM_OVERRIDE CM_SET_DEVNODE_PROBLEM_OVERRIDE
#define CM_SET_DEVINST_PROBLEM_BITS     CM_SET_DEVNODE_PROBLEM_BITS

/* Properties for CM_Get/Set_DevNode_Registry_Property[_Ex]A/W */
#define CM_DRP_DEVICEDESC                  0x00000001
#define CM_DRP_HARDWAREID                  0x00000002
#define CM_DRP_COMPATIBLEIDS               0x00000003
#define CM_DRP_UNUSED0                     0x00000004
#define CM_DRP_SERVICE                     0x00000005
#define CM_DRP_UNUSED1                     0x00000006
#define CM_DRP_UNUSED2                     0x00000007
#define CM_DRP_CLASS                       0x00000008
#define CM_DRP_CLASSGUID                   0x00000009
#define CM_DRP_DRIVER                      0x0000000A
#define CM_DRP_CONFIGFLAGS                 0x0000000B
#define CM_DRP_MFG                         0x0000000C
#define CM_DRP_FRIENDLYNAME                0x0000000D
#define CM_DRP_LOCATION_INFORMATION        0x0000000E
#define CM_DRP_PHYSICAL_DEVICE_OBJECT_NAME 0x0000000F
#define CM_DRP_CAPABILITIES                0x00000010
#define CM_DRP_UI_NUMBER                   0x00000011
#define CM_DRP_UPPERFILTERS                0x00000012
#define CM_DRP_LOWERFILTERS                0x00000013
#define CM_DRP_BUSTYPEGUID                 0x00000014
#define CM_DRP_LEGACYBUSTYPE               0x00000015
#define CM_DRP_BUSNUMBER                   0x00000016
#define CM_DRP_ENUMERATOR_NAME             0x00000017

#define CM_DRP_MIN                         0x00000001
#define CM_DRP_MAX                         0x00000017

/* ulFlags for CM_Delete_Class_Key[_Ex] */
#define CM_DELETE_CLASS_ONLY    0x00000000
#define CM_DELETE_CLASS_SUBKEYS 0x00000001
#define CM_DELETE_CLASS_BITS    0x00000001

/* ulFlags for CM_Get_Device_ID_List and CM_Get_Device_ID_List_Size */
#define CM_GETIDLIST_FILTER_NONE                (0x00000000)
#define CM_GETIDLIST_FILTER_ENUMERATOR          (0x00000001)
#define CM_GETIDLIST_FILTER_SERVICE             (0x00000002)
#define CM_GETIDLIST_FILTER_EJECTRELATIONS      (0x00000004)
#define CM_GETIDLIST_FILTER_REMOVALRELATIONS    (0x00000008)
#define CM_GETIDLIST_FILTER_POWERRELATIONS      (0x00000010)
#define CM_GETIDLIST_FILTER_BUSRELATIONS        (0x00000020)
#define CM_GETIDLIST_DONOTGENERATE              (0x10000040)
#define CM_GETIDLIST_FILTER_BITS                (0x1000007F)

/* ulFlags for CM_Reenumerate_DevNode[_Ex] */
#define CM_REENUMERATE_NORMAL             0x00000000
#define CM_REENUMERATE_SYNCHRONOUS        0x00000001
#define CM_REENUMERATE_RETRY_INSTALLATION 0x00000002
#define CM_REENUMERATE_ASYNCHRONOUS       0x00000004
#define CM_REENUMERATE_BITS               0x00000007

/* ulFlags for CM_Run_Detection[_Ex] */
#define CM_DETECT_NEW_PROFILE       0x00000001
#define CM_DETECT_CRASHED           0x00000002
#define CM_DETECT_HWPROF_FIRST_BOOT 0x00000004
#define CM_DETECT_RUN               0x80000000
#define CM_DETECT_BITS              0x80000007

/* ulFlags for CM_Setup_DevInst[_Ex] */
#define CM_SETUP_DEVNODE_READY   0x00000000
#define CM_SETUP_DEVINST_READY   CM_SETUP_DEVNODE_READY
#define CM_SETUP_DOWNLOAD        0x00000001
#define CM_SETUP_WRITE_LOG_CONFS 0x00000002
#define CM_SETUP_PROP_CHANGE     0x00000003
#define CM_SETUP_DEVNODE_RESET   0x00000004
#define CM_SETUP_DEVINST_RESET   CM_SETUP_DEVNODE_RESET
#define CM_SETUP_BITS            0x00000007

/* ulFlags for CM_Create_DevNode[_Ex]A/W */
#define CM_CREATE_DEVNODE_NORMAL          0x00000000
#define CM_CREATE_DEVNODE_NO_WAIT_INSTALL 0x00000001
#define CM_CREATE_DEVNODE_PHANTOM         0x00000002
#define CM_CREATE_DEVNODE_GENERATE_ID     0x00000004
#define CM_CREATE_DEVNODE_DO_NOT_INSTALL  0x00000008
#define CM_CREATE_DEVNODE_BITS            0x0000000F

#define CM_CREATE_DEVINST_NORMAL          CM_CREATE_DEVNODE_NORMAL
#define CM_CREATE_DEVINST_NO_WAIT_INSTALL CM_CREATE_DEVNODE_NO_WAIT_INSTALL
#define CM_CREATE_DEVINST_PHANTOM         CM_CREATE_DEVNODE_PHANTOM
#define CM_CREATE_DEVINST_GENERATE_ID     CM_CREATE_DEVNODE_GENERATE_ID
#define CM_CREATE_DEVINST_DO_NOT_INSTALL  CM_CREATE_DEVNODE_DO_NOT_INSTALL
#define CM_CREATE_DEVINST_BITS            CM_CREATE_DEVNODE_BITS

/* ulFlags for CM_Set_HW_Prof_Flags[_Ex]A/W */
#define CM_SET_HW_PROF_FLAGS_UI_NOT_OK 0x00000001
#define CM_SET_HW_PROF_FLAGS_BITS      0x00000001

/* ulFlags for Log_Conf functions */
#define BASIC_LOG_CONF    0x00000000
#define FILTERED_LOG_CONF 0x00000001
#define ALLOC_LOG_CONF    0x00000002
#define BOOT_LOG_CONF     0x00000003
#define FORCED_LOG_CONF   0x00000004
#define OVERRIDE_LOG_CONF 0x00000005
#define NUM_LOG_CONF      0x00000006
#define LOG_CONF_BITS     0x00000007

#define PRIORITY_EQUAL_FIRST  0x00000008
#define PRIORITY_EQUAL_LAST   0x00000000
#define PRIORITY_BIT          0x00000008

#define CMP_MAGIC  0x01234567


CONFIGRET WINAPI CMP_Init_Detection( DWORD );
CONFIGRET WINAPI CMP_Report_LogOn( DWORD, DWORD );

CONFIGRET WINAPI CM_Add_Empty_Log_Conf( PLOG_CONF, DEVINST, PRIORITY, ULONG );
CONFIGRET WINAPI CM_Add_Empty_Log_Conf_Ex( PLOG_CONF, DEVINST, PRIORITY, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Add_IDA( DEVINST, PSTR, ULONG );
CONFIGRET WINAPI CM_Add_IDW( DEVINST, PWSTR, ULONG );
#define     CM_Add_ID WINELIB_NAME_AW(CM_Add_ID)
CONFIGRET WINAPI CM_Add_ID_ExA( DEVINST, PSTR, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Add_ID_ExW( DEVINST, PWSTR, ULONG, HMACHINE );
#define     CM_Add_ID_Ex WINELIB_NAME_AW(CM_Add_ID_Ex)
CONFIGRET WINAPI CM_Connect_MachineA( PCSTR, PHMACHINE );
CONFIGRET WINAPI CM_Connect_MachineW( PCWSTR, PHMACHINE );
#define     CM_Connect_Machine WINELIB_NAME_AW(CM_Connect_Machine)
CONFIGRET WINAPI CM_Create_DevNodeA( PDEVINST, DEVINSTID_A, DEVINST, ULONG );
CONFIGRET WINAPI CM_Create_DevNodeW( PDEVINST, DEVINSTID_W, DEVINST, ULONG );
#define     CM_Create_DevNode WINELIB_NAME_AW(CM_Create_DevNode)
CONFIGRET WINAPI CM_Create_DevNode_ExA( PDEVINST, DEVINSTID_A, DEVINST, ULONG, HANDLE );
CONFIGRET WINAPI CM_Create_DevNode_ExW( PDEVINST, DEVINSTID_W, DEVINST, ULONG, HANDLE );
#define     CM_Create_DevNode_Ex WINELIB_NAME_AW(CM_Create_DevNode_Ex)
CONFIGRET WINAPI CM_Delete_Class_Key( LPGUID, ULONG );
CONFIGRET WINAPI CM_Delete_Class_Key_Ex( LPGUID, ULONG, HANDLE );
CONFIGRET WINAPI CM_Delete_DevNode_Key( DEVNODE, ULONG, ULONG );
CONFIGRET WINAPI CM_Delete_DevNode_Key_Ex( DEVNODE, ULONG, ULONG, HANDLE );
CONFIGRET WINAPI CM_Disable_DevNode( DEVINST, ULONG );
CONFIGRET WINAPI CM_Disable_DevNode_Ex( DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Disconnect_Machine( HMACHINE );
CONFIGRET WINAPI CM_Enable_DevNode( DEVINST, ULONG );
CONFIGRET WINAPI CM_Enable_DevNode_Ex( DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Enumerate_Classes( ULONG, LPGUID, ULONG );
CONFIGRET WINAPI CM_Enumerate_Classes_Ex( ULONG, LPGUID, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Enumerate_EnumeratorsA( ULONG, PCHAR, PULONG, ULONG );
CONFIGRET WINAPI CM_Enumerate_EnumeratorsW( ULONG, PWCHAR, PULONG, ULONG );
#define     CM_Enumerate_Enumerators WINELIB_NAME_AW(CM_Enumerate_Enumerators)
CONFIGRET WINAPI CM_Enumerate_Enumerators_ExA( ULONG, PCHAR, PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Enumerate_Enumerators_ExW( ULONG, PWCHAR, PULONG, ULONG, HMACHINE );
#define     CM_Enumerate_Enumerators_Ex WINELIB_NAME_AW(CM_Enumerate_Enumerators_Ex)
CONFIGRET WINAPI CM_Free_Log_Conf( LOG_CONF, ULONG );
CONFIGRET WINAPI CM_Free_Log_Conf_Ex( LOG_CONF, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Free_Log_Conf_Handle( LOG_CONF );
CONFIGRET WINAPI CM_Get_Child( PDEVINST, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_Child_Ex( PDEVINST, DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Class_Key_NameA( LPGUID, LPSTR, PULONG, ULONG );
CONFIGRET WINAPI CM_Get_Class_Key_NameW( LPGUID, LPWSTR, PULONG, ULONG );
#define     CM_Get_Class_Key_Name WINELIB_NAME_AW(CM_Get_Class_Key_Name)
CONFIGRET WINAPI CM_Get_Class_Key_Name_ExA( LPGUID, LPSTR, PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Class_Key_Name_ExW( LPGUID, LPWSTR, PULONG, ULONG, HMACHINE );
#define     CM_Get_Class_Key_Name_Ex WINELIB_NAME_AW(CM_Get_Class_Key_Name_Ex)
CONFIGRET WINAPI CM_Get_Class_NameA( LPGUID, PCHAR, PULONG, ULONG );
CONFIGRET WINAPI CM_Get_Class_NameW( LPGUID, PWCHAR, PULONG, ULONG );
#define     CM_Get_Class_Name WINELIB_NAME_AW(CM_Get_Class_Name)
CONFIGRET WINAPI CM_Get_Class_Name_ExA( LPGUID, PCHAR, PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Class_Name_ExW( LPGUID, PWCHAR, PULONG, ULONG, HMACHINE );
#define     CM_Get_Class_Name_Ex WINELIB_NAME_AW(CM_Get_Class_Name_Ex)
CONFIGRET WINAPI CM_Get_Depth( PULONG, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_Depth_Ex( PULONG, DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_DevNode_Registry_PropertyA( DEVINST, ULONG, PULONG, PVOID, PULONG, ULONG );
CONFIGRET WINAPI CM_Get_DevNode_Registry_PropertyW( DEVINST, ULONG, PULONG, PVOID, PULONG, ULONG );
#define     CM_Get_DevNode_Registry_Property WINELIB_NAME_AW(CM_Get_DevNode_Registry_Property)
CONFIGRET WINAPI CM_Get_DevNode_Registry_Property_ExA( DEVINST, ULONG, PULONG, PVOID, PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_DevNode_Registry_Property_ExW( DEVINST, ULONG, PULONG, PVOID, PULONG, ULONG, HMACHINE );
#define     CM_Get_DevNode_Registry_Property_Ex WINELIB_NAME_AW(CM_Get_DevNode_Registry_Property_Ex)
CONFIGRET WINAPI CM_Get_DevNode_Status( PULONG, PULONG, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_DevNode_Status_Ex( PULONG, PULONG, DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Device_IDA( DEVINST, PCHAR, ULONG, ULONG );
CONFIGRET WINAPI CM_Get_Device_IDW( DEVINST, PWCHAR, ULONG, ULONG );
#define     CM_Get_Device_ID WINELIB_NAME_AW(CM_Get_Device_ID)
CONFIGRET WINAPI CM_Get_Device_ID_ExW( DEVINST, PWCHAR, ULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Device_ID_ExA( DEVINST, PCHAR, ULONG, ULONG, HMACHINE );
#define     CM_Get_Device_ID_Ex WINELIB_NAME_AW(CM_Get_Device_ID_Ex)
CONFIGRET WINAPI CM_Get_Device_ID_ListA( PCSTR, PCHAR, ULONG, ULONG );
CONFIGRET WINAPI CM_Get_Device_ID_ListW( PCWSTR, PWCHAR, ULONG, ULONG );
#define     CM_Get_Device_ID_List WINELIB_NAME_AW(CM_Get_Device_ID_List)
CONFIGRET WINAPI CM_Get_Device_ID_List_ExA( PCSTR, PCHAR, ULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Device_ID_List_ExW( PCWSTR, PWCHAR, ULONG, ULONG, HMACHINE );
#define     CM_Get_Device_ID_List_Ex WINELIB_NAME_AW(CM_Get_Device_ID_List_Ex)
CONFIGRET WINAPI CM_Get_Device_ID_List_SizeA( PULONG, PCSTR, ULONG );
CONFIGRET WINAPI CM_Get_Device_ID_List_SizeW( PULONG, PCWSTR, ULONG );
#define     CM_Get_Device_ID_List_Size WINELIB_NAME_AW(CM_Get_Device_ID_List_Size)
CONFIGRET WINAPI CM_Get_Device_ID_List_Size_ExA( PULONG, PCSTR, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Device_ID_List_Size_ExW( PULONG, PCWSTR, ULONG, HMACHINE );
#define     CM_Get_Device_ID_List_Size_Ex WINELIB_NAME_AW(CM_Get_Device_ID_List_Size_Ex)
CONFIGRET WINAPI CM_Get_Device_ID_Size( PULONG, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_Device_ID_Size_Ex( PULONG, DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Global_State( PULONG, ULONG );
CONFIGRET WINAPI CM_Get_Global_State_Ex( PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_HW_Prof_FlagsA( DEVINSTID_A, ULONG, PULONG, ULONG );
CONFIGRET WINAPI CM_Get_HW_Prof_FlagsW( DEVINSTID_W, ULONG, PULONG, ULONG );
#define     CM_Get_HW_Prof_Flags WINELIB_NAME_AW(CM_Get_HW_Prof_Flags)
CONFIGRET WINAPI CM_Get_HW_Prof_Flags_ExA( DEVINSTID_A, ULONG, PULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_HW_Prof_Flags_ExW( DEVINSTID_W, ULONG, PULONG, ULONG, HMACHINE );
#define     CM_Get_HW_Prof_Flags_Ex WINELIB_NAME_AW(CM_Get_HW_Prof_Flags_Ex)
CONFIGRET WINAPI CM_Get_Parent( PDEVINST, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_Parent_Ex( PDEVINST, DEVINST, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Get_Sibling( PDEVINST, DEVINST, ULONG );
CONFIGRET WINAPI CM_Get_Sibling_Ex( PDEVINST, DEVINST, ULONG, HMACHINE );
WORD WINAPI CM_Get_Version( VOID );
WORD WINAPI CM_Get_Version_Ex( HMACHINE );

CONFIGRET WINAPI CM_Is_Dock_Station_Present( PBOOL );
CONFIGRET WINAPI CM_Is_Dock_Station_Present_Ex( PBOOL, HMACHINE );
CONFIGRET WINAPI CM_Locate_DevNodeA( PDEVINST, DEVINSTID_A, ULONG );
CONFIGRET WINAPI CM_Locate_DevNodeW( PDEVINST, DEVINSTID_W, ULONG );
#define     CM_Locate_DevNode WINELIB_NAME_AW(CM_Locate_DevNode)
CONFIGRET WINAPI CM_Locate_DevNode_ExA( PDEVINST, DEVINSTID_A, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Locate_DevNode_ExW( PDEVINST, DEVINSTID_W, ULONG, HMACHINE );
#define     CM_Locate_DevNode_Ex WINELIB_NAME_AW(CM_Locate_DevNode_Ex)

CONFIGRET WINAPI CM_Move_DevNode( DEVINST, DEVINST, ULONG );
CONFIGRET WINAPI CM_Move_DevNode_Ex( DEVINST, DEVINST, ULONG, HMACHINE );

CONFIGRET WINAPI CM_Open_Class_KeyA( LPGUID, LPCSTR, REGSAM, REGDISPOSITION, PHKEY, ULONG );
CONFIGRET WINAPI CM_Open_Class_KeyW( LPGUID, LPCWSTR, REGSAM, REGDISPOSITION, PHKEY, ULONG );
#define     CM_Open_Class_Key WINELIB_NAME_AW(CM_Open_Class_Key)
CONFIGRET WINAPI CM_Open_Class_Key_ExA( LPGUID, LPCSTR, REGSAM, REGDISPOSITION, PHKEY, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Open_Class_Key_ExW( LPGUID, LPCWSTR, REGSAM, REGDISPOSITION, PHKEY, ULONG, HMACHINE );
#define     CM_Open_Class_Key_Ex WINELIB_NAME_AW(CM_Open_Class_Key_Ex)
CONFIGRET WINAPI CM_Open_DevNode_Key( DEVINST, REGSAM, ULONG, REGDISPOSITION, PHKEY, ULONG );
CONFIGRET WINAPI CM_Open_DevNode_Key_Ex( DEVINST, REGSAM, ULONG, REGDISPOSITION, PHKEY, ULONG, HMACHINE );

CONFIGRET WINAPI CM_Reenumerate_DevNode( DEVINST, ULONG );
CONFIGRET WINAPI CM_Reenumerate_DevNode_Ex( DEVINST, ULONG, HMACHINE );

CONFIGRET WINAPI CM_Request_Eject_PC( VOID );
CONFIGRET WINAPI CM_Request_Eject_PC_Ex( HMACHINE );

CONFIGRET WINAPI CM_Run_Detection( ULONG );
CONFIGRET WINAPI CM_Run_Detection_Ex( ULONG, HMACHINE );
CONFIGRET WINAPI CM_Set_DevNode_Problem( DEVINST, ULONG, ULONG );
CONFIGRET WINAPI CM_Set_DevNode_Problem_Ex( DEVINST, ULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Set_DevNode_Registry_PropertyA( DEVINST, ULONG, PCVOID, ULONG, ULONG );
CONFIGRET WINAPI CM_Set_DevNode_Registry_PropertyW( DEVINST, ULONG, PCVOID, ULONG, ULONG );
#define     CM_Set_DevNode_Registry_Property WINELIB_NAME_AW(CM_Set_DevNode_Registry_Property)
CONFIGRET WINAPI CM_Set_DevNode_Registry_Property_ExA( DEVINST, ULONG, PCVOID, ULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Set_DevNode_Registry_Property_ExW( DEVINST, ULONG, PCVOID, ULONG, ULONG, HMACHINE );
#define     CM_Set_DevNode_Registry_Property_Ex WINELIB_NAME_AW(CM_Set_DevNode_Registry_Property_Ex)

CONFIGRET WINAPI CM_Set_HW_Prof_FlagsA( DEVINSTID_A, ULONG, ULONG, ULONG );
CONFIGRET WINAPI CM_Set_HW_Prof_FlagsW( DEVINSTID_W, ULONG, ULONG, ULONG );
#define     CM_Set_HW_Prof_Flags WINELIB_NAME_AW(CM_Set_HW_Prof_Flags)
CONFIGRET WINAPI CM_Set_HW_Prof_Flags_ExA( DEVINSTID_A, ULONG, ULONG, ULONG, HMACHINE );
CONFIGRET WINAPI CM_Set_HW_Prof_Flags_ExW( DEVINSTID_W, ULONG, ULONG, ULONG, HMACHINE );
#define     CM_Set_HW_Prof_Flags_Ex WINELIB_NAME_AW(CM_Set_HW_Prof_Flags_Ex)
CONFIGRET WINAPI CM_Setup_DevNode( DEVINST, ULONG );
CONFIGRET WINAPI CM_Setup_DevNode_Ex( DEVINST, ULONG, HMACHINE );

CONFIGRET WINAPI CM_Uninstall_DevNode( DEVINST, ULONG );
CONFIGRET WINAPI CM_Uninstall_DevNode_Ex( DEVINST, ULONG, HMACHINE );

#endif /* _CFGMGR32_H_ */
