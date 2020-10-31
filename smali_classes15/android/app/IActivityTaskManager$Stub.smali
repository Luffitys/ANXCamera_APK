.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityTaskManager"

.field static final TRANSACTION_activityDestroyed:I = 0x17

.field static final TRANSACTION_activityIdle:I = 0x12

.field static final TRANSACTION_activityPaused:I = 0x15

.field static final TRANSACTION_activityRelaunched:I = 0x18

.field static final TRANSACTION_activityResumed:I = 0x13

.field static final TRANSACTION_activityStopped:I = 0x16

.field static final TRANSACTION_activityTopResumedStateLost:I = 0x14

.field static final TRANSACTION_addAppTask:I = 0x4b

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x8e

.field static final TRANSACTION_cancelRecentsAnimation:I = 0x3c

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x80

.field static final TRANSACTION_castRotationChanged:I = 0xa3

.field static final TRANSACTION_clearLaunchParamsForPackages:I = 0x99

.field static final TRANSACTION_convertFromTranslucent:I = 0x2b

.field static final TRANSACTION_convertToTranslucent:I = 0x2c

.field static final TRANSACTION_dismissKeyguard:I = 0x7f

.field static final TRANSACTION_enterPictureInPictureMode:I = 0x72

.field static final TRANSACTION_exitCastMode:I = 0xa5

.field static final TRANSACTION_finishActivity:I = 0x10

.field static final TRANSACTION_finishActivityAffinity:I = 0x11

.field static final TRANSACTION_finishSubActivity:I = 0x26

.field static final TRANSACTION_finishVoiceTask:I = 0x47

.field static final TRANSACTION_getActivityClassForToken:I = 0x6c

.field static final TRANSACTION_getActivityOptions:I = 0x43

.field static final TRANSACTION_getAllStackInfos:I = 0x5e

.field static final TRANSACTION_getAllStackInfosOnDisplay:I = 0x60

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0x4c

.field static final TRANSACTION_getAppTasks:I = 0x44

.field static final TRANSACTION_getAssistContextExtras:I = 0x63

.field static final TRANSACTION_getCallingActivity:I = 0x1c

.field static final TRANSACTION_getCallingPackage:I = 0x1b

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x7e

.field static final TRANSACTION_getDisplayId:I = 0x2f

.field static final TRANSACTION_getFilteredTasks:I = 0x21

.field static final TRANSACTION_getFocusedStackInfo:I = 0x3a

.field static final TRANSACTION_getFreeformScale:I = 0x9f

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x19

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x84

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x37

.field static final TRANSACTION_getLaunchedFromUid:I = 0x36

.field static final TRANSACTION_getLockTaskModeState:I = 0x41

.field static final TRANSACTION_getMaxNumPictureInPictureActions:I = 0x75

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x97

.field static final TRANSACTION_getPackageForToken:I = 0x6d

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x95

.field static final TRANSACTION_getRecentTasks:I = 0x27

.field static final TRANSACTION_getRequestedOrientation:I = 0x2a

.field static final TRANSACTION_getStackInfo:I = 0x5f

.field static final TRANSACTION_getStackInfoOnDisplay:I = 0x61

.field static final TRANSACTION_getTaskBounds:I = 0x3b

.field static final TRANSACTION_getTaskDescription:I = 0x34

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0x50

.field static final TRANSACTION_getTaskForActivity:I = 0x25

.field static final TRANSACTION_getTaskResizeableForFreeform:I = 0x54

.field static final TRANSACTION_getTaskSnapshot:I = 0x81

.field static final TRANSACTION_getTasks:I = 0x20

.field static final TRANSACTION_getTopVisibleActivity:I = 0x9d

.field static final TRANSACTION_getUriPermissionOwnerForActivity:I = 0x76

.field static final TRANSACTION_getWindowOrganizerController:I = 0x78

.field static final TRANSACTION_handleFreeformModeRequst:I = 0x9e

.field static final TRANSACTION_invalidateHomeTaskSnapshot:I = 0x83

.field static final TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xe

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0x67

.field static final TRANSACTION_isImmersive:I = 0x30

.field static final TRANSACTION_isInLockTaskMode:I = 0x40

.field static final TRANSACTION_isInSplitScreenWindowingMode:I = 0xa2

.field static final TRANSACTION_isRootVoiceInteraction:I = 0x69

.field static final TRANSACTION_isTopActivityImmersive:I = 0x32

.field static final TRANSACTION_isTopActivityInFreeform:I = 0xa1

.field static final TRANSACTION_isTopOfTask:I = 0x48

.field static final TRANSACTION_keyguardGoingAway:I = 0x6b

.field static final TRANSACTION_launchAssistIntent:I = 0x64

.field static final TRANSACTION_launchSmallFreeFormWindow:I = 0xa0

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x33

.field static final TRANSACTION_moveStackToDisplay:I = 0x57

.field static final TRANSACTION_moveTaskToFront:I = 0x24

.field static final TRANSACTION_moveTaskToStack:I = 0x5a

.field static final TRANSACTION_moveTopActivityToCastMode:I = 0xa4

.field static final TRANSACTION_moveTopActivityToPinnedStack:I = 0x71

.field static final TRANSACTION_navigateUpTo:I = 0x23

.field static final TRANSACTION_notifyActivityDrawn:I = 0x2d

.field static final TRANSACTION_notifyEnterAnimationComplete:I = 0x4a

.field static final TRANSACTION_notifyLaunchTaskBehindComplete:I = 0x49

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x9c

.field static final TRANSACTION_overridePendingTransition:I = 0x35

.field static final TRANSACTION_positionTaskInStack:I = 0x6e

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x8c

.field static final TRANSACTION_registerRemoteAnimations:I = 0x8a

.field static final TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x8d

.field static final TRANSACTION_registerTaskStackListener:I = 0x51

.field static final TRANSACTION_releaseActivityInstance:I = 0x4d

.field static final TRANSACTION_releaseSomeActivities:I = 0x4f

.field static final TRANSACTION_removeAllVisibleRecentTasks:I = 0x1f

.field static final TRANSACTION_removeStack:I = 0x58

.field static final TRANSACTION_removeStacksInWindowingModes:I = 0x5c

.field static final TRANSACTION_removeStacksWithActivityTypes:I = 0x5d

.field static final TRANSACTION_removeTask:I = 0x1e

.field static final TRANSACTION_reportActivityFullyDrawn:I = 0x2e

.field static final TRANSACTION_reportAssistContextExtras:I = 0x38

.field static final TRANSACTION_reportSizeConfigurations:I = 0x6f

.field static final TRANSACTION_requestAssistContextExtras:I = 0x65

.field static final TRANSACTION_requestAutofillData:I = 0x66

.field static final TRANSACTION_requestPictureInPictureMode:I = 0x74

.field static final TRANSACTION_requestStartActivityPermissionToken:I = 0x4e

.field static final TRANSACTION_resizeDockedStack:I = 0x77

.field static final TRANSACTION_resizeTask:I = 0x56

.field static final TRANSACTION_restartActivityProcessIfVisible:I = 0x9b

.field static final TRANSACTION_resumeAppSwitches:I = 0x92

.field static final TRANSACTION_setActivityController:I = 0x93

.field static final TRANSACTION_setDisablePreviewScreenshots:I = 0x82

.field static final TRANSACTION_setDisplayToSingleTaskInstance:I = 0x9a

.field static final TRANSACTION_setFocusedStack:I = 0x39

.field static final TRANSACTION_setFocusedTask:I = 0x1d

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x1a

.field static final TRANSACTION_setImmersive:I = 0x31

.field static final TRANSACTION_setInheritShowWhenLocked:I = 0x88

.field static final TRANSACTION_setLockScreenShown:I = 0x62

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x98

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x96

.field static final TRANSACTION_setPersistentVrThread:I = 0x90

.field static final TRANSACTION_setPictureInPictureParams:I = 0x73

.field static final TRANSACTION_setRequestedOrientation:I = 0x29

.field static final TRANSACTION_setShowWhenLocked:I = 0x87

.field static final TRANSACTION_setSplitScreenResizing:I = 0x79

.field static final TRANSACTION_setTaskDescription:I = 0x42

.field static final TRANSACTION_setTaskResizeable:I = 0x53

.field static final TRANSACTION_setTaskWindowingMode:I = 0x59

.field static final TRANSACTION_setTaskWindowingModeSplitScreenPrimary:I = 0x5b

.field static final TRANSACTION_setTurnScreenOn:I = 0x89

.field static final TRANSACTION_setVoiceKeepAwake:I = 0x94

.field static final TRANSACTION_setVrMode:I = 0x7a

.field static final TRANSACTION_setVrThread:I = 0x8f

.field static final TRANSACTION_shouldUpRecreateTask:I = 0x22

.field static final TRANSACTION_showAssistFromActivity:I = 0x68

.field static final TRANSACTION_showLockTaskEscapeMessage:I = 0x6a

.field static final TRANSACTION_startActivities:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x1

.field static final TRANSACTION_startActivityAndWait:I = 0x7

.field static final TRANSACTION_startActivityAsCaller:I = 0xd

.field static final TRANSACTION_startActivityAsUser:I = 0x3

.field static final TRANSACTION_startActivityFromRecents:I = 0xc

.field static final TRANSACTION_startActivityIntentSender:I = 0x6

.field static final TRANSACTION_startActivityWithConfig:I = 0x8

.field static final TRANSACTION_startAssistantActivity:I = 0xa

.field static final TRANSACTION_startDreamActivity:I = 0x5

.field static final TRANSACTION_startLocalVoiceInteraction:I = 0x7b

.field static final TRANSACTION_startLockTaskModeByToken:I = 0x3d

.field static final TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final TRANSACTION_startRecentsActivity:I = 0xb

.field static final TRANSACTION_startSystemLockTaskMode:I = 0x45

.field static final TRANSACTION_startVoiceActivity:I = 0x9

.field static final TRANSACTION_stopAppSwitches:I = 0x91

.field static final TRANSACTION_stopLocalVoiceInteraction:I = 0x7c

.field static final TRANSACTION_stopLockTaskModeByToken:I = 0x3e

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0x46

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x7d

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0x70

.field static final TRANSACTION_toggleFreeformWindowingMode:I = 0x55

.field static final TRANSACTION_unhandledBack:I = 0xf

.field static final TRANSACTION_unregisterRemoteAnimations:I = 0x8b

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x52

.field static final TRANSACTION_updateConfiguration:I = 0x85

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x86

.field static final TRANSACTION_updateLockTaskPackages:I = 0x3f

.field static final TRANSACTION_willActivityBeVisible:I = 0x28


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IActivityTaskManager;
    .registers 1

    sget-object v0, Landroid/app/IActivityTaskManager$Stub$Proxy;->sDefaultImpl:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_246

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string v0, "exitCastMode"

    return-object v0

    :pswitch_8
    const-string v0, "moveTopActivityToCastMode"

    return-object v0

    :pswitch_b
    const-string v0, "castRotationChanged"

    return-object v0

    :pswitch_e
    const-string v0, "isInSplitScreenWindowingMode"

    return-object v0

    :pswitch_11
    const-string v0, "isTopActivityInFreeform"

    return-object v0

    :pswitch_14
    const-string v0, "launchSmallFreeFormWindow"

    return-object v0

    :pswitch_17
    const-string v0, "getFreeformScale"

    return-object v0

    :pswitch_1a
    const-string v0, "handleFreeformModeRequst"

    return-object v0

    :pswitch_1d
    const-string v0, "getTopVisibleActivity"

    return-object v0

    :pswitch_20
    const-string v0, "onBackPressedOnTaskRoot"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "restartActivityProcessIfVisible"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "setDisplayToSingleTaskInstance"

    return-object v0

    :pswitch_2b
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    :pswitch_32
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    :pswitch_39
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "setActivityController"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "setVrThread"

    return-object v0

    :pswitch_54
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    :pswitch_5b
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    :pswitch_5f
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    :pswitch_63
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    :pswitch_67
    const-string/jumbo v0, "setTurnScreenOn"

    return-object v0

    :pswitch_6b
    const-string/jumbo v0, "setInheritShowWhenLocked"

    return-object v0

    :pswitch_6f
    const-string/jumbo v0, "setShowWhenLocked"

    return-object v0

    :pswitch_73
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    :pswitch_77
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    :pswitch_7b
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    :pswitch_7e
    const-string v0, "invalidateHomeTaskSnapshot"

    return-object v0

    :pswitch_81
    const-string/jumbo v0, "setDisablePreviewScreenshots"

    return-object v0

    :pswitch_85
    const-string v0, "getTaskSnapshot"

    return-object v0

    :pswitch_88
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    :pswitch_8b
    const-string v0, "dismissKeyguard"

    return-object v0

    :pswitch_8e
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    :pswitch_91
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    :pswitch_95
    const-string/jumbo v0, "stopLocalVoiceInteraction"

    return-object v0

    :pswitch_99
    const-string/jumbo v0, "startLocalVoiceInteraction"

    return-object v0

    :pswitch_9d
    const-string/jumbo v0, "setVrMode"

    return-object v0

    :pswitch_a1
    const-string/jumbo v0, "setSplitScreenResizing"

    return-object v0

    :pswitch_a5
    const-string v0, "getWindowOrganizerController"

    return-object v0

    :pswitch_a8
    const-string/jumbo v0, "resizeDockedStack"

    return-object v0

    :pswitch_ac
    const-string v0, "getUriPermissionOwnerForActivity"

    return-object v0

    :pswitch_af
    const-string v0, "getMaxNumPictureInPictureActions"

    return-object v0

    :pswitch_b2
    const-string/jumbo v0, "requestPictureInPictureMode"

    return-object v0

    :pswitch_b6
    const-string/jumbo v0, "setPictureInPictureParams"

    return-object v0

    :pswitch_ba
    const-string v0, "enterPictureInPictureMode"

    return-object v0

    :pswitch_bd
    const-string v0, "moveTopActivityToPinnedStack"

    return-object v0

    :pswitch_c0
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    :pswitch_c4
    const-string/jumbo v0, "reportSizeConfigurations"

    return-object v0

    :pswitch_c8
    const-string/jumbo v0, "positionTaskInStack"

    return-object v0

    :pswitch_cc
    const-string v0, "getPackageForToken"

    return-object v0

    :pswitch_cf
    const-string v0, "getActivityClassForToken"

    return-object v0

    :pswitch_d2
    const-string v0, "keyguardGoingAway"

    return-object v0

    :pswitch_d5
    const-string/jumbo v0, "showLockTaskEscapeMessage"

    return-object v0

    :pswitch_d9
    const-string v0, "isRootVoiceInteraction"

    return-object v0

    :pswitch_dc
    const-string/jumbo v0, "showAssistFromActivity"

    return-object v0

    :pswitch_e0
    const-string v0, "isAssistDataAllowedOnCurrentActivity"

    return-object v0

    :pswitch_e3
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    :pswitch_e7
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    :pswitch_eb
    const-string v0, "launchAssistIntent"

    return-object v0

    :pswitch_ee
    const-string v0, "getAssistContextExtras"

    return-object v0

    :pswitch_f1
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    :pswitch_f5
    const-string v0, "getStackInfoOnDisplay"

    return-object v0

    :pswitch_f8
    const-string v0, "getAllStackInfosOnDisplay"

    return-object v0

    :pswitch_fb
    const-string v0, "getStackInfo"

    return-object v0

    :pswitch_fe
    const-string v0, "getAllStackInfos"

    return-object v0

    :pswitch_101
    const-string/jumbo v0, "removeStacksWithActivityTypes"

    return-object v0

    :pswitch_105
    const-string/jumbo v0, "removeStacksInWindowingModes"

    return-object v0

    :pswitch_109
    const-string/jumbo v0, "setTaskWindowingModeSplitScreenPrimary"

    return-object v0

    :pswitch_10d
    const-string v0, "moveTaskToStack"

    return-object v0

    :pswitch_110
    const-string/jumbo v0, "setTaskWindowingMode"

    return-object v0

    :pswitch_114
    const-string/jumbo v0, "removeStack"

    return-object v0

    :pswitch_118
    const-string v0, "moveStackToDisplay"

    return-object v0

    :pswitch_11b
    const-string/jumbo v0, "resizeTask"

    return-object v0

    :pswitch_11f
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    :pswitch_123
    const-string v0, "getTaskResizeableForFreeform"

    return-object v0

    :pswitch_126
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    :pswitch_12a
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    :pswitch_12e
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    :pswitch_132
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    :pswitch_135
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    :pswitch_139
    const-string/jumbo v0, "requestStartActivityPermissionToken"

    return-object v0

    :pswitch_13d
    const-string/jumbo v0, "releaseActivityInstance"

    return-object v0

    :pswitch_141
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    :pswitch_144
    const-string v0, "addAppTask"

    return-object v0

    :pswitch_147
    const-string v0, "notifyEnterAnimationComplete"

    return-object v0

    :pswitch_14a
    const-string v0, "notifyLaunchTaskBehindComplete"

    return-object v0

    :pswitch_14d
    const-string v0, "isTopOfTask"

    return-object v0

    :pswitch_150
    const-string v0, "finishVoiceTask"

    return-object v0

    :pswitch_153
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    :pswitch_157
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    :pswitch_15b
    const-string v0, "getAppTasks"

    return-object v0

    :pswitch_15e
    const-string v0, "getActivityOptions"

    return-object v0

    :pswitch_161
    const-string/jumbo v0, "setTaskDescription"

    return-object v0

    :pswitch_165
    const-string v0, "getLockTaskModeState"

    return-object v0

    :pswitch_168
    const-string v0, "isInLockTaskMode"

    return-object v0

    :pswitch_16b
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    :pswitch_16f
    const-string/jumbo v0, "stopLockTaskModeByToken"

    return-object v0

    :pswitch_173
    const-string/jumbo v0, "startLockTaskModeByToken"

    return-object v0

    :pswitch_177
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    :pswitch_17a
    const-string v0, "getTaskBounds"

    return-object v0

    :pswitch_17d
    const-string v0, "getFocusedStackInfo"

    return-object v0

    :pswitch_180
    const-string/jumbo v0, "setFocusedStack"

    return-object v0

    :pswitch_184
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    :pswitch_188
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    :pswitch_18b
    const-string v0, "getLaunchedFromUid"

    return-object v0

    :pswitch_18e
    const-string/jumbo v0, "overridePendingTransition"

    return-object v0

    :pswitch_192
    const-string v0, "getTaskDescription"

    return-object v0

    :pswitch_195
    const-string v0, "moveActivityTaskToBack"

    return-object v0

    :pswitch_198
    const-string v0, "isTopActivityImmersive"

    return-object v0

    :pswitch_19b
    const-string/jumbo v0, "setImmersive"

    return-object v0

    :pswitch_19f
    const-string v0, "isImmersive"

    return-object v0

    :pswitch_1a2
    const-string v0, "getDisplayId"

    return-object v0

    :pswitch_1a5
    const-string/jumbo v0, "reportActivityFullyDrawn"

    return-object v0

    :pswitch_1a9
    const-string v0, "notifyActivityDrawn"

    return-object v0

    :pswitch_1ac
    const-string v0, "convertToTranslucent"

    return-object v0

    :pswitch_1af
    const-string v0, "convertFromTranslucent"

    return-object v0

    :pswitch_1b2
    const-string v0, "getRequestedOrientation"

    return-object v0

    :pswitch_1b5
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    :pswitch_1b9
    const-string/jumbo v0, "willActivityBeVisible"

    return-object v0

    :pswitch_1bd
    const-string v0, "getRecentTasks"

    return-object v0

    :pswitch_1c0
    const-string v0, "finishSubActivity"

    return-object v0

    :pswitch_1c3
    const-string v0, "getTaskForActivity"

    return-object v0

    :pswitch_1c6
    const-string v0, "moveTaskToFront"

    return-object v0

    :pswitch_1c9
    const-string v0, "navigateUpTo"

    return-object v0

    :pswitch_1cc
    const-string/jumbo v0, "shouldUpRecreateTask"

    return-object v0

    :pswitch_1d0
    const-string v0, "getFilteredTasks"

    return-object v0

    :pswitch_1d3
    const-string v0, "getTasks"

    return-object v0

    :pswitch_1d6
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    :pswitch_1da
    const-string/jumbo v0, "removeTask"

    return-object v0

    :pswitch_1de
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    :pswitch_1e2
    const-string v0, "getCallingActivity"

    return-object v0

    :pswitch_1e5
    const-string v0, "getCallingPackage"

    return-object v0

    :pswitch_1e8
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_1ec
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_1ef
    const-string v0, "activityRelaunched"

    return-object v0

    :pswitch_1f2
    const-string v0, "activityDestroyed"

    return-object v0

    :pswitch_1f5
    const-string v0, "activityStopped"

    return-object v0

    :pswitch_1f8
    const-string v0, "activityPaused"

    return-object v0

    :pswitch_1fb
    const-string v0, "activityTopResumedStateLost"

    return-object v0

    :pswitch_1fe
    const-string v0, "activityResumed"

    return-object v0

    :pswitch_201
    const-string v0, "activityIdle"

    return-object v0

    :pswitch_204
    const-string v0, "finishActivityAffinity"

    return-object v0

    :pswitch_207
    const-string v0, "finishActivity"

    return-object v0

    :pswitch_20a
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    :pswitch_20e
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    :pswitch_211
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    :pswitch_215
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    :pswitch_219
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    :pswitch_21d
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    :pswitch_221
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    :pswitch_225
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    :pswitch_229
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    :pswitch_22d
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    :pswitch_231
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    :pswitch_235
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    :pswitch_239
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    :pswitch_23d
    const-string/jumbo v0, "startActivities"

    return-object v0

    :pswitch_241
    const-string/jumbo v0, "startActivity"

    return-object v0

    nop

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_241
        :pswitch_23d
        :pswitch_239
        :pswitch_235
        :pswitch_231
        :pswitch_22d
        :pswitch_229
        :pswitch_225
        :pswitch_221
        :pswitch_21d
        :pswitch_219
        :pswitch_215
        :pswitch_211
        :pswitch_20e
        :pswitch_20a
        :pswitch_207
        :pswitch_204
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fb
        :pswitch_1f8
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e5
        :pswitch_1e2
        :pswitch_1de
        :pswitch_1da
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c9
        :pswitch_1c6
        :pswitch_1c3
        :pswitch_1c0
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a2
        :pswitch_19f
        :pswitch_19b
        :pswitch_198
        :pswitch_195
        :pswitch_192
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_184
        :pswitch_180
        :pswitch_17d
        :pswitch_17a
        :pswitch_177
        :pswitch_173
        :pswitch_16f
        :pswitch_16b
        :pswitch_168
        :pswitch_165
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_157
        :pswitch_153
        :pswitch_150
        :pswitch_14d
        :pswitch_14a
        :pswitch_147
        :pswitch_144
        :pswitch_141
        :pswitch_13d
        :pswitch_139
        :pswitch_135
        :pswitch_132
        :pswitch_12e
        :pswitch_12a
        :pswitch_126
        :pswitch_123
        :pswitch_11f
        :pswitch_11b
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10d
        :pswitch_109
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_e0
        :pswitch_dc
        :pswitch_d9
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/app/IActivityTaskManager;)Z
    .registers 3

    sget-object v0, Landroid/app/IActivityTaskManager$Stub$Proxy;->sDefaultImpl:Landroid/app/IActivityTaskManager;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/IActivityTaskManager$Stub$Proxy;->sDefaultImpl:Landroid/app/IActivityTaskManager;

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

    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v11, p3

    const-string v10, "android.app.IActivityTaskManager"

    const v0, 0x5f4e5446

    const/4 v9, 0x1

    if-eq v15, v0, :cond_1395

    const/4 v12, 0x0

    packed-switch v15, :pswitch_data_139e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_19
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->exitCastMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_23
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->moveTopActivityToCastMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_2d
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    move v12, v9

    :cond_37
    move v0, v12

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->castRotationChanged(Z)V

    return v9

    :pswitch_3c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInSplitScreenWindowingMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_4a
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityInFreeform(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_5c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    move v3, v9

    goto :goto_70

    :cond_6f
    move v3, v12

    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_78

    move v4, v9

    goto :goto_79

    :cond_78
    move v4, v12

    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v8, v0

    goto :goto_8b

    :cond_89
    const/4 v0, 0x0

    move-object v8, v0

    :goto_8b
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->launchSmallFreeFormWindow(IIZZLandroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_97
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFreeformScale()F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return v9

    :pswitch_a5
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_bb
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopVisibleActivity()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_ce

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v9}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d1

    :cond_ce
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d1
    return v9

    :pswitch_d2
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_e8
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->restartActivityProcessIfVisible(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_f6
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setDisplayToSingleTaskInstance(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_104
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_112
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_120

    move v12, v9

    :cond_120
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_128
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_13a
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_14c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_15e
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_170

    move v12, v9

    :cond_170
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_178
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18a

    move v12, v9

    :cond_18a
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_192
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_19c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1a6
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1b4
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1c2
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1d5

    :cond_1d4
    const/4 v0, 0x0

    :goto_1d5
    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1dc
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f2

    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    goto :goto_1f3

    :cond_1f2
    const/4 v1, 0x0

    :goto_1f3
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_1fa
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_210

    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    goto :goto_211

    :cond_210
    const/4 v1, 0x0

    :goto_211
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_218
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_226
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23c

    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    goto :goto_23d

    :cond_23c
    const/4 v1, 0x0

    :goto_23d
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_244
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_252

    move v12, v9

    :cond_252
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_25a
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_268

    move v12, v9

    :cond_268
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_270
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27e

    move v12, v9

    :cond_27e
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_286
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_298
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2aa

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    goto :goto_2ab

    :cond_2aa
    const/4 v0, 0x0

    :goto_2ab
    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_2b6
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_2c4
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_2d2
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e0

    move v12, v9

    :cond_2e0
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_2e8
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f7

    move v1, v9

    goto :goto_2f8

    :cond_2f7
    move v1, v12

    :goto_2f8
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_308

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v9}, Landroid/app/ActivityManager$TaskSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30b

    :cond_308
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_30b
    return v9

    :pswitch_30c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_31a
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_338

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_339

    :cond_338
    const/4 v2, 0x0

    :goto_339
    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_340
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_353

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v9}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_356

    :cond_353
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_356
    return v9

    :pswitch_357
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_365
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_373
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_389

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_38a

    :cond_389
    const/4 v1, 0x0

    :goto_38a
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_391
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39f

    move v12, v9

    :cond_39f
    move v1, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3af

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_3b0

    :cond_3af
    const/4 v2, 0x0

    :goto_3b0
    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_3bb
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c5

    move v12, v9

    :cond_3c5
    move v0, v12

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setSplitScreenResizing(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_3cd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3de

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_3df

    :cond_3de
    const/4 v1, 0x0

    :goto_3df
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :pswitch_3e3
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f6

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v6, v0

    goto :goto_3f8

    :cond_3f6
    const/4 v0, 0x0

    move-object v6, v0

    :goto_3f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_408

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v7, v0

    goto :goto_40a

    :cond_408
    const/4 v0, 0x0

    move-object v7, v0

    :goto_40a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41a

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v8, v0

    goto :goto_41c

    :cond_41a
    const/4 v0, 0x0

    move-object v8, v0

    :goto_41c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42c

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v12, v0

    goto :goto_42e

    :cond_42c
    const/4 v0, 0x0

    move-object v12, v0

    :goto_42e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43f

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object/from16 v16, v0

    goto :goto_442

    :cond_43f
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_442
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_451
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :pswitch_463
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_475
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->requestPictureInPictureMode(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_483
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_499

    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    goto :goto_49a

    :cond_499
    const/4 v1, 0x0

    :goto_49a
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_4a1
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b7

    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    goto :goto_4b8

    :cond_4b7
    const/4 v1, 0x0

    :goto_4b8
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_4c3
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4d9

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_4da

    :cond_4d9
    const/4 v1, 0x0

    :goto_4da
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_4e5
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ef

    move v12, v9

    :cond_4ef
    move v0, v12

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_4f7
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_511
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->positionTaskInStack(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_527
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_539
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_550

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_553

    :cond_550
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_553
    return v9

    :pswitch_554
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_562
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    return v9

    :pswitch_56d
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_57f
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_595

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_596

    :cond_595
    const/4 v1, 0x0

    :goto_596
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_5a1
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_5af
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c9

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_5ca

    :cond_5c9
    const/4 v1, 0x0

    :goto_5ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_5dd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5fd

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto :goto_600

    :cond_5fd
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60c

    move v5, v9

    goto :goto_60d

    :cond_60c
    move v5, v12

    :goto_60d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_615

    move v6, v9

    goto :goto_616

    :cond_615
    move v6, v12

    :goto_616
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_629
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63c

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v6, v0

    goto :goto_63e

    :cond_63c
    const/4 v0, 0x0

    move-object v6, v0

    :goto_63e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto :goto_65e

    :cond_65b
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_65e
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v12

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_671
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_688

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_68b

    :cond_688
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_68b
    return v9

    :pswitch_68c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_697

    move v0, v9

    goto :goto_698

    :cond_697
    move v0, v12

    :goto_698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_69f

    move v12, v9

    :cond_69f
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_6a7
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getStackInfoOnDisplay(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6c6

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v11, v9}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6c9

    :cond_6c6
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6c9
    return v9

    :pswitch_6ca
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_6dc
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6f7

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v9}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6fa

    :cond_6f7
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6fa
    return v9

    :pswitch_6fb
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_709
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->removeStacksWithActivityTypes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_717
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->removeStacksInWindowingModes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_725
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_733

    move v12, v9

    :cond_733
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskWindowingModeSplitScreenPrimary(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_73f
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_751

    move v12, v9

    :cond_751
    move v2, v12

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToStack(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_759
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76b

    move v12, v9

    :cond_76b
    move v2, v12

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskWindowingMode(IIZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_777
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->removeStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_785
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveStackToDisplay(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_797
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7ad

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_7ae

    :cond_7ad
    const/4 v1, 0x0

    :goto_7ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_7bd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_7cb
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskResizeableForFreeform(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_7dd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_7ef
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_801
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_813
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_82e

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v9}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_831

    :cond_82e
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_831
    return v9

    :pswitch_832
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_844
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :pswitch_856
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_868
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_87b

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v9}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_87e

    :cond_87b
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_87e
    return v9

    :pswitch_87f
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_895

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_896

    :cond_895
    const/4 v1, 0x0

    :goto_896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8a5

    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    goto :goto_8a6

    :cond_8a5
    const/4 v2, 0x0

    :goto_8a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8b5

    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_8b6

    :cond_8b5
    const/4 v3, 0x0

    :goto_8b6
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_8c1
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_8cf
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_8dd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_8ef
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_901
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_90b
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_919
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    return v9

    :pswitch_92b
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_942

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_945

    :cond_942
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_945
    return v9

    :pswitch_946
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_95c

    sget-object v1, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    goto :goto_95d

    :cond_95c
    const/4 v1, 0x0

    :goto_95d
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_964
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_972
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_980
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_992
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_9a0
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_9ae
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9b8

    move v12, v9

    :cond_9b8
    move v0, v12

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_9c0
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9d7

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9da

    :cond_9d7
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9da
    return v9

    :pswitch_9db
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9ee

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v9}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9f1

    :cond_9ee
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9f1
    return v9

    :pswitch_9f2
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedStack(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_a00
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a17

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v7, v0

    goto :goto_a19

    :cond_a17
    const/4 v0, 0x0

    move-object v7, v0

    :goto_a19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a29

    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    move-object v8, v0

    goto :goto_a2b

    :cond_a29
    const/4 v0, 0x0

    move-object v8, v0

    :goto_a2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a3b

    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    move-object v12, v0

    goto :goto_a3d

    :cond_a3b
    const/4 v0, 0x0

    move-object v12, v0

    :goto_a3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4e

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v16, v0

    goto :goto_a51

    :cond_a4e
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_a51
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_a60
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_a72
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_a84
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_a9e
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_ab5

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/app/ActivityManager$TaskDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ab8

    :cond_ab5
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_ab8
    return v9

    :pswitch_ab9
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ac7

    move v12, v9

    :cond_ac7
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_ad3
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_ae1
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aef

    move v12, v9

    :cond_aef
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_af7
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_b09
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_b1b
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b29

    move v12, v9

    :cond_b29
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_b31
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->notifyActivityDrawn(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_b3f
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b55

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_b56

    :cond_b55
    const/4 v1, 0x0

    :goto_b56
    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_b61
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_b73
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_b85
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_b97
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_ba9
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_bc8

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v11, v9}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_bcb

    :cond_bc8
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_bcb
    return v9

    :pswitch_bcc
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_be2
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_bf0

    move v12, v9

    :cond_bf0
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_bfc
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c24

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto :goto_c27

    :cond_c24
    const/4 v0, 0x0

    move-object/from16 v16, v0

    :goto_c27
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v12

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_c36
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c4c

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_c4d

    :cond_c4c
    const/4 v1, 0x0

    :goto_c4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c60

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    goto :goto_c61

    :cond_c60
    const/4 v3, 0x0

    :goto_c61
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_c6c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_c82
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c90

    move v12, v9

    :cond_c90
    move v1, v12

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getFilteredTasks(IZ)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_c9c
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v9

    :pswitch_cae
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_cb8
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_cca
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_cd8
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_cef

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v9}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_cf2

    :cond_cef
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_cf2
    return v9

    :pswitch_cf3
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :pswitch_d05
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d13
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_d21
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d2f
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    return v9

    :pswitch_d3a
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d50

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_d51

    :cond_d50
    const/4 v1, 0x0

    :goto_d51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d60

    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    goto :goto_d61

    :cond_d60
    const/4 v2, 0x0

    :goto_d61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d70

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_d71

    :cond_d70
    const/4 v3, 0x0

    :goto_d71
    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d78
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->activityPaused(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d86
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->activityTopResumedStateLost()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d90
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->activityResumed(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_d9e
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_db4

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    goto :goto_db5

    :cond_db4
    const/4 v1, 0x0

    :goto_db5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_dbc

    move v12, v9

    :cond_dbc
    move v2, v12

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    return v9

    :pswitch_dc1
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_dd3
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ded

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_dee

    :cond_ded
    const/4 v2, 0x0

    :goto_dee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_dfd
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :pswitch_e07
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e1d

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_e1e

    :cond_e1d
    const/4 v1, 0x0

    :goto_e1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :pswitch_e31
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e51

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v18, v0

    goto :goto_e54

    :cond_e51
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_e54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e79

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfilerInfo;

    move-object/from16 v24, v0

    goto :goto_e7c

    :cond_e79
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_e7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e8d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v25, v0

    goto :goto_e90

    :cond_e8d
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_e90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e9b

    move v12, v9

    :cond_e9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move v15, v9

    move-object/from16 v9, v24

    move-object/from16 v28, v10

    move-object/from16 v10, v25

    move-object v15, v11

    move-object/from16 v11, v26

    move-object v14, v13

    move/from16 v13, v27

    invoke-virtual/range {v0 .. v13}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/os/IBinder;ZI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_eca
    move-object/from16 v28, v10

    move-object v15, v11

    move-object v14, v13

    move-object/from16 v13, v28

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ee6

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_ee7

    :cond_ee6
    const/4 v1, 0x0

    :goto_ee7
    move-object v12, v14

    move-object/from16 v14, p0

    invoke-virtual {v14, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :pswitch_ef6
    move-object v15, v11

    move-object v12, v13

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f0b

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_f0c

    :cond_f0b
    const/4 v0, 0x0

    :goto_f0c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v2

    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :pswitch_f24
    move-object v15, v11

    move-object v12, v13

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4b

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v17, v0

    goto :goto_f4e

    :cond_f4b
    const/4 v0, 0x0

    move-object/from16 v17, v0

    :goto_f4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f63

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v19, v0

    goto :goto_f66

    :cond_f63
    const/4 v0, 0x0

    move-object/from16 v19, v0

    :goto_f66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_f85
    move-object v15, v11

    move-object v12, v13

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fac

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v20, v0

    goto :goto_faf

    :cond_fac
    const/4 v0, 0x0

    move-object/from16 v20, v0

    :goto_faf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fd8

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfilerInfo;

    move-object/from16 v25, v0

    goto :goto_fdb

    :cond_fd8
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_fdb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_fec

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v26, v0

    goto :goto_fef

    :cond_fec
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_fef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_101a
    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1041

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v19, v0

    goto :goto_1044

    :cond_1041
    const/4 v0, 0x0

    move-object/from16 v19, v0

    :goto_1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1069

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    move-object/from16 v25, v0

    goto :goto_106c

    :cond_1069
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_106c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_107d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v26, v0

    goto :goto_1080

    :cond_107d
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_10aa
    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10d1

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v19, v0

    goto :goto_10d4

    :cond_10d1
    const/4 v0, 0x0

    move-object/from16 v19, v0

    :goto_10d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f9

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfilerInfo;

    move-object/from16 v25, v0

    goto :goto_10fc

    :cond_10f9
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_10fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_110d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v26, v0

    goto :goto_1110

    :cond_110d
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_1110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v28, v13

    move v13, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1142

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v15, v1}, Landroid/app/WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1146

    :cond_1142
    const/4 v1, 0x1

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1146
    return v1

    :pswitch_1147
    move-object/from16 v28, v10

    move-object v15, v11

    move-object v14, v13

    move-object/from16 v13, v28

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1175

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v18, v0

    goto :goto_1178

    :cond_1175
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11a1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v25, v0

    goto :goto_11a4

    :cond_11a1
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_11a4
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_11c7
    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11dc

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_11dd

    :cond_11dc
    const/4 v0, 0x0

    :goto_11dd
    move-object v12, v14

    move-object/from16 v14, p0

    invoke-virtual {v14, v0}, Landroid/app/IActivityTaskManager$Stub;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :pswitch_11ec
    move-object v15, v11

    move-object v12, v13

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1205

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_1206

    :cond_1205
    const/4 v1, 0x0

    :goto_1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1215

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_1216

    :cond_1215
    const/4 v2, 0x0

    :goto_1216
    invoke-virtual {v14, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :pswitch_1222
    move-object v15, v11

    move-object v12, v13

    move-object v13, v10

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1249

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v19, v0

    goto :goto_124c

    :cond_1249
    const/4 v0, 0x0

    move-object/from16 v19, v0

    :goto_124c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1271

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfilerInfo;

    move-object/from16 v25, v0

    goto :goto_1274

    :cond_1271
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1285

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v26, v0

    goto :goto_1288

    :cond_1285
    const/4 v0, 0x0

    move-object/from16 v26, v0

    :goto_1288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_12b3
    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12eb

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v18, v0

    goto :goto_12ee

    :cond_12eb
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_12ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_130c
    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1333

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v18, v0

    goto :goto_1336

    :cond_1333
    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_1336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_135b

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfilerInfo;

    move-object/from16 v24, v0

    goto :goto_135e

    :cond_135b
    const/4 v0, 0x0

    move-object/from16 v24, v0

    :goto_135e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_136f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v25, v0

    goto :goto_1372

    :cond_136f
    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_1372
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_1395
    move v1, v9

    move-object v15, v11

    move-object v14, v13

    move-object v13, v10

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_139e
    .packed-switch 0x1
        :pswitch_130c
        :pswitch_12b3
        :pswitch_1222
        :pswitch_11ec
        :pswitch_11c7
        :pswitch_1147
        :pswitch_10aa
        :pswitch_101a
        :pswitch_f85
        :pswitch_f24
        :pswitch_ef6
        :pswitch_eca
        :pswitch_e31
        :pswitch_e07
        :pswitch_dfd
        :pswitch_dd3
        :pswitch_dc1
        :pswitch_d9e
        :pswitch_d90
        :pswitch_d86
        :pswitch_d78
        :pswitch_d3a
        :pswitch_d2f
        :pswitch_d21
        :pswitch_d13
        :pswitch_d05
        :pswitch_cf3
        :pswitch_cd8
        :pswitch_cca
        :pswitch_cb8
        :pswitch_cae
        :pswitch_c9c
        :pswitch_c82
        :pswitch_c6c
        :pswitch_c36
        :pswitch_bfc
        :pswitch_be2
        :pswitch_bcc
        :pswitch_ba9
        :pswitch_b97
        :pswitch_b85
        :pswitch_b73
        :pswitch_b61
        :pswitch_b3f
        :pswitch_b31
        :pswitch_b1b
        :pswitch_b09
        :pswitch_af7
        :pswitch_ae1
        :pswitch_ad3
        :pswitch_ab9
        :pswitch_a9e
        :pswitch_a84
        :pswitch_a72
        :pswitch_a60
        :pswitch_a00
        :pswitch_9f2
        :pswitch_9db
        :pswitch_9c0
        :pswitch_9ae
        :pswitch_9a0
        :pswitch_992
        :pswitch_980
        :pswitch_972
        :pswitch_964
        :pswitch_946
        :pswitch_92b
        :pswitch_919
        :pswitch_90b
        :pswitch_901
        :pswitch_8ef
        :pswitch_8dd
        :pswitch_8cf
        :pswitch_8c1
        :pswitch_87f
        :pswitch_868
        :pswitch_856
        :pswitch_844
        :pswitch_832
        :pswitch_813
        :pswitch_801
        :pswitch_7ef
        :pswitch_7dd
        :pswitch_7cb
        :pswitch_7bd
        :pswitch_797
        :pswitch_785
        :pswitch_777
        :pswitch_759
        :pswitch_73f
        :pswitch_725
        :pswitch_717
        :pswitch_709
        :pswitch_6fb
        :pswitch_6dc
        :pswitch_6ca
        :pswitch_6a7
        :pswitch_68c
        :pswitch_671
        :pswitch_629
        :pswitch_5dd
        :pswitch_5af
        :pswitch_5a1
        :pswitch_57f
        :pswitch_56d
        :pswitch_562
        :pswitch_554
        :pswitch_539
        :pswitch_527
        :pswitch_511
        :pswitch_4f7
        :pswitch_4e5
        :pswitch_4c3
        :pswitch_4a1
        :pswitch_483
        :pswitch_475
        :pswitch_463
        :pswitch_451
        :pswitch_3e3
        :pswitch_3cd
        :pswitch_3bb
        :pswitch_391
        :pswitch_373
        :pswitch_365
        :pswitch_357
        :pswitch_340
        :pswitch_31a
        :pswitch_30c
        :pswitch_2e8
        :pswitch_2d2
        :pswitch_2c4
        :pswitch_2b6
        :pswitch_298
        :pswitch_286
        :pswitch_270
        :pswitch_25a
        :pswitch_244
        :pswitch_226
        :pswitch_218
        :pswitch_1fa
        :pswitch_1dc
        :pswitch_1c2
        :pswitch_1b4
        :pswitch_1a6
        :pswitch_19c
        :pswitch_192
        :pswitch_178
        :pswitch_15e
        :pswitch_14c
        :pswitch_13a
        :pswitch_128
        :pswitch_112
        :pswitch_104
        :pswitch_f6
        :pswitch_e8
        :pswitch_d2
        :pswitch_bb
        :pswitch_a5
        :pswitch_97
        :pswitch_5c
        :pswitch_4a
        :pswitch_3c
        :pswitch_2d
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method
