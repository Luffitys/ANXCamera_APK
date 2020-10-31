.class public abstract Lorg/ifaa/android/manager/face/IFAAFaceManager;
.super Ljava/lang/Object;
.source "IFAAFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;
    }
.end annotation


# static fields
.field public static final ERR_FACE_CANCEL:I = 0x66

.field public static final ERR_FACE_LOCKED:I = 0x81

.field public static final ERR_FACE_TIMEOUT:I = 0x71

.field public static final FAIL_FACE_AUTHENTICATION:I = 0x67

.field public static final IFAA_FACE_ERR_AUTHENTICATOR_SIGN:I = 0x7a00000f

.field public static final IFAA_FACE_ERR_BUF_TOO_SHORT:I = 0x7a000004

.field public static final IFAA_FACE_ERR_CANCELLED:I = -0x2

.field public static final IFAA_FACE_ERR_ERASE:I = 0x7a00000c

.field public static final IFAA_FACE_ERR_GET_CELLINFO:I = 0x7a000011

.field public static final IFAA_FACE_ERR_GET_DEVICEID:I = 0x7a00000e

.field public static final IFAA_FACE_ERR_GET_FACEINFO:I = 0x7a000010

.field public static final IFAA_FACE_ERR_HASH:I = 0x7a000006

.field public static final IFAA_FACE_ERR_INVALID_PARAM:I = 0x7a000002

.field public static final IFAA_FACE_ERR_KEY_GEN:I = 0x7a000009

.field public static final IFAA_FACE_ERR_MTEE_BUSY:I = -0x1

.field public static final IFAA_FACE_ERR_MTEE_CALL:I = 0x7b000000

.field public static final IFAA_FACE_ERR_NOT_MATCH:I = 0x7a00000d

.field public static final IFAA_FACE_ERR_READ:I = 0x7a00000a

.field public static final IFAA_FACE_ERR_SIGN:I = 0x7a000007

.field public static final IFAA_FACE_ERR_SUCCESS:I = 0x1

.field public static final IFAA_FACE_ERR_TIMEOUT:I = 0x7a000005

.field public static final IFAA_FACE_ERR_UNKNOWN:I = 0x7a000001

.field public static final IFAA_FACE_ERR_UNKNOWN_CMD:I = 0x7a000003

.field public static final IFAA_FACE_ERR_VERIFY:I = 0x7a000008

.field public static final IFAA_FACE_ERR_WRITE:I = 0x7a00000b

.field public static final STATUS_FACE_BRIGHT:I = 0x197

.field public static final STATUS_FACE_CAPTURE:I = 0x19e

.field public static final STATUS_FACE_DARK:I = 0x196

.field public static final STATUS_FACE_EYE_CLOSED:I = 0x193

.field public static final STATUS_FACE_FAR:I = 0x194

.field public static final STATUS_FACE_HACKER:I = 0x1a2

.field public static final STATUS_FACE_IMAGE_DIRTY:I = 0x1a3

.field public static final STATUS_FACE_INSUFFICIENT:I = 0x192

.field public static final STATUS_FACE_MOUTH_OCCLUSION:I = 0x199

.field public static final STATUS_FACE_NEAR:I = 0x195

.field public static final STATUS_FACE_NO_FACE:I = 0x19f

.field public static final STATUS_FACE_OFFSET_BOTTOM:I = 0x19d

.field public static final STATUS_FACE_OFFSET_LEFT:I = 0x19a

.field public static final STATUS_FACE_OFFSET_RIGHT:I = 0x19b

.field public static final STATUS_FACE_OFFSET_TOP:I = 0x19c

.field public static final STATUS_FACE_PARTIAL:I = 0x191

.field public static final STATUS_FACE_QUALITY:I = 0x198

.field public static final STATUS_FACE_TOO_FAST:I = 0x1a1

.field public static final STATUS_FACE_TOO_SLOW:I = 0x1a0

.field public static final SUCC_FACE_AUTHENTICATION:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract authenticate(IILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
.end method

.method public abstract cancel(I)I
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
