.class public Landroid/hardware/miuiface/MiuiFaceManagerImpl;
.super Ljava/lang/Object;
.source "MiuiFaceManagerImpl.java"

# interfaces
.implements Landroid/hardware/miuiface/IMiuiFaceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;,
        Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field private static final CODE_ADD_LOCKOUT_RESET_CALLBACK:I = 0x10

.field private static final CODE_AUTHENTICATE:I = 0x3

.field private static final CODE_CANCEL_AUTHENTICATE:I = 0x4

.field private static final CODE_CANCEL_ENROLL:I = 0x6

.field private static final CODE_ENROLL:I = 0x5

.field private static final CODE_EXT_CMD:I = 0x65

.field private static final CODE_GET_AUTHENTICATOR_ID:I = 0xe

.field private static final CODE_GET_ENROLLED_FACE_LIST:I = 0x9

.field private static final CODE_GET_VENDOR_INFO:I = 0x11

.field private static final CODE_HAS_ENROLLED_FACES:I = 0xc

.field private static final CODE_POST_ENROLL:I = 0xb

.field private static final CODE_PRE_ENROLL:I = 0xa

.field private static final CODE_PRE_INIT_AUTHEN:I = 0x2

.field private static final CODE_REMOVE:I = 0x7

.field private static final CODE_RENAME:I = 0x8

.field private static final CODE_RESET_TIMEOUT:I = 0xf

.field public static final COMMAND_ENROLL_RESET_ENROLL_LOGIC:I = 0x1

.field public static final COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field public static final COMMAND_ENROLL_STOP_ENROLL_LOGIC:I = 0x2

.field private static DEBUG:Z = false

.field public static final ERROR_BINDER_CALL:I = 0x834

.field public static final ERROR_CANCELED:I = 0x7d0

.field public static final ERROR_SERVICE_IS_BUSY:I = 0x7d1

.field public static final ERROR_SERVICE_IS_IDLE:I = 0x7d2

.field public static final ERROR_TIME_OUT:I = 0x7d3

.field private static final FACEUNLOCK_CURRENT_USE_INVALID_MODEL:I = 0x2

.field private static final FACEUNLOCK_CURRENT_USE_RGB_MODEL:I = 0x1

.field private static final FACEUNLOCK_CURRENT_USE_STRUCTURE_MODEL:I = 0x0

.field private static final FACEUNLOCK_SUPPORT_SUPERPOWER:Ljava/lang/String; = "faceunlock_support_superpower"

.field private static final FACE_UNLOCK_3D_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature_sl"

.field private static final FACE_UNLOCK_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature"

.field private static final FACE_UNLOCK_HAS_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_has_feature"

.field private static final FACE_UNLOCK_MODEL:Ljava/lang/String; = "face_unlock_model"

.field private static final FACE_UNLOCK_VALID_FEATURE:Ljava/lang/String; = "face_unlock_valid_feature"

.field private static final FACE_UNLOCK_VALID_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_valid_feature"

.field private static volatile INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager; = null

.field public static final MG_ATTR_BLUR:I = 0x14

.field public static final MG_ATTR_EYE_CLOSE:I = 0x16

.field public static final MG_ATTR_EYE_OCCLUSION:I = 0x15

.field public static final MG_ATTR_MOUTH_OCCLUSION:I = 0x17

.field public static final MG_OPEN_CAMERA_FAIL:I = 0x3e8

.field public static final MG_OPEN_CAMERA_SUCCESS:I = 0x3e9

.field public static final MG_UNLOCK_BAD_LIGHT:I = 0x1a

.field public static final MG_UNLOCK_COMPARE_FAILURE:I = 0xc

.field public static final MG_UNLOCK_DARKLIGHT:I = 0x1e

.field public static final MG_UNLOCK_FACE_BAD_QUALITY:I = 0x4

.field public static final MG_UNLOCK_FACE_BLUR:I = 0x1c

.field public static final MG_UNLOCK_FACE_DOWN:I = 0x12

.field public static final MG_UNLOCK_FACE_MULTI:I = 0x1b

.field public static final MG_UNLOCK_FACE_NOT_COMPLETE:I = 0x1d

.field public static final MG_UNLOCK_FACE_NOT_FOUND:I = 0x5

.field public static final MG_UNLOCK_FACE_NOT_ROI:I = 0x21

.field public static final MG_UNLOCK_FACE_OFFSET_BOTTOM:I = 0xb

.field public static final MG_UNLOCK_FACE_OFFSET_LEFT:I = 0x8

.field public static final MG_UNLOCK_FACE_OFFSET_RIGHT:I = 0xa

.field public static final MG_UNLOCK_FACE_OFFSET_TOP:I = 0x9

.field public static final MG_UNLOCK_FACE_RISE:I = 0x10

.field public static final MG_UNLOCK_FACE_ROTATED_LEFT:I = 0xf

.field public static final MG_UNLOCK_FACE_ROTATED_RIGHT:I = 0x11

.field public static final MG_UNLOCK_FACE_SCALE_TOO_LARGE:I = 0x7

.field public static final MG_UNLOCK_FACE_SCALE_TOO_SMALL:I = 0x6

.field public static final MG_UNLOCK_FAILURE:I = 0x3

.field public static final MG_UNLOCK_FEATURE_MISS:I = 0x18

.field public static final MG_UNLOCK_FEATURE_VERSION_ERROR:I = 0x19

.field public static final MG_UNLOCK_HALF_SHADOW:I = 0x20

.field public static final MG_UNLOCK_HIGHLIGHT:I = 0x1f

.field public static final MG_UNLOCK_INVALID_ARGUMENT:I = 0x1

.field public static final MG_UNLOCK_INVALID_HANDLE:I = 0x2

.field public static final MG_UNLOCK_KEEP:I = 0x13

.field public static final MG_UNLOCK_LIVENESS_FAILURE:I = 0xe

.field public static final MG_UNLOCK_LIVENESS_WARNING:I = 0xd

.field public static final MG_UNLOCK_OK:I = 0x0

.field private static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final POWERMODE_SUPERSAVE_OPEN_URI:Ljava/lang/String; = "content://settings/secure/power_supersave_mode_open"

.field private static RECEIVER_DESCRIPTOR:Ljava/lang/String; = null

.field private static final RECEIVER_ON_AUTHENTICATION_FAILED:I = 0xcc

.field private static final RECEIVER_ON_AUTHENTICATION_SUCCEEDED:I = 0xcb

.field private static final RECEIVER_ON_ENROLL_RESULT:I = 0xc9

.field private static final RECEIVER_ON_ERROR:I = 0xcd

.field private static final RECEIVER_ON_EXT_CMD:I = 0x12d

.field private static final RECEIVER_ON_LOCKOUT_RESET:I = 0x105

.field private static final RECEIVER_ON_ON_ACQUIRED:I = 0xca

.field private static final RECEIVER_ON_PRE_INIT:I = 0xcf

.field private static final RECEIVER_ON_REMOVED:I = 0xce

.field private static SERVICE_DESCRIPTOR:Ljava/lang/String; = null

.field private static SERVICE_NAME:Ljava/lang/String; = null

.field public static final ST_FACE_ENROLL_NOT_SAME_PERSON:I = 0x24

.field public static final ST_FACE_ENROLL_REACH_UPPER_LIMIT:I = 0x23

.field private static TAG:Ljava/lang/String; = null

.field private static final VERSION_1:I = 0x1


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

.field private mBinderDied:Landroid/os/IBinder$DeathRecipient;

.field private mBinderLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

.field private mFaceCount:I

.field private mFaceUnlockModel:I

.field private mHandler:Landroid/os/Handler;

.field private mHasInit:Z

.field private mIsSuperPower:Z

.field private mIsValid:Z

.field private mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

.field private mMiuiFaceService:Landroid/os/IBinder;

.field private mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

.field private mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

.field private mServiceReceiver:Landroid/os/IBinder;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "FaceManagerImpl_client"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    const-string v0, "miui.face.FaceService"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    const-string/jumbo v0, "receiver.FaceService"

    sput-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderDied:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$2;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "face_unlock_valid_feature"

    const-string v2, "face_unlock_has_feature"

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_86

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "face_unlock_model"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceUnlockModel:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_86

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceUnlockModel:I

    if-nez v0, :cond_86

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "face_unlock_has_feature_sl"

    invoke-static {v6, v7, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v6, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_86
    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "faceunlock_support_superpower"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "content://settings/secure/face_unlock_has_feature"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "content://settings/secure/face_unlock_valid_feature"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "power_supersave_mode_open"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "content://settings/secure/power_supersave_mode_open"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$FaceObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsValid:Z

    return p1
.end method

.method static synthetic access$1102(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsSuperPower:Z

    return p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->RECEIVER_DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendEnrollResult(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAcquiredResult(JII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedSucceeded(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic access$2100(Landroid/hardware/miuiface/MiuiFaceManagerImpl;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendErrorResult(JII)V

    return-void
.end method

.method static synthetic access$2200(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/Miuiface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendRemovedResult(Landroid/hardware/miuiface/Miuiface;I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->sendLockoutReset()V

    return-void
.end method

.method static synthetic access$302(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$500(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->cancelAuthentication()V

    return-void
.end method

.method static synthetic access$802(Landroid/hardware/miuiface/MiuiFaceManagerImpl;I)I
    .registers 2

    iput p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/miuiface/MiuiFaceManagerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;I)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p6, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v2, p6

    :goto_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallAuthenticatorId(Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-wide v2
.end method

.method private binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallCancelEnrollment(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    sget-object v5, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez p2, :cond_18

    move-object v6, v5

    goto :goto_1a

    :cond_18
    move-object/from16 v6, p2

    :goto_1a
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v7, p4

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p5, :cond_2a

    goto :goto_2c

    :cond_2a
    move-object/from16 v5, p5

    :goto_2c
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move/from16 v5, p6

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v8, p7

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_44

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v3, v10}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_47

    :cond_44
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_47
    if-eqz v1, :cond_50

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v3, v10}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_53

    :cond_50
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_53
    if-eqz v2, :cond_5c

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v3, v10}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5f

    :cond_5c
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5f
    move/from16 v9, p11

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p12

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x5

    move-object v13, p1

    invoke-interface {p1, v12, v3, v4, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-nez p3, :cond_19

    goto :goto_1a

    :cond_19
    move-object v2, p3

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    sget-object v2, Landroid/hardware/miuiface/Miuiface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private binderCallGetVendorInfo(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private binderCallHasEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2
.end method

.method private binderCallPostEnroll(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallPreEnroll(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p2, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p2, :cond_12

    move-object v3, v2

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p6, :cond_22

    goto :goto_23

    :cond_22
    move-object v2, p6

    :goto_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private binderCallRestTimeout(Landroid/os/IBinder;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method private cancelAuthentication()V
    .registers 4

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelAuthentication "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallCancelAuthention(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_20

    :cond_1f
    goto :goto_24

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_24
    return-void
.end method

.method private cancelEnrollment()V
    .registers 3

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelEnrollment "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallCancelEnrollment(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1a

    :cond_19
    goto :goto_1e

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;
    .registers 3

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v0, :cond_17

    const-class v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v1, :cond_12

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    invoke-direct {v1, p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    return-object v0
.end method

.method private getMessageInfo(I)Ljava/lang/String;
    .registers 6

    const-string v0, "define by client"

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_c4

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_c0

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_bc

    const/16 v1, 0x834

    if-eq p1, v1, :cond_b9

    packed-switch p1, :pswitch_data_ca

    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_c8

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    :pswitch_31
    const-string/jumbo v0, "\u9634\u9633\u8138"

    goto/16 :goto_c8

    :pswitch_36
    const-string/jumbo v0, "\u5149\u7ebf\u592a\u4eae"

    goto/16 :goto_c8

    :pswitch_3b
    const-string/jumbo v0, "\u5149\u7ebf\u592a\u6697"

    goto/16 :goto_c8

    :pswitch_40
    const-string/jumbo v0, "\u8138\u90e8\u4e0d\u5b8c\u6574"

    goto/16 :goto_c8

    :pswitch_45
    const-string/jumbo v0, "\u8138\u90e8\u6a21\u7cca"

    goto/16 :goto_c8

    :pswitch_4a
    const-string/jumbo v0, "\u591a\u5f20\u4eba\u8138"

    goto/16 :goto_c8

    :pswitch_4f
    const-string/jumbo v0, "\u5149\u7ebf\u4e0d\u597d"

    goto/16 :goto_c8

    :pswitch_54
    const-string v0, "Feature\u7248\u672c\u9519\u8bef"

    goto/16 :goto_c8

    :pswitch_58
    const-string/jumbo v0, "\u5904\u7406Feature\u8bfb\u53d6\u5f02\u5e38"

    goto/16 :goto_c8

    :pswitch_5d
    const-string/jumbo v0, "\u5634\u90e8\u906e\u6321"

    goto/16 :goto_c8

    :pswitch_62
    const-string/jumbo v0, "\u95ed\u773c"

    goto :goto_c8

    :pswitch_66
    const-string/jumbo v0, "\u773c\u90e8\u906e\u6321"

    goto :goto_c8

    :pswitch_6a
    const-string/jumbo v0, "\u56fe\u7247\u6a21\u7cca"

    goto :goto_c8

    :pswitch_6e
    const-string/jumbo v0, "\u7ee7\u7eed\u8c03\u7528\u4f20\u5165\u6570\u636e"

    goto :goto_c8

    :pswitch_72
    const-string/jumbo v0, "\u4f4e\u5934"

    goto :goto_c8

    :pswitch_76
    const-string/jumbo v0, "\u5411\u53f3\u8f6c\u5934"

    goto :goto_c8

    :pswitch_7a
    const-string/jumbo v0, "\u62ac\u5934"

    goto :goto_c8

    :pswitch_7e
    const-string/jumbo v0, "\u5411\u5de6\u8f6c\u5934"

    goto :goto_c8

    :pswitch_82
    const-string/jumbo v0, "\u6d3b\u4f53\u68c0\u6d4b\u5931\u8d25"

    goto :goto_c8

    :pswitch_86
    const-string/jumbo v0, "\u6d3b\u4f53\u653b\u51fb\u8b66\u544a"

    goto :goto_c8

    :pswitch_8a
    const-string/jumbo v0, "\u5bf9\u6bd4\u5931\u8d25"

    goto :goto_c8

    :pswitch_8e
    const-string/jumbo v0, "\u8138\u504f\u4e0b"

    goto :goto_c8

    :pswitch_92
    const-string/jumbo v0, "\u8138\u504f\u53f3"

    goto :goto_c8

    :pswitch_96
    const-string/jumbo v0, "\u8138\u504f\u4e0a"

    goto :goto_c8

    :pswitch_9a
    const-string/jumbo v0, "\u8138\u504f\u5de6"

    goto :goto_c8

    :pswitch_9e
    const-string/jumbo v0, "\u8138\u592a\u5927"

    goto :goto_c8

    :pswitch_a2
    const-string/jumbo v0, "\u8138\u592a\u5c0f"

    goto :goto_c8

    :pswitch_a6
    const-string/jumbo v0, "\u672a\u68c0\u6d4b\u5230\u4eba\u8138"

    goto :goto_c8

    :pswitch_aa
    const-string/jumbo v0, "\u4f20\u5165\u6570\u636e\u8d28\u91cf\u4e0d\u597d"

    goto :goto_c8

    :pswitch_ae
    const-string/jumbo v0, "\u89e3\u9501\u5931\u8d25\uff08\u5185\u90e8\u9519\u8bef\uff09"

    goto :goto_c8

    :pswitch_b2
    const-string v0, "Handler\u4e0d\u6b63\u786e"

    goto :goto_c8

    :pswitch_b5
    const-string/jumbo v0, "\u53c2\u6570\u4e0d\u5408\u6cd5"

    goto :goto_c8

    :cond_b9
    const-string v0, "binder\u8c03\u7528\u5f02\u5e38"

    goto :goto_c8

    :cond_bc
    const-string/jumbo v0, "\u53d6\u6d88\u6210\u529f"

    goto :goto_c8

    :cond_c0
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u6210\u529f"

    goto :goto_c8

    :cond_c4
    const-string/jumbo v0, "\u6253\u5f00\u76f8\u673a\u5931\u8d25"

    nop

    :cond_c8
    :goto_c8
    return-object v0

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method private initService()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-nez v1, :cond_17

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_17

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mBinderDied:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private sendAcquiredResult(JII)V
    .registers 7

    invoke-direct {p0, p3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_13

    :cond_c
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_7
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/miuiface/Miuiface;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/miuiface/Miuiface;)V

    :cond_7
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/miuiface/Miuiface;I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentProgress(II)V

    :cond_b
    return-void
.end method

.method private sendErrorResult(JII)V
    .registers 8

    invoke-direct {p0, p3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1d

    :cond_c
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v1, :cond_14

    invoke-virtual {v1, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1d

    :cond_14
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    invoke-virtual {v1, v2, p3, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/miuiface/Miuiface;ILjava/lang/CharSequence;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private sendLockoutReset()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;->onLockoutReset()V

    :cond_7
    return-void
.end method

.method private sendRemovedResult(Landroid/hardware/miuiface/Miuiface;I)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_64

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    if-nez v0, :cond_c

    goto :goto_64

    :cond_c
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRemovedResult faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    invoke-virtual {v1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    if-eqz v1, :cond_5e

    if-eqz v0, :cond_5e

    if-eq v0, v1, :cond_5e

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Face id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/miuiface/Miuiface;I)V

    return-void

    :cond_64
    :goto_64
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Received MSG_REMOVED, but face or mRemovalMiuiface is null, "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    :cond_f
    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHandler:Landroid/os/Handler;

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;)V
    .registers 6

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockoutResetCallback  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_2a

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mLockoutResetCallback:Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallAddLoackoutResetCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2a} :catch_2b

    :cond_2a
    goto :goto_43

    :catch_2b
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void
.end method

.method public authenticate(Landroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate mServiceReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz v13, :cond_8d

    const/4 v0, 0x0

    if-eqz v12, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    new-instance v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;

    invoke-direct {v1, v11, v0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnAuthenticationCancelListener;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    invoke-virtual {v12, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3d
    move-object/from16 v14, p4

    invoke-direct {v11, v14}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->useHandler(Landroid/os/Handler;)V

    iput-object v13, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iput-object v0, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    const/16 v15, 0x834

    :try_start_48
    invoke-direct/range {p0 .. p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_6c

    const-wide/16 v16, -0x1

    const/4 v0, -0x1

    iget-object v2, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v7, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v1, v11, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    move-wide/from16 v4, v16

    move v6, v0

    move/from16 v8, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallAuthenticate(Landroid/os/IBinder;Landroid/os/IBinder;JILandroid/os/IBinder;ILjava/lang/String;I)I

    nop

    goto :goto_7a

    :cond_6c
    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mMiuiFaceService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v11, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7a} :catch_7b

    :goto_7a
    goto :goto_8c

    :catch_7b
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception while authenticating: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v13, :cond_8c

    invoke-direct {v11, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v15, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    move-object/from16 v14, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/Rect;I)V
    .registers 18

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v9, p6

    invoke-direct {v7, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .registers 19

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
    .registers 27

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p4

    const/16 v16, 0x0

    if-eqz v13, :cond_82

    if-eqz v15, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, v14, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl$OnEnrollCancelListener;-><init>(Landroid/hardware/miuiface/MiuiFaceManagerImpl;Landroid/hardware/miuiface/MiuiFaceManagerImpl$1;)V

    invoke-virtual {v15, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_23
    const/16 v12, 0x834

    :try_start_25
    invoke-direct/range {p0 .. p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_6e

    if-eqz v0, :cond_56

    :try_start_2c
    iput-object v13, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    iget-object v2, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v6, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v0, v14, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3a} :catch_53

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move v15, v12

    move/from16 v12, p8

    move/from16 v13, p9

    :try_start_4d
    invoke-direct/range {v1 .. v13}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallEnroll(Landroid/os/IBinder;Landroid/os/IBinder;[BILandroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V

    move-object/from16 v1, p4

    goto :goto_67

    :catch_53
    move-exception v0

    move v15, v12

    goto :goto_6b

    :cond_56
    move v15, v12

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "mMiuiFaceService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v14, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_62} :catch_6a

    move-object/from16 v1, p4

    :try_start_64
    invoke-virtual {v1, v15, v0}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_67} :catch_68

    :goto_67
    goto :goto_81

    :catch_68
    move-exception v0

    goto :goto_71

    :catch_6a
    move-exception v0

    :goto_6b
    move-object/from16 v1, p4

    goto :goto_71

    :catch_6e
    move-exception v0

    move v15, v12

    move-object v1, v13

    :goto_71
    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "exception in enroll: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_81

    invoke-direct {v14, v15}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_81
    :goto_81
    return-void

    :cond_82
    move-object v1, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an enrollment callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public extCmd(II)I
    .registers 12

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallExtCmd(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_1d

    move v0, v1

    :cond_1c
    goto :goto_35

    :catch_1d
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_5f

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extCmd  cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return v0
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallGetEnrolledFaces(Landroid/os/IBinder;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1b

    move-object v0, v2

    :cond_1a
    goto :goto_33

    :catch_1b
    move-exception v2

    sget-object v3, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transact fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    sget-boolean v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_6e

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnrolledFaces   res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_62

    :cond_4c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_64

    :cond_62
    :goto_62
    const-string v4, " is null"

    :goto_64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-object v0
.end method

.method public getManagerVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallGetVendorInfo(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_17

    move-object v0, v1

    :cond_16
    goto :goto_2f

    :catch_17
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_49

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVendorInfo, res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object v0
.end method

.method public hasEnrolledFaces()I
    .registers 6

    const/4 v0, -0x2

    :try_start_1
    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    if-lez v1, :cond_d

    iget-boolean v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsValid:Z

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I

    move v0, v1

    goto :goto_14

    :cond_d
    iget v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mFaceCount:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    if-lez v1, :cond_13

    const/4 v0, -0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    goto :goto_2d

    :catch_15
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return v0
.end method

.method public isFaceFeatureEnabled()Z
    .registers 2

    invoke-virtual {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->isFaceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mIsSuperPower:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isFaceFeatureSupport()Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFaceUnlockInited()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    return v0
.end method

.method public isReleased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMultiFaceInput()Z
    .registers 3

    const-string/jumbo v0, "support_multi_face_input"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "support_multi_face_input_global"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public isSupportScreenOnDelayed()Z
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "support_screen_on_delayed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_23

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportScreenOnDelayed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return v0
.end method

.method public preInitAuthen()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mHasInit:Z

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallPpreInitAuthen(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    goto :goto_32

    :catch_1a
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public remove(Landroid/hardware/miuiface/Miuiface;Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;)V
    .registers 12

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove  faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v0, 0x0

    :try_start_28
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_4c

    iput-object p1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    iput-object p2, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    iput-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iget-object v3, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getGroupId()I

    move-result v6

    iget-object v8, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mServiceReceiver:Landroid/os/IBinder;

    move-object v2, p0

    move v7, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRemove(Landroid/os/IBinder;Landroid/os/IBinder;IIILandroid/os/IBinder;)V

    goto :goto_5c

    :cond_4c
    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string v2, "mMiuiFaceService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x834

    invoke-direct {p0, v1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/miuiface/Miuiface;ILjava/lang/CharSequence;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_5c} :catch_5d

    :goto_5c
    goto :goto_75

    :catch_5d
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .registers 8

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rename  faceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const/4 v0, 0x0

    :try_start_24
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1, v0, p2}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRename(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_31

    :cond_30
    goto :goto_49

    :catch_31
    move-exception v1

    sget-object v2, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transact fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method public resetTimeout([B)V
    .registers 6

    sget-boolean v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->initService()V

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->mMiuiFaceService:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->binderCallRestTimeout(Landroid/os/IBinder;[B)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    :cond_18
    goto :goto_31

    :catch_19
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transact fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-void
.end method
