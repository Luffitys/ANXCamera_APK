.class public Landroid/hardware/miuiface/Miui3DFaceManagerImpl;
.super Ljava/lang/Object;
.source "Miui3DFaceManagerImpl.java"

# interfaces
.implements Landroid/hardware/miuiface/IMiuiFaceManager;
.implements Landroid/hardware/miuiface/BiometricClient$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;,
        Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;
    }
.end annotation


# static fields
.field private static final CANCEL_STATUS_DONE:I = 0x1

.field private static final CANCEL_STATUS_NONE:I = 0x0

.field public static final COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field private static final DB_STATUS_NONE:I = 0x0

.field private static final DB_STATUS_PREPARED:I = 0x2

.field private static final DB_STATUS_PREPARING:I = 0x1

.field private static DEBUG:Z = false

.field private static final FACEUNLOCK_SUPPORT_SUPERPOWER:Ljava/lang/String; = "faceunlock_support_superpower"

.field private static final FACE_UNLOCK_HAS_FEATURE:Ljava/lang/String; = "face_unlock_has_feature_sl"

.field private static final FACE_UNLOCK_HAS_FEATURE_URI:Ljava/lang/String; = "content://settings/secure/face_unlock_has_feature_sl"

.field private static volatile INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final MSG_AUTHENTICATION_HELP_ALL_BLOCKED:I = 0x1c

.field public static final MSG_AUTHENTICATION_HELP_BAD_AMBIENT_LIGHT:I = 0x20

.field public static final MSG_AUTHENTICATION_HELP_BOTH_EYE_BLOCKED:I = 0x19

.field public static final MSG_AUTHENTICATION_HELP_BOTH_EYE_CLOSE:I = 0x1f

.field public static final MSG_AUTHENTICATION_HELP_FACE_AUTH_FAILD:I = 0x46

.field public static final MSG_AUTHENTICATION_HELP_FACE_DETECT_FAIL:I = 0x14

.field public static final MSG_AUTHENTICATION_HELP_FACE_DETECT_OK:I = 0xa

.field public static final MSG_AUTHENTICATION_HELP_FACE_TOO_NEER:I = 0x21

.field public static final MSG_AUTHENTICATION_HELP_LEFTEYE_MOUSE_BLOCKED:I = 0x1a

.field public static final MSG_AUTHENTICATION_HELP_LEFT_EYE_BLOCKED:I = 0x16

.field public static final MSG_AUTHENTICATION_HELP_LEFT_EYE_CLOSE:I = 0x1d

.field public static final MSG_AUTHENTICATION_HELP_LIVING_BODY_DETECTION_FAILED:I = 0x3f

.field public static final MSG_AUTHENTICATION_HELP_MOUSE_BLOCKED:I = 0x18

.field public static final MSG_AUTHENTICATION_HELP_RIGHTEYE_MOUSE_BLOCKED:I = 0x1b

.field public static final MSG_AUTHENTICATION_HELP_RIGHT_EYE_BLOCKED:I = 0x17

.field public static final MSG_AUTHENTICATION_HELP_RIGHT_EYE_CLOSE:I = 0x1e

.field public static final MSG_AUTHENTICATION_STOP:I = 0x22

.field public static final MSG_ENROLL_ENROLL_TIMEOUT:I = 0x42

.field public static final MSG_ENROLL_ERROR_CREATE_FOLDER_FAILED:I = 0x34

.field public static final MSG_ENROLL_ERROR_DISABLE_FAIL:I = 0x39

.field public static final MSG_ENROLL_ERROR_ENABLE_FAIL:I = 0x32

.field public static final MSG_ENROLL_ERROR_FACE_LOST:I = 0x3e

.field public static final MSG_ENROLL_ERROR_FLOOD_ITO_ERR:I = 0x29

.field public static final MSG_ENROLL_ERROR_IR_CAM_CLOSED:I = 0x6

.field public static final MSG_ENROLL_ERROR_LASER_ITO_ERR:I = 0x28

.field public static final MSG_ENROLL_ERROR_LIVING_BODY_DETECTION_FAILED:I = 0x3f

.field public static final MSG_ENROLL_ERROR_NOT_SAME_PERSON:I = 0x3a

.field public static final MSG_ENROLL_ERROR_PREVIEW_CAM_ERROR:I = 0x5

.field public static final MSG_ENROLL_ERROR_RTMV_IC_ERR:I = 0x35

.field public static final MSG_ENROLL_ERROR_SAVE_TEMPLATE_FAILED:I = 0x33

.field public static final MSG_ENROLL_ERROR_SDK_ERROR:I = 0x3b

.field public static final MSG_ENROLL_ERROR_SYSTEM_EXCEPTION:I = 0x36

.field public static final MSG_ENROLL_ERROR_TEMLATE_FILE_NOT_EXIST:I = 0x38

.field public static final MSG_ENROLL_ERROR_TOF_BE_COVERED:I = 0x40

.field public static final MSG_ENROLL_ERROR_TOF_NOT_MOUNT:I = 0x41

.field public static final MSG_ENROLL_ERROR_UNLOCK_FAIL:I = 0x37

.field public static final MSG_ENROLL_FACE_IR_FOUND:I = 0x2

.field public static final MSG_ENROLL_FACE_IR_NOT_FOUND:I = 0x4

.field public static final MSG_ENROLL_FACE_RGB_FOUND:I = 0x1

.field public static final MSG_ENROLL_FACE_RGB_NOT_FOUND:I = 0x3

.field public static final MSG_ENROLL_HELP_ALL_BLOCKED:I = 0x1c

.field public static final MSG_ENROLL_HELP_BAD_AMBIENT_LIGHT:I = 0x20

.field public static final MSG_ENROLL_HELP_BOTH_EYE_BLOCKED:I = 0x19

.field public static final MSG_ENROLL_HELP_BOTH_EYE_CLOSE:I = 0x1f

.field public static final MSG_ENROLL_HELP_DIRECTION_DOWN:I = 0xd

.field public static final MSG_ENROLL_HELP_DIRECTION_LEFT:I = 0xe

.field public static final MSG_ENROLL_HELP_DIRECTION_RIGHT:I = 0xf

.field public static final MSG_ENROLL_HELP_DIRECTION_UP:I = 0xc

.field public static final MSG_ENROLL_HELP_FACE_DETECT_FAIL_NOT_IN_ROI:I = 0x15

.field public static final MSG_ENROLL_HELP_FACE_DETECT_OK:I = 0xa

.field public static final MSG_ENROLL_HELP_FACE_TOO_NEER:I = 0x21

.field public static final MSG_ENROLL_HELP_IR_CAM_OPEND:I = 0x2

.field public static final MSG_ENROLL_HELP_LEFTEYE_MOUSE_BLOCKED:I = 0x1a

.field public static final MSG_ENROLL_HELP_LEFT_EYE_BLOCKED:I = 0x16

.field public static final MSG_ENROLL_HELP_LEFT_EYE_CLOSE:I = 0x1d

.field public static final MSG_ENROLL_HELP_MOUSE_BLOCKED:I = 0x18

.field public static final MSG_ENROLL_HELP_PREVIEW_CAM_OPEND:I = 0x1

.field public static final MSG_ENROLL_HELP_RIGHTEYE_MOUSE_BLOCKED:I = 0x1b

.field public static final MSG_ENROLL_HELP_RIGHT_EYE_BLOCKED:I = 0x17

.field public static final MSG_ENROLL_HELP_RIGHT_EYE_CLOSE:I = 0x1e

.field public static final MSG_ENROLL_PROGRESS_SUCCESS:I = 0x0

.field private static final POWERMODE_SUPERSAVE_OPEN:Ljava/lang/String; = "power_supersave_mode_open"

.field private static final POWERMODE_SUPERSAVE_OPEN_URI:Ljava/lang/String; = "content://settings/secure/power_supersave_mode_open"

.field private static final RECEIVER_ON_AUTHENTICATION_TIMEOUT:I = 0x1

.field private static final RECEIVER_ON_ENROLL_TIMEOUT:I = 0x0

.field public static final TABLE_TEMPLATE_COLUMN_DATA:Ljava/lang/String; = "data"

.field public static final TABLE_TEMPLATE_COLUMN_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final TABLE_TEMPLATE_COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final TABLE_TEMPLATE_COLUMN_NAME:Ljava/lang/String; = "template_name"

.field public static final TABLE_TEMPLATE_COLUMN_VALID:Ljava/lang/String; = "valid"

.field public static final TABLE_TEMPLATE_NAME:Ljava/lang/String; = "_template"

.field private static final TEMPLATE_PATH:Ljava/lang/String; = "/data/user/0/com.xiaomi.biometric/files/"

.field private static final VERSION_1:I = 0x1

.field private static final height:I = 0x4

.field private static final width:I = 0x3


# instance fields
.field private boostFramework:Ljava/lang/Object;

.field private hasEnrollFace:I

.field private mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

.field private mBinderLock:Ljava/lang/Object;

.field private mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

.field private mContext:Landroid/content/Context;

.field private mDatabaseChanged:Z

.field private mDatabaseStatus:I

.field private mDisonnected:Z

.field private mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

.field private mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

.field private mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

.field private mGroupIdMax:I

.field private mGroupItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasFaceData:Z

.field mHasFaceDataObserver:Landroid/database/ContentObserver;

.field private mIsSuperPower:Z

.field private mMiuifaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miuiface;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

.field private mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

.field mSuperPowerOpenObserver:Landroid/database/ContentObserver;

.field private mTemplateIdMax:I

.field private mTemplateItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mcancelStatus:I

.field private myDB:Landroid/database/sqlite/SQLiteDatabase;

.field private myTemplateItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private sAcquireFunc:Ljava/lang/reflect/Method;

.field private sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private sReleaseFunc:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "3DFaceManagerImpl_clientFaceManagerImpl_client"

    sput-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mcancelStatus:I

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myTemplateItemList:Ljava/util/List;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mMiuifaceList:Ljava/util/List;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupItemList:Ljava/util/List;

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateIdMax:I

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupIdMax:I

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->hasEnrollFace:I

    new-instance v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    invoke-direct {v2}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;-><init>()V

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->boostFramework:Ljava/lang/Object;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sPerfClass:Ljava/lang/Class;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sReleaseFunc:Ljava/lang/reflect/Method;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sAcquireFunc:Ljava/lang/reflect/Method;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    new-instance v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHasFaceDataObserver:Landroid/database/ContentObserver;

    new-instance v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$2;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$2;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mSuperPowerOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "faceunlock_support_superpower"

    const/4 v5, -0x2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "face_unlock_has_feature_sl"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHasFaceDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHasFaceDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "power_supersave_mode_open"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mSuperPowerOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v0, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mSuperPowerOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/content/Context;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/hardware/miuiface/BiometricClient;

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/miuiface/BiometricClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    invoke-virtual {v0, p0}, Landroid/hardware/miuiface/BiometricClient;->startService(Landroid/hardware/miuiface/BiometricClient$ServiceCallback;)V

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->preloadBoostFramework()V

    return-void
.end method

.method private IrToRgbMove(FF)F
    .registers 4

    add-float v0, p1, p2

    return v0
.end method

.method private IrToRgbRadio(F)F
    .registers 4

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private IrToRgbScale(FF)F
    .registers 5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_9

    mul-float v0, p1, p2

    goto :goto_d

    :cond_9
    sub-float v1, v0, p1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    :goto_d
    return v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHasFaceData:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mIsSuperPower:Z

    return p1
.end method

.method static synthetic access$402(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;I)I
    .registers 2

    iput p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mcancelStatus:I

    return p1
.end method

.method static synthetic access$500(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelAuthentication()V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelEnrollment()V

    return-void
.end method

.method private adjustDetectZone([F)V
    .registers 8

    if-eqz p1, :cond_91

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    goto/16 :goto_91

    :cond_8
    const/4 v0, 0x0

    :goto_9
    array-length v2, p1

    if-ge v0, v2, :cond_90

    aget v2, p1, v0

    rem-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_40

    if-ge v0, v1, :cond_21

    aget v3, p1, v0

    const v4, 0x3f970a3d    # 1.18f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbScale(FF)F

    move-result v3

    aput v3, p1, v0

    goto :goto_2c

    :cond_21
    aget v3, p1, v0

    const v4, 0x3f87ae14    # 1.06f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbScale(FF)F

    move-result v3

    aput v3, p1, v0

    :goto_2c
    aget v3, p1, v0

    const v4, -0x4276c8b4    # -0.067f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbMove(FF)F

    move-result v3

    aput v3, p1, v0

    aget v3, p1, v0

    invoke-direct {p0, v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbRadio(F)F

    move-result v3

    aput v3, p1, v0

    goto :goto_64

    :cond_40
    if-ge v0, v1, :cond_4e

    aget v3, p1, v0

    const v4, 0x3f947ae1    # 1.16f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbScale(FF)F

    move-result v3

    aput v3, p1, v0

    goto :goto_59

    :cond_4e
    aget v3, p1, v0

    const v4, 0x3f866666    # 1.05f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbScale(FF)F

    move-result v3

    aput v3, p1, v0

    :goto_59
    aget v3, p1, v0

    const v4, -0x42cbc6a8    # -0.044f

    invoke-direct {p0, v3, v4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->IrToRgbMove(FF)F

    move-result v3

    aput v3, p1, v0

    :goto_64
    sget-object v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustDetectZone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_90
    return-void

    :cond_91
    :goto_91
    return-void
.end method

.method private cancelAuthentication()V
    .registers 5

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVerify ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ignore!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mcancelStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    const/16 v2, 0x22

    invoke-direct {p0, v2}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->getMessageInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    iput v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mcancelStatus:I

    :cond_35
    :try_start_35
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->boostFramework:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_42} :catch_48
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_42} :catch_43

    goto :goto_4c

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4d

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_4c
    :goto_4c
    nop

    :goto_4d
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelEnrollment()V
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_d

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEnroll ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private commitDatabase()V
    .registers 11

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "commitDatabase ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "commitDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Landroid/miui/BiometricConnect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;

    new-instance v4, Landroid/miui/BiometricConnect$DBGroup;

    iget v5, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;->id:I

    iget-object v6, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/miui/BiometricConnect$DBGroup;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4a
    const-string v2, "group"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    new-instance v5, Landroid/miui/BiometricConnect$DBTemplate;

    iget v6, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->id:I

    iget-object v7, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->name:Ljava/lang/String;

    iget-object v8, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->data:Ljava/lang/String;

    iget v9, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->group_id:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/miui/BiometricConnect$DBTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_77
    const-string/jumbo v3, "template"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/hardware/miuiface/BiometricClient;->sendBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method private findTemplate(I)Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;
    .registers 5

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    iget v2, v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->id:I

    if-ne v2, p1, :cond_17

    return-object v1

    :cond_17
    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;
    .registers 3

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-eqz v0, :cond_f

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    invoke-interface {v0}, Landroid/hardware/miuiface/IMiuiFaceManager;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    :cond_f
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v0, :cond_26

    const-class v0, Landroid/hardware/miuiface/MiuiFaceManagerImpl;

    monitor-enter v0

    :try_start_16
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    if-nez v1, :cond_21

    new-instance v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;

    invoke-direct {v1, p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :goto_26
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->INSTANCE:Landroid/hardware/miuiface/IMiuiFaceManager;

    return-object v0
.end method

.method private getMessageInfo(I)Ljava/lang/String;
    .registers 6

    const-string v0, "define by 3dclient"

    const/16 v1, 0x22

    if-eq p1, v1, :cond_1d

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_1d
    const-string/jumbo v0, "\u88abcancel"

    nop

    :goto_21
    return-object v0
.end method

.method private handlerDatabase(Landroid/os/Bundle;)V
    .registers 7

    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlerDatabase mDatabaseStatus ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_18

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlerDatabase "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-string/jumbo v0, "template_id_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateIdMax:I

    const-string v0, "group_id_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupIdMax:I

    nop

    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_4e

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlerDatabase listGroup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    nop

    const-string/jumbo v1, "template"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    sget-boolean v2, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v2, :cond_74

    sget-object v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerDatabase list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    invoke-direct {p0, v0, v1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->initClientDB(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private handlerFace(Landroid/os/Bundle;)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_10

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlerFace "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string v0, "is_ir_detect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "has_face"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v3, :cond_2c

    if-nez v0, :cond_27

    const/4 v4, 0x3

    goto :goto_28

    :cond_27
    const/4 v4, 0x4

    :goto_28
    nop

    invoke-virtual {v3, v4, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_2c
    return-void

    :cond_2d
    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    if-nez v3, :cond_38

    new-instance v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    invoke-direct {v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;-><init>()V

    iput-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    :cond_38
    const-string v3, "bound"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/Rect;

    if-eqz v4, :cond_6b

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    move-object v5, v3

    check-cast v5, Landroid/graphics/Rect;

    iput-object v5, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->bounds:Landroid/graphics/Rect;

    sget-boolean v4, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v4, :cond_6b

    sget-object v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlerFace detect face:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    iget-object v6, v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    const-string/jumbo v5, "yaw"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->yaw:F

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    const-string/jumbo v5, "pitch"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->pitch:F

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    const-string/jumbo v5, "roll"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->roll:F

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    const-string v5, "eye_dist"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v4, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->eye_dist:F

    const-string/jumbo v4, "points_array"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    instance-of v5, v4, [Landroid/graphics/Point;

    if-eqz v5, :cond_a8

    iget-object v5, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mFaceInfo:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;

    move-object v6, v4

    check-cast v6, [Landroid/graphics/Point;

    iput-object v6, v5, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FaceInfo;->points_array:[Landroid/graphics/Point;

    :cond_a8
    if-nez v0, :cond_b3

    iget-object v5, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v5, :cond_b3

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_c3

    :cond_b3
    if-eqz v0, :cond_c3

    iget-object v5, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v5, :cond_c3

    iget-object v5, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-boolean v5, v5, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableDistanceDetect:Z

    iget-object v5, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_c3
    :goto_c3
    return-void
.end method

.method private initClientDB(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/miui/BiometricConnect$DBGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/miui/BiometricConnect$DBTemplate;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initClientDB begin"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/miui/BiometricConnect$DBTemplate;

    new-instance v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    invoke-direct {v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;-><init>()V

    iget v4, v2, Landroid/miui/BiometricConnect$DBTemplate;->mId:I

    iput v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->id:I

    iget-object v4, v2, Landroid/miui/BiometricConnect$DBTemplate;->mName:Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->name:Ljava/lang/String;

    iget v4, v2, Landroid/miui/BiometricConnect$DBTemplate;->mGroupId:I

    iput v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->group_id:I

    iget-object v4, v2, Landroid/miui/BiometricConnect$DBTemplate;->mData:Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->data:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupItemList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/miui/BiometricConnect$DBGroup;

    new-instance v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;

    invoke-direct {v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;-><init>()V

    iget v4, v2, Landroid/miui/BiometricConnect$DBGroup;->mId:I

    iput v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;->id:I

    iget-object v4, v2, Landroid/miui/BiometricConnect$DBGroup;->mName:Ljava/lang/String;

    iput-object v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$GroupItem;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mGroupItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_6d
    iput v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initClientDB ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private preloadBoostFramework()V
    .registers 6

    :try_start_0
    const-string v0, "android.util.BoostFramework"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sPerfClass:Ljava/lang/Class;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->boostFramework:Ljava/lang/Object;

    :cond_1c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-class v4, [I

    aput-object v4, v2, v3

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockAcquire"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sAcquireFunc:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v3, "perfLockRelease"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sReleaseFunc:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "preload BoostFramework succeed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4a

    nop

    goto :goto_53

    :catch_4a
    move-exception v0

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "preload class android.util.BoostFramework failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void
.end method

.method private prepareDatabase()V
    .registers 3

    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    if-eqz v0, :cond_d

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareDatabase ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepareDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    return-void
.end method

.method private resetDatabase()V
    .registers 3

    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetDatabase ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    return-void
.end method

.method private tryConnectService()V
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mDisonnected is true "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    invoke-virtual {v0, p0}, Landroid/hardware/miuiface/BiometricClient;->startService(Landroid/hardware/miuiface/BiometricClient$ServiceCallback;)V

    :cond_14
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    new-instance v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    goto :goto_2a

    :cond_f
    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2a

    new-instance v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$ClientHandler;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/os/Looper;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/miuiface/IMiuiFaceManager$LockoutResetCallback;)V
    .registers 5

    sget-boolean v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockoutResetCallback  callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public authenticate(Landroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .registers 15

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    const-string v1, " ignore!"

    const-string/jumbo v2, "start authenticate ctx:"

    if-eqz v0, :cond_23

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-virtual {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->hasEnrolledFaces()I

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has no enrolled face ctx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_45
    if-eqz p3, :cond_c6

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_57
    new-instance v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnAuthenticationCancelListener;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_60
    const/4 v0, 0x1

    :try_start_61
    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_96

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->boostFramework:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/high16 v8, 0x40800000    # 4.0f

    aput v8, v6, v7

    const/16 v7, 0xfff

    aput v7, v6, v0

    const/high16 v7, 0x40c00000    # 6.0f

    aput v7, v6, v4

    const/4 v4, 0x3

    aput v0, v6, v4

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_8c} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_61 .. :try_end_8c} :catch_8d

    goto :goto_96

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_97

    :catch_92
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_96
    :goto_96
    nop

    :goto_97
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->useHandler(Landroid/os/Handler;)V

    iput-object p3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->tryConnectService()V

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/Rect;I)V
    .registers 8

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    iget-boolean v5, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v5, :cond_15

    sget-object v5, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "enroll ignore!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    if-nez p8, :cond_1b

    const v5, 0x2bf20

    goto :goto_1d

    :cond_1b
    move/from16 v5, p8

    :goto_1d
    if-eqz v2, :cond_23

    const/16 v6, 0x7d0

    if-ge v5, v6, :cond_2a

    :cond_23
    sget-object v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v7, "enroll error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    sget-boolean v6, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v7, "]"

    const-string v8, ","

    if-eqz v6, :cond_a6

    sget-object v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xiaomi detectArea data:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xiaomi enrollArea data:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    if-eqz v1, :cond_bf

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_b6

    sget-object v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v7, "enrollment already canceled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b6
    new-instance v6, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v9}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$OnEnrollCancelListener;-><init>(Landroid/hardware/miuiface/Miui3DFaceManagerImpl;Landroid/hardware/miuiface/Miui3DFaceManagerImpl$1;)V

    invoke-virtual {v1, v6}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_bf
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v9, p4

    iput-object v9, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    const-string/jumbo v10, "surface"

    invoke-virtual {v6, v10, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v10, "width"

    const/4 v11, 0x3

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "height"

    const/4 v12, 0x4

    invoke-virtual {v6, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->tryConnectService()V

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v13, 0x1

    invoke-virtual {v10, v13, v6}, Landroid/hardware/miuiface/BiometricClient;->sendBundle(ILandroid/os/Bundle;)V

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(II)V

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    new-instance v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v12, v3, Landroid/graphics/RectF;->left:F

    iget v11, v3, Landroid/graphics/RectF;->top:F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v14, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v15, v12, v11, v13, v14}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;-><init>(FFFF)V

    iput-object v15, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    new-instance v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v12, v4, Landroid/graphics/RectF;->left:F

    iget v13, v4, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/RectF;->right:F

    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;-><init>(FFFF)V

    iput-object v11, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableDistanceDetect:Z

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    const/4 v12, 0x1

    iput-boolean v12, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableIrFaceDetect:Z

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iput-boolean v11, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableDepthmap:Z

    iget-object v10, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iput-boolean v12, v10, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enrollWaitUi:Z

    const/16 v10, 0x8

    new-array v10, v10, [F

    iget-object v12, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v12, v12, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v12, v12, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->top:F

    aput v12, v10, v11

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->right:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v11, v12, v11

    const/4 v13, 0x1

    aput v11, v10, v13

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->bottom:F

    const/4 v13, 0x2

    aput v11, v10, v13

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->left:F

    sub-float v11, v12, v11

    const/4 v14, 0x3

    aput v11, v10, v14

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->top:F

    const/4 v14, 0x4

    aput v11, v10, v14

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->right:F

    sub-float v11, v12, v11

    const/4 v14, 0x5

    aput v11, v10, v14

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->bottom:F

    const/4 v15, 0x6

    aput v11, v10, v15

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v11, v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->left:F

    sub-float/2addr v12, v11

    const/4 v11, 0x7

    aput v12, v10, v11

    invoke-direct {v0, v10}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->adjustDetectZone([F)V

    sget-boolean v12, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v12, :cond_24b

    sget-object v12, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "startEnroll rectDetectZones:["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->left:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->top:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->right:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectDetectZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v15, v15, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->bottom:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, "] adjustDetectZone -> ["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    aget v14, v10, v16

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v10, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    aget v13, v10, v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startEnroll rectEnrollZones:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->left:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->top:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->right:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-object v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->rectEnrollZones:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;

    iget v13, v13, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$FRect;->bottom:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x4

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x5

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x6

    aget v14, v10, v13

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    aget v13, v10, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24b
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "detect_zone"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    iget-object v8, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-boolean v8, v8, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableIrFaceDetect:Z

    const-string v11, "detect_face"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-boolean v8, v8, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableDistanceDetect:Z

    const-string v11, "detect_distance"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-boolean v8, v8, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enrollWaitUi:Z

    const-string/jumbo v11, "wait_ui"

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget-boolean v8, v8, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->enableDepthmap:Z

    const-string v11, "detect_depthmap"

    if-eqz v8, :cond_282

    iget-object v8, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollParam:Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;

    iget v8, v8, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$EnrollParam;->DepthmpaType:I

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, 0x0

    goto :goto_286

    :cond_282
    const/4 v8, 0x0

    invoke-virtual {v7, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_286
    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v12, 0x6

    invoke-virtual {v11, v12, v7}, Landroid/hardware/miuiface/BiometricClient;->sendBundle(ILandroid/os/Bundle;)V

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(I)V

    iget-object v11, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    int-to-long v12, v5

    invoke-virtual {v11, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;II)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V

    return-void
.end method

.method public extCmd(II)I
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBiometricClient:Landroid/hardware/miuiface/BiometricClient;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p2}, Landroid/hardware/miuiface/BiometricClient;->sendCommand(II)V

    const/4 v0, 0x0

    return v0
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .registers 11
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

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, " xiaomi getEnrolledFaces!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    new-instance v9, Landroid/hardware/miuiface/Miuiface;

    iget-object v4, v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->name:Ljava/lang/String;

    iget v5, v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->group_id:I

    iget v6, v2, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->id:I

    const-wide/16 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/miuiface/Miuiface;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_30
    return-object v0
.end method

.method public getManagerVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTemplatepath()I
    .registers 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.xiaomi.biometric/files/"

    const-string v2, "biometric.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8d

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getTemplatepath"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myTemplateItemList:Ljava/util/List;

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "selectTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "select _id,data,template_name,group_id from _template where valid=1"

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_83

    sget-object v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "xiaomi -->4.3 test"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    invoke-direct {v3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;-><init>()V

    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->id:I

    const-string/jumbo v4, "template_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->name:Ljava/lang/String;

    const-string v4, "group_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->group_id:I

    const-string v4, "data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->data:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myTemplateItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_83
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->myTemplateItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    return v3

    :cond_8d
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getTemplatepath faild"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getVendorInfo()Ljava/lang/String;
    .registers 2

    const-string v0, "3D Structure Light"

    return-object v0
.end method

.method public hasEnrolledFaces()I
    .registers 2

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->tryConnectService()V

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mHasFaceData:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isFaceFeatureEnabled()Z
    .registers 2

    invoke-virtual {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->isFaceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mIsSuperPower:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isFaceFeatureSupport()Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFaceUnlockInited()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isReleased()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

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
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onBiometricBundleCallback(IILandroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricBundleCallback ignore module_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    if-eqz v0, :cond_47

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricBundleCallback mDisonnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ignore key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_61

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricBundleCallback key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const/4 v0, 0x2

    if-eq p2, v0, :cond_6c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_68

    goto :goto_70

    :cond_68
    invoke-direct {p0, p3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->handlerDatabase(Landroid/os/Bundle;)V

    goto :goto_70

    :cond_6c
    invoke-direct {p0, p3}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->handlerFace(Landroid/os/Bundle;)V

    nop

    :goto_70
    return-void
.end method

.method public onBiometricEventCallback(IIII)V
    .registers 10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricEventCallback ignore - module_id:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    iget-boolean v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    if-eqz v1, :cond_67

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricEventCallback mDisonnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ignore event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_67
    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_91

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiometricEventCallback - event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", arg1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", arg2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    const/4 v1, 0x0

    if-eqz p2, :cond_1f0

    if-eq p2, v0, :cond_1c3

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1b7

    const/16 v2, 0x14

    if-eq p2, v2, :cond_1ae

    const/16 v2, 0x15

    if-eq p2, v2, :cond_18b

    const/16 v2, 0x17

    if-eq p2, v2, :cond_183

    const/16 v2, 0x18

    if-eq p2, v2, :cond_176

    packed-switch p2, :pswitch_data_1f8

    packed-switch p2, :pswitch_data_202

    goto/16 :goto_1f7

    :pswitch_b1
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    if-eqz v0, :cond_1f7

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mMiuifaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/miuiface/Miuiface;I)V

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    iput-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    goto/16 :goto_1f7

    :pswitch_c6
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1f7

    invoke-virtual {v0, p3, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto/16 :goto_1f7

    :pswitch_cf
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1f7

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto/16 :goto_1f7

    :pswitch_da
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiometricEventCallback  MSG_CB_EVENT_VERIFY_SUCCESS mAuthenticationCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mAuthenticationCallback:Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1f7

    invoke-virtual {v0, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/miuiface/Miuiface;)V

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelAuthentication()V

    goto/16 :goto_1f7

    :pswitch_fe
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_CB_EVENT_ENROLL_INFO arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1f7

    invoke-virtual {v0, p3, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto/16 :goto_1f7

    :pswitch_11d
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1f7

    invoke-virtual {v0, p3, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_CB_EVENT_ENROLL_ERROR arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f7

    :pswitch_13c
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBiometricEventCallback  MSG_CB_EVENT_ENROLL_SUCCESS mEnrollmentCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v1, :cond_1f7

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentProgress(II)V

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const-string v4, "face_unlock_has_feature_sl"

    invoke-static {v1, v4, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16b
    iput v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->prepareDatabase()V

    monitor-exit v0

    goto/16 :goto_1f7

    :catchall_173
    move-exception v1

    monitor-exit v0
    :try_end_175
    .catchall {:try_start_16b .. :try_end_175} :catchall_173

    throw v1

    :cond_176
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1f7

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelEnrollment()V

    goto/16 :goto_1f7

    :cond_183
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "MSG_CB_EVENT_IR_CAM_CLOSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :cond_18b
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_1f7

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricEventCallback  MSG_CB_EVENT_IR_CAM_PREVIEW_SIZE arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :cond_1ae
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1f7

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_1f7

    :cond_1b7
    iget-object v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1f7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->cancelEnrollment()V

    goto :goto_1f7

    :cond_1c3
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_1f7

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricEventCallback  MSG_CB_EVENT_RGB_CAM_PREVIEW_SIZE mEnrollmentCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",arg2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f7

    :cond_1f0
    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mEnrollmentCallback:Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;

    if-eqz v2, :cond_1f7

    invoke-virtual {v2, v0, v1}, Landroid/hardware/miuiface/IMiuiFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_1f7
    :goto_1f7
    return-void

    :pswitch_data_1f8
    .packed-switch 0x1e
        :pswitch_13c
        :pswitch_11d
        :pswitch_fe
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x28
        :pswitch_da
        :pswitch_cf
        :pswitch_c6
        :pswitch_b1
    .end packed-switch
.end method

.method public onBiometricEventClassLoader(Landroid/os/Bundle;)V
    .registers 4

    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBiometricEventClassLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-class v0, Landroid/miui/BiometricConnect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public onBiometricServiceConnected()V
    .registers 4

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->prepareDatabase()V

    return-void
.end method

.method public onBiometricServiceDisconnected()V
    .registers 4

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiometricServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    if-nez v0, :cond_37

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xiaomi--> set mDisonnected true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDisonnected:Z

    invoke-virtual {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->release()V

    :cond_37
    return-void
.end method

.method public preInitAuthen()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->tryConnectService()V

    return-void
.end method

.method public release()V
    .registers 4

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_1c

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release ignore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release ctx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    return-void
.end method

.method public remove(Landroid/hardware/miuiface/Miuiface;Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;)V
    .registers 8

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_d

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeTemplate ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTemplate error mDatabaseStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_6f
    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->findTemplate(I)Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    move-result-object v0

    if-nez v0, :cond_9a

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTemplate findTemplate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/miuiface/Miuiface;->getMiuifaceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9a
    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mTemplateItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_9f
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeTemplate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string v4, "face_unlock_has_feature_sl"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    iput-object p2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalCallback:Landroid/hardware/miuiface/IMiuiFaceManager$RemovalCallback;

    iput-object p1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mRemovalMiuiface:Landroid/hardware/miuiface/Miuiface;

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->commitDatabase()V

    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mReleased:Z

    if-eqz v0, :cond_d

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setTemplateName ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget v0, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemplateName error mPrepareDbStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    invoke-direct {p0, p1}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->findTemplate(I)Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;

    move-result-object v0

    if-nez v0, :cond_4f

    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTemplateName findTemplate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    sget-object v1, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setTemplateName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl$TemplateItem;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->mDatabaseChanged:Z

    invoke-direct {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->commitDatabase()V

    return-void
.end method

.method public resetTimeout([B)V
    .registers 4

    sget-boolean v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method
