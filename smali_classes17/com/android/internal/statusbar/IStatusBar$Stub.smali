.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_abortTransient:I = 0x31

.field static final TRANSACTION_addQsTile:I = 0x21

.field static final TRANSACTION_animateCollapsePanels:I = 0x7

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final TRANSACTION_appTransitionCancelled:I = 0x17

.field static final TRANSACTION_appTransitionFinished:I = 0x19

.field static final TRANSACTION_appTransitionPending:I = 0x16

.field static final TRANSACTION_appTransitionStarting:I = 0x18

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_clickQsTile:I = 0x23

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_dismissInattentiveSleepWarning:I = 0x33

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x14

.field static final TRANSACTION_handleSystemKey:I = 0x24

.field static final TRANSACTION_hideAuthenticationDialog:I = 0x2c

.field static final TRANSACTION_hideRecentApps:I = 0xe

.field static final TRANSACTION_hideToast:I = 0x35

.field static final TRANSACTION_onBiometricAuthenticated:I = 0x29

.field static final TRANSACTION_onBiometricError:I = 0x2b

.field static final TRANSACTION_onBiometricHelp:I = 0x2a

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1c

.field static final TRANSACTION_onDisplayReady:I = 0x2d

.field static final TRANSACTION_onProposedRotationChanged:I = 0x1f

.field static final TRANSACTION_onRecentsAnimationStateChanged:I = 0x2e

.field static final TRANSACTION_onSystemBarAppearanceChanged:I = 0x2f

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_remQsTile:I = 0x22

.field static final TRANSACTION_removeIcon:I = 0x3

.field static final TRANSACTION_setIcon:I = 0x2

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setStatus:I = 0x1

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x20

.field static final TRANSACTION_setWindowState:I = 0xc

.field static final TRANSACTION_showAssistDisclosure:I = 0x1a

.field static final TRANSACTION_showAuthenticationDialog:I = 0x28

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1e

.field static final TRANSACTION_showInattentiveSleepWarning:I = 0x32

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1d

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x25

.field static final TRANSACTION_showPinningEscapeToast:I = 0x26

.field static final TRANSACTION_showRecentApps:I = 0xd

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_showShutdownUi:I = 0x27

.field static final TRANSACTION_showToast:I = 0x34

.field static final TRANSACTION_showTransient:I = 0x30

.field static final TRANSACTION_showWirelessChargingAnimation:I = 0x9

.field static final TRANSACTION_startAssist:I = 0x1b

.field static final TRANSACTION_startTracing:I = 0x36

.field static final TRANSACTION_stopTracing:I = 0x37

.field static final TRANSACTION_suppressAmbientDisplay:I = 0x38

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_togglePanel:I = 0x8

.field static final TRANSACTION_toggleRecentApps:I = 0xf

.field static final TRANSACTION_toggleSplitScreen:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBar;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/statusbar/IStatusBar;
    .registers 1

    sget-object v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_d4

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "stopTracing"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "startTracing"

    return-object v0

    :pswitch_11
    const-string v0, "hideToast"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "showToast"

    return-object v0

    :pswitch_18
    const-string v0, "dismissInattentiveSleepWarning"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "showInattentiveSleepWarning"

    return-object v0

    :pswitch_1f
    const-string v0, "abortTransient"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "showTransient"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "onSystemBarAppearanceChanged"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "onRecentsAnimationStateChanged"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "onDisplayReady"

    return-object v0

    :pswitch_32
    const-string v0, "hideAuthenticationDialog"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "onBiometricError"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "onBiometricHelp"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "onBiometricAuthenticated"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "showAuthenticationDialog"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "showShutdownUi"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    :pswitch_51
    const-string v0, "handleSystemKey"

    return-object v0

    :pswitch_54
    const-string v0, "clickQsTile"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "remQsTile"

    return-object v0

    :pswitch_5b
    const-string v0, "addQsTile"

    return-object v0

    :pswitch_5e
    const-string/jumbo v0, "setTopAppHidesStatusBar"

    return-object v0

    :pswitch_62
    const-string/jumbo v0, "onProposedRotationChanged"

    return-object v0

    :pswitch_66
    const-string/jumbo v0, "showGlobalActionsMenu"

    return-object v0

    :pswitch_6a
    const-string/jumbo v0, "showPictureInPictureMenu"

    return-object v0

    :pswitch_6e
    const-string/jumbo v0, "onCameraLaunchGestureDetected"

    return-object v0

    :pswitch_72
    const-string/jumbo v0, "startAssist"

    return-object v0

    :pswitch_76
    const-string/jumbo v0, "showAssistDisclosure"

    return-object v0

    :pswitch_7a
    const-string v0, "appTransitionFinished"

    return-object v0

    :pswitch_7d
    const-string v0, "appTransitionStarting"

    return-object v0

    :pswitch_80
    const-string v0, "appTransitionCancelled"

    return-object v0

    :pswitch_83
    const-string v0, "appTransitionPending"

    return-object v0

    :pswitch_86
    const-string/jumbo v0, "toggleKeyboardShortcutsMenu"

    return-object v0

    :pswitch_8a
    const-string v0, "dismissKeyboardShortcutsMenu"

    return-object v0

    :pswitch_8d
    const-string/jumbo v0, "showScreenPinningRequest"

    return-object v0

    :pswitch_91
    const-string v0, "cancelPreloadRecentApps"

    return-object v0

    :pswitch_94
    const-string/jumbo v0, "preloadRecentApps"

    return-object v0

    :pswitch_98
    const-string/jumbo v0, "toggleSplitScreen"

    return-object v0

    :pswitch_9c
    const-string/jumbo v0, "toggleRecentApps"

    return-object v0

    :pswitch_a0
    const-string v0, "hideRecentApps"

    return-object v0

    :pswitch_a3
    const-string/jumbo v0, "showRecentApps"

    return-object v0

    :pswitch_a7
    const-string/jumbo v0, "setWindowState"

    return-object v0

    :pswitch_ab
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    :pswitch_af
    const-string/jumbo v0, "topAppWindowChanged"

    return-object v0

    :pswitch_b3
    const-string/jumbo v0, "showWirelessChargingAnimation"

    return-object v0

    :pswitch_b7
    const-string/jumbo v0, "togglePanel"

    return-object v0

    :pswitch_bb
    const-string v0, "animateCollapsePanels"

    return-object v0

    :pswitch_be
    const-string v0, "animateExpandSettingsPanel"

    return-object v0

    :pswitch_c1
    const-string v0, "animateExpandNotificationsPanel"

    return-object v0

    :pswitch_c4
    const-string v0, "disable"

    return-object v0

    :pswitch_c7
    const-string/jumbo v0, "removeIcon"

    return-object v0

    :pswitch_cb
    const-string/jumbo v0, "setIcon"

    return-object v0

    :pswitch_cf
    const-string/jumbo v0, "setStatus"

    return-object v0

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
        :pswitch_a3
        :pswitch_a0
        :pswitch_9c
        :pswitch_98
        :pswitch_94
        :pswitch_91
        :pswitch_8d
        :pswitch_8a
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/internal/statusbar/IStatusBar;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBar;

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

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "com.android.internal.statusbar.IStatusBar"

    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v11, v0, :cond_3ae

    const/4 v0, 0x0

    packed-switch v11, :pswitch_data_3b4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_17
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    move v0, v14

    :cond_21
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->suppressAmbientDisplay(Z)V

    return v14

    :pswitch_25
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->stopTracing()V

    return v14

    :pswitch_2c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startTracing()V

    return v14

    :pswitch_33
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    return v14

    :pswitch_42
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    goto :goto_65

    :cond_62
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITransientNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotificationCallback;

    move-result-object v19

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V

    return v14

    :pswitch_86
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_90

    move v0, v14

    :cond_90
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissInattentiveSleepWarning(Z)V

    return v14

    :pswitch_94
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showInattentiveSleepWarning()V

    return v14

    :pswitch_9b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->abortTransient(I[I)V

    return v14

    :pswitch_aa
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTransient(I[I)V

    return v14

    :pswitch_b9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/android/internal/view/AppearanceRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/view/AppearanceRegion;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    move v0, v14

    :cond_d3
    invoke-virtual {v10, v1, v2, v3, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    return v14

    :pswitch_d7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e1

    move v0, v14

    :cond_e1
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onRecentsAnimationStateChanged(Z)V

    return v14

    :pswitch_e5
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onDisplayReady(I)V

    return v14

    :pswitch_f0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideAuthenticationDialog()V

    return v14

    :pswitch_f7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricError(III)V

    return v14

    :pswitch_10a
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricHelp(Ljava/lang/String;)V

    return v14

    :pswitch_115
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onBiometricAuthenticated()V

    return v14

    :pswitch_11c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12f

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v15, v1

    goto :goto_131

    :cond_12f
    const/4 v1, 0x0

    move-object v15, v1

    :goto_131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_145

    move v4, v14

    goto :goto_146

    :cond_145
    move v4, v0

    :goto_146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-wide/from16 v7, v20

    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V

    return v14

    :pswitch_169
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_173

    move v0, v14

    :cond_173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    return v14

    :pswitch_17b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEscapeToast()V

    return v14

    :pswitch_182
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18c

    move v0, v14

    :cond_18c
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPinningEnterExitToast(Z)V

    return v14

    :pswitch_190
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    return v14

    :pswitch_19b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ad

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1ae

    :cond_1ad
    const/4 v0, 0x0

    :goto_1ae
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    return v14

    :pswitch_1b2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1c5

    :cond_1c4
    const/4 v0, 0x0

    :goto_1c5
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    return v14

    :pswitch_1c9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1db

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1dc

    :cond_1db
    const/4 v0, 0x0

    :goto_1dc
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    return v14

    :pswitch_1e0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ea

    move v0, v14

    :cond_1ea
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    return v14

    :pswitch_1ee
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1fc

    move v0, v14

    :cond_1fc
    invoke-virtual {v10, v1, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onProposedRotationChanged(IZ)V

    return v14

    :pswitch_200
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    return v14

    :pswitch_207
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    return v14

    :pswitch_20e
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    return v14

    :pswitch_219
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_22c

    :cond_22b
    const/4 v0, 0x0

    :goto_22c
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    return v14

    :pswitch_230
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    return v14

    :pswitch_237
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished(I)V

    return v14

    :pswitch_242
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(IJJ)V

    return v14

    :pswitch_25a
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled(I)V

    return v14

    :pswitch_265
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending(I)V

    return v14

    :pswitch_270
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    return v14

    :pswitch_27b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    return v14

    :pswitch_282
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    return v14

    :pswitch_28d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    return v14

    :pswitch_294
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    return v14

    :pswitch_29b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    return v14

    :pswitch_2a2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    return v14

    :pswitch_2a9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b4

    move v1, v14

    goto :goto_2b5

    :cond_2b4
    move v1, v0

    :goto_2b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2bc

    move v0, v14

    :cond_2bc
    invoke-virtual {v10, v1, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    return v14

    :pswitch_2c0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2ca

    move v0, v14

    :cond_2ca
    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    return v14

    :pswitch_2ce
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(III)V

    return v14

    :pswitch_2e1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2fc

    move v5, v14

    goto :goto_2fd

    :cond_2fc
    move v5, v0

    :goto_2fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_305

    move v6, v14

    goto :goto_306

    :cond_305
    move v6, v0

    :goto_306
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZZ)V

    return v14

    :pswitch_310
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31f

    move v2, v14

    goto :goto_320

    :cond_31f
    move v2, v0

    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_327

    move v0, v14

    :cond_327
    invoke-virtual {v10, v1, v2, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(IZZ)V

    return v14

    :pswitch_32b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showWirelessChargingAnimation(I)V

    return v14

    :pswitch_336
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    return v14

    :pswitch_33d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    return v14

    :pswitch_344
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    return v14

    :pswitch_34f
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    return v14

    :pswitch_356
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(III)V

    return v14

    :pswitch_369
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    return v14

    :pswitch_374
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38a

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    goto :goto_38b

    :cond_38a
    const/4 v1, 0x0

    :goto_38b
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    return v14

    :pswitch_38f
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3a9

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_3aa

    :cond_3a9
    const/4 v2, 0x0

    :goto_3aa
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    return v14

    :cond_3ae
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_3b4
    .packed-switch 0x1
        :pswitch_38f
        :pswitch_374
        :pswitch_369
        :pswitch_356
        :pswitch_34f
        :pswitch_344
        :pswitch_33d
        :pswitch_336
        :pswitch_32b
        :pswitch_310
        :pswitch_2e1
        :pswitch_2ce
        :pswitch_2c0
        :pswitch_2a9
        :pswitch_2a2
        :pswitch_29b
        :pswitch_294
        :pswitch_28d
        :pswitch_282
        :pswitch_27b
        :pswitch_270
        :pswitch_265
        :pswitch_25a
        :pswitch_242
        :pswitch_237
        :pswitch_230
        :pswitch_219
        :pswitch_20e
        :pswitch_207
        :pswitch_200
        :pswitch_1ee
        :pswitch_1e0
        :pswitch_1c9
        :pswitch_1b2
        :pswitch_19b
        :pswitch_190
        :pswitch_182
        :pswitch_17b
        :pswitch_169
        :pswitch_11c
        :pswitch_115
        :pswitch_10a
        :pswitch_f7
        :pswitch_f0
        :pswitch_e5
        :pswitch_d7
        :pswitch_b9
        :pswitch_aa
        :pswitch_9b
        :pswitch_94
        :pswitch_86
        :pswitch_42
        :pswitch_33
        :pswitch_2c
        :pswitch_25
        :pswitch_17
    .end packed-switch
.end method
