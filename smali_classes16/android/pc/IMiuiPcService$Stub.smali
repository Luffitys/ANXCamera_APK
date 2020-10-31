.class public abstract Landroid/pc/IMiuiPcService$Stub;
.super Landroid/os/Binder;
.source "IMiuiPcService.java"

# interfaces
.implements Landroid/pc/IMiuiPcService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pc/IMiuiPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pc/IMiuiPcService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.pc.IMiuiPcService"

.field static final TRANSACTION_LaunchMKForWifiMode:I = 0x2

.field static final TRANSACTION_checkPermissionForHwMultiDisplay:I = 0x3

.field static final TRANSACTION_closeTopWindow:I = 0x4

.field static final TRANSACTION_dispatchKeyEventForExclusiveKeyboard:I = 0x5

.field static final TRANSACTION_execVoiceCmd:I = 0x6

.field static final TRANSACTION_forceDisplayMode:I = 0x7

.field static final TRANSACTION_getAllSupportPcAppList:I = 0x8

.field static final TRANSACTION_getCastMode:I = 0x9

.field static final TRANSACTION_getDisplayBitmap:I = 0xa

.field static final TRANSACTION_getFocusedDisplayId:I = 0xb

.field static final TRANSACTION_getPCDisplayId:I = 0xc

.field static final TRANSACTION_getPackageSupportPcState:I = 0xd

.field static final TRANSACTION_getPointerCoordinateAxis:I = 0xe

.field static final TRANSACTION_getTaskThumbnailEx:I = 0xf

.field static final TRANSACTION_getWindowState:I = 0x10

.field static final TRANSACTION_hideImeStatusIcon:I = 0x11

.field static final TRANSACTION_injectInputEventExternal:I = 0x14

.field static final TRANSACTION_isAvoidShowDefaultKeyguard:I = 0x15

.field static final TRANSACTION_isConnectExtDisplayFromPkg:I = 0x16

.field static final TRANSACTION_isDisallowLockScreenForHwMultiDisplay:I = 0x17

.field static final TRANSACTION_isFocusedOnWindowsCastDisplay:I = 0x18

.field static final TRANSACTION_isHiCarCastModeForClient:I = 0x19

.field static final TRANSACTION_isInSinkWindowsCastMode:I = 0x1a

.field static final TRANSACTION_isInWindowsCastMode:I = 0x1b

.field static final TRANSACTION_isPackageRunningOnPCMode:I = 0x1c

.field static final TRANSACTION_isPadAssistantMode:I = 0x1d

.field static final TRANSACTION_isScreenPowerOn:I = 0x1e

.field static final TRANSACTION_isSinkHasKeyboard:I = 0x1f

.field static final TRANSACTION_lockScreen:I = 0x20

.field static final TRANSACTION_miuiResizeTask:I = 0x12

.field static final TRANSACTION_miuiRestoreTask:I = 0x13

.field static final TRANSACTION_notifyDpState:I = 0x21

.field static final TRANSACTION_onTaskMovedToBack:I = 0x22

.field static final TRANSACTION_onTaskMovedToFront:I = 0x23

.field static final TRANSACTION_registMiuiSystemUIController:I = 0x24

.field static final TRANSACTION_relaunchIMEIfNecessary:I = 0x25

.field static final TRANSACTION_saveAppIntent:I = 0x26

.field static final TRANSACTION_saveNeedRestartAppIntent:I = 0x27

.field static final TRANSACTION_scheduleDisplayAdded:I = 0x28

.field static final TRANSACTION_scheduleDisplayChanged:I = 0x29

.field static final TRANSACTION_scheduleDisplayRemoved:I = 0x2a

.field static final TRANSACTION_screenshotPc:I = 0x2b

.field static final TRANSACTION_sendLockScreenShowViewMsg:I = 0x2c

.field static final TRANSACTION_setCustomPointerIcon:I = 0x2d

.field static final TRANSACTION_setIsInSinkWindowsCastMode:I = 0x2e

.field static final TRANSACTION_setIsSinkHasKeyboard:I = 0x2f

.field static final TRANSACTION_setNetworkReconnectionState:I = 0x30

.field static final TRANSACTION_setPadAssistant:I = 0x31

.field static final TRANSACTION_setPointerIconType:I = 0x32

.field static final TRANSACTION_setScreenPower:I = 0x33

.field static final TRANSACTION_shouldInterceptInputEvent:I = 0x34

.field static final TRANSACTION_showDialogForSwitchDisplay:I = 0x35

.field static final TRANSACTION_showImeStatusIcon:I = 0x36

.field static final TRANSACTION_showStartMenu:I = 0x37

.field static final TRANSACTION_showTopBar:I = 0x38

.field static final TRANSACTION_startPcLauncher:I = 0x1

.field static final TRANSACTION_toggleHome:I = 0x39

.field static final TRANSACTION_triggerRecentTaskSplitView:I = 0x3a

.field static final TRANSACTION_triggerSplitWindowPreviewLayer:I = 0x3b

.field static final TRANSACTION_triggerSwitchTaskView:I = 0x3c

.field static final TRANSACTION_updateFocusDisplayToWindowsCast:I = 0x3d

.field static final TRANSACTION_userActivityOnDesktop:I = 0x3e


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.pc.IMiuiPcService"

    invoke-virtual {p0, p0, v0}, Landroid/pc/IMiuiPcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/pc/IMiuiPcService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.pc.IMiuiPcService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/pc/IMiuiPcService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/pc/IMiuiPcService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/pc/IMiuiPcService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/pc/IMiuiPcService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/pc/IMiuiPcService;
    .registers 1

    sget-object v0, Landroid/pc/IMiuiPcService$Stub$Proxy;->sDefaultImpl:Landroid/pc/IMiuiPcService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_e0

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "userActivityOnDesktop"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "updateFocusDisplayToWindowsCast"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "triggerSwitchTaskView"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "triggerSplitWindowPreviewLayer"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "triggerRecentTaskSplitView"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "toggleHome"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "showTopBar"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "showStartMenu"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "showImeStatusIcon"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "showDialogForSwitchDisplay"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "shouldInterceptInputEvent"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "setScreenPower"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "setPointerIconType"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "setPadAssistant"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "setNetworkReconnectionState"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "setIsSinkHasKeyboard"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "setIsInSinkWindowsCastMode"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "setCustomPointerIcon"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "sendLockScreenShowViewMsg"

    return-object v0

    :pswitch_51
    const-string/jumbo v0, "screenshotPc"

    return-object v0

    :pswitch_55
    const-string/jumbo v0, "scheduleDisplayRemoved"

    return-object v0

    :pswitch_59
    const-string/jumbo v0, "scheduleDisplayChanged"

    return-object v0

    :pswitch_5d
    const-string/jumbo v0, "scheduleDisplayAdded"

    return-object v0

    :pswitch_61
    const-string/jumbo v0, "saveNeedRestartAppIntent"

    return-object v0

    :pswitch_65
    const-string/jumbo v0, "saveAppIntent"

    return-object v0

    :pswitch_69
    const-string/jumbo v0, "relaunchIMEIfNecessary"

    return-object v0

    :pswitch_6d
    const-string/jumbo v0, "registMiuiSystemUIController"

    return-object v0

    :pswitch_71
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    :pswitch_75
    const-string/jumbo v0, "onTaskMovedToBack"

    return-object v0

    :pswitch_79
    const-string/jumbo v0, "notifyDpState"

    return-object v0

    :pswitch_7d
    const-string v0, "lockScreen"

    return-object v0

    :pswitch_80
    const-string v0, "isSinkHasKeyboard"

    return-object v0

    :pswitch_83
    const-string v0, "isScreenPowerOn"

    return-object v0

    :pswitch_86
    const-string v0, "isPadAssistantMode"

    return-object v0

    :pswitch_89
    const-string v0, "isPackageRunningOnPCMode"

    return-object v0

    :pswitch_8c
    const-string v0, "isInWindowsCastMode"

    return-object v0

    :pswitch_8f
    const-string v0, "isInSinkWindowsCastMode"

    return-object v0

    :pswitch_92
    const-string v0, "isHiCarCastModeForClient"

    return-object v0

    :pswitch_95
    const-string v0, "isFocusedOnWindowsCastDisplay"

    return-object v0

    :pswitch_98
    const-string v0, "isDisallowLockScreenForHwMultiDisplay"

    return-object v0

    :pswitch_9b
    const-string v0, "isConnectExtDisplayFromPkg"

    return-object v0

    :pswitch_9e
    const-string v0, "isAvoidShowDefaultKeyguard"

    return-object v0

    :pswitch_a1
    const-string v0, "injectInputEventExternal"

    return-object v0

    :pswitch_a4
    const-string/jumbo v0, "miuiRestoreTask"

    return-object v0

    :pswitch_a8
    const-string/jumbo v0, "miuiResizeTask"

    return-object v0

    :pswitch_ac
    const-string v0, "hideImeStatusIcon"

    return-object v0

    :pswitch_af
    const-string v0, "getWindowState"

    return-object v0

    :pswitch_b2
    const-string v0, "getTaskThumbnailEx"

    return-object v0

    :pswitch_b5
    const-string v0, "getPointerCoordinateAxis"

    return-object v0

    :pswitch_b8
    const-string v0, "getPackageSupportPcState"

    return-object v0

    :pswitch_bb
    const-string v0, "getPCDisplayId"

    return-object v0

    :pswitch_be
    const-string v0, "getFocusedDisplayId"

    return-object v0

    :pswitch_c1
    const-string v0, "getDisplayBitmap"

    return-object v0

    :pswitch_c4
    const-string v0, "getCastMode"

    return-object v0

    :pswitch_c7
    const-string v0, "getAllSupportPcAppList"

    return-object v0

    :pswitch_ca
    const-string v0, "forceDisplayMode"

    return-object v0

    :pswitch_cd
    const-string v0, "execVoiceCmd"

    return-object v0

    :pswitch_d0
    const-string v0, "dispatchKeyEventForExclusiveKeyboard"

    return-object v0

    :pswitch_d3
    const-string v0, "closeTopWindow"

    return-object v0

    :pswitch_d6
    const-string v0, "checkPermissionForHwMultiDisplay"

    return-object v0

    :pswitch_d9
    const-string v0, "LaunchMKForWifiMode"

    return-object v0

    :pswitch_dc
    const-string/jumbo v0, "startPcLauncher"

    return-object v0

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/pc/IMiuiPcService;)Z
    .registers 3

    sget-object v0, Landroid/pc/IMiuiPcService$Stub$Proxy;->sDefaultImpl:Landroid/pc/IMiuiPcService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/pc/IMiuiPcService$Stub$Proxy;->sDefaultImpl:Landroid/pc/IMiuiPcService;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/pc/IMiuiPcService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.pc.IMiuiPcService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_440

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_444

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->userActivityOnDesktop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->updateFocusDisplayToWindowsCast()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    move v1, v2

    :cond_2f
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->triggerSwitchTaskView(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->triggerSplitWindowPreviewLayer(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->triggerRecentTaskSplitView(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->toggleHome()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->showTopBar()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->showStartMenu()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->showImeStatusIcon(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->showDialogForSwitchDisplay(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_ae

    sget-object v3, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    goto :goto_af

    :cond_ae
    const/4 v3, 0x0

    :goto_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    move v1, v2

    :cond_b6
    invoke-virtual {p0, v3, v1}, Landroid/pc/IMiuiPcService$Stub;->shouldInterceptInputEvent(Landroid/view/KeyEvent;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cb

    move v1, v2

    :cond_cb
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->setScreenPower(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e0

    move v1, v2

    :cond_e0
    invoke-virtual {p0, v3, v1}, Landroid/pc/IMiuiPcService$Stub;->setPointerIconType(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f1

    move v1, v2

    :cond_f1
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->setPadAssistant(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_102

    move v1, v2

    :cond_102
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->setNetworkReconnectionState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_113

    move v1, v2

    :cond_113
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->setIsSinkHasKeyboard(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_124

    move v1, v2

    :cond_124
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->setIsInSinkWindowsCastMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_12b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13d

    sget-object v3, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PointerIcon;

    goto :goto_13e

    :cond_13d
    const/4 v3, 0x0

    :goto_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_145

    move v1, v2

    :cond_145
    invoke-virtual {p0, v3, v1}, Landroid/pc/IMiuiPcService$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->sendLockScreenShowViewMsg()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->screenshotPc()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->scheduleDisplayRemoved(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_16e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->scheduleDisplayChanged(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_17c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->scheduleDisplayAdded(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_18a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->saveNeedRestartAppIntent(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_19a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->saveAppIntent(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->relaunchIMEIfNecessary()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1b4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c6

    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    goto :goto_1c7

    :cond_1c6
    const/4 v1, 0x0

    :goto_1c7
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->registMiuiSystemUIController(Landroid/os/Messenger;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1ce
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->onTaskMovedToFront(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1dc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->onTaskMovedToBack(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1ea
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f4

    move v1, v2

    :cond_1f4
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->notifyDpState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1fb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_205

    move v1, v2

    :cond_205
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->lockScreen(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_20c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isSinkHasKeyboard()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_21a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isScreenPowerOn()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_228
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isPadAssistantMode()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_236
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->isPackageRunningOnPCMode(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_24c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isInWindowsCastMode()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_25a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isInSinkWindowsCastMode()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_268
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isHiCarCastModeForClient()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_276
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isFocusedOnWindowsCastDisplay()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_284
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->isDisallowLockScreenForHwMultiDisplay()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_292
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->isConnectExtDisplayFromPkg(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2a4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->isAvoidShowDefaultKeyguard(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2b6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c8

    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    goto :goto_2c9

    :cond_2c8
    const/4 v1, 0x0

    :goto_2c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->injectInputEventExternal(Landroid/view/InputEvent;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/pc/IMiuiPcService$Stub;->miuiRestoreTask(IFF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_304

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_305

    :cond_304
    const/4 v3, 0x0

    :goto_305
    invoke-virtual {p0, v1, v3}, Landroid/pc/IMiuiPcService$Stub;->miuiResizeTask(ILandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_30c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->hideImeStatusIcon(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_31a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->getWindowState(Landroid/os/IBinder;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_32c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/pc/IMiuiPcService$Stub;->getTaskThumbnailEx(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_343

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_346

    :cond_343
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_346
    return v2

    :pswitch_347
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->getPointerCoordinateAxis()[F

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v2

    :pswitch_355
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->getPackageSupportPcState(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_367
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->getPCDisplayId()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_375
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->getFocusedDisplayId()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_383
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/pc/IMiuiPcService$Stub;->getDisplayBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3a2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a5

    :cond_3a2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3a5
    return v2

    :pswitch_3a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->getCastMode()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3b4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->getAllSupportPcAppList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_3c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->forceDisplayMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e6

    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    goto :goto_3e7

    :cond_3e6
    const/4 v1, 0x0

    :goto_3e7
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->execVoiceCmd(Landroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3ee
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_400

    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    goto :goto_401

    :cond_400
    const/4 v1, 0x0

    :goto_401
    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->dispatchKeyEventForExclusiveKeyboard(Landroid/view/KeyEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_408
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->closeTopWindow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_412
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->checkPermissionForHwMultiDisplay(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_424
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/pc/IMiuiPcService$Stub;->LaunchMKForWifiMode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_42e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/pc/IMiuiPcService$Stub;->startPcLauncher(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_440
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_444
    .packed-switch 0x1
        :pswitch_42e
        :pswitch_424
        :pswitch_412
        :pswitch_408
        :pswitch_3ee
        :pswitch_3d4
        :pswitch_3c2
        :pswitch_3b4
        :pswitch_3a6
        :pswitch_383
        :pswitch_375
        :pswitch_367
        :pswitch_355
        :pswitch_347
        :pswitch_32c
        :pswitch_31a
        :pswitch_30c
        :pswitch_2ee
        :pswitch_2d8
        :pswitch_2b6
        :pswitch_2a4
        :pswitch_292
        :pswitch_284
        :pswitch_276
        :pswitch_268
        :pswitch_25a
        :pswitch_24c
        :pswitch_236
        :pswitch_228
        :pswitch_21a
        :pswitch_20c
        :pswitch_1fb
        :pswitch_1ea
        :pswitch_1dc
        :pswitch_1ce
        :pswitch_1b4
        :pswitch_1aa
        :pswitch_19a
        :pswitch_18a
        :pswitch_17c
        :pswitch_16e
        :pswitch_160
        :pswitch_156
        :pswitch_14c
        :pswitch_12b
        :pswitch_11a
        :pswitch_109
        :pswitch_f8
        :pswitch_e7
        :pswitch_d2
        :pswitch_c1
        :pswitch_9c
        :pswitch_8a
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
        :pswitch_48
        :pswitch_36
        :pswitch_25
        :pswitch_1b
        :pswitch_11
    .end packed-switch
.end method
