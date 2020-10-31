.class public Landroid/miui/BiometricConnect;
.super Ljava/lang/Object;
.source "BiometricConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/miui/BiometricConnect$DBTemplate;,
        Landroid/miui/BiometricConnect$DBGroup;
    }
.end annotation


# static fields
.field public static DEBUG_LOG:Z = false

.field public static final MSG_BUNDLE_KEY:Ljava/lang/String; = "tag"

.field public static final MSG_BUNDLE_VALUE_DB:I = 0x3

.field public static final MSG_BUNDLE_VALUE_DB_COMMIT:I = 0x4

.field public static final MSG_BUNDLE_VALUE_DEPTHMAP:I = 0x5

.field public static final MSG_BUNDLE_VALUE_ENROLL_PARAM:I = 0x6

.field public static final MSG_BUNDLE_VALUE_FACE:I = 0x2

.field public static final MSG_BUNDLE_VALUE_HASFACE:I = 0x7

.field public static final MSG_BUNDLE_VALUE_INIT:I = 0x0

.field public static final MSG_BUNDLE_VALUE_SURFACE:I = 0x1

.field public static final MSG_CALLBACK_BUNDLE:I = 0x3ed

.field public static final MSG_CALLBACK_EVENT:I = 0x3ec

.field public static final MSG_CB_BUNDLE_DB_GROUP:Ljava/lang/String; = "group"

.field public static final MSG_CB_BUNDLE_DB_GROUP_ID_MAX:Ljava/lang/String; = "group_id_max"

.field public static final MSG_CB_BUNDLE_DB_TEMPLATE:Ljava/lang/String; = "template"

.field public static final MSG_CB_BUNDLE_DB_TEMPLATE_ID_MAX:Ljava/lang/String; = "template_id_max"

.field public static final MSG_CB_BUNDLE_DEPTHMAP_BIT_PER_POINT:Ljava/lang/String; = "bitPerPoint"

.field public static final MSG_CB_BUNDLE_DEPTHMAP_DATA:Ljava/lang/String; = "data"

.field public static final MSG_CB_BUNDLE_DEPTHMAP_H:Ljava/lang/String; = "h"

.field public static final MSG_CB_BUNDLE_DEPTHMAP_TYPE:Ljava/lang/String; = "type"

.field public static final MSG_CB_BUNDLE_DEPTHMAP_W:Ljava/lang/String; = "w"

.field public static final MSG_CB_BUNDLE_ENROLL_PARAM_DETECT_DEPTHMAP:Ljava/lang/String; = "detect_depthmap"

.field public static final MSG_CB_BUNDLE_ENROLL_PARAM_DETECT_DISTANCE:Ljava/lang/String; = "detect_distance"

.field public static final MSG_CB_BUNDLE_ENROLL_PARAM_DETECT_FACE:Ljava/lang/String; = "detect_face"

.field public static final MSG_CB_BUNDLE_ENROLL_PARAM_DETECT_ZONE:Ljava/lang/String; = "detect_zone"

.field public static final MSG_CB_BUNDLE_ENROLL_PARAM_WAITING_UI:Ljava/lang/String; = "wait_ui"

.field public static final MSG_CB_BUNDLE_FACE_DISTANCE:Ljava/lang/String; = "distance"

.field public static final MSG_CB_BUNDLE_FACE_FLOAT_EYE_DIST:Ljava/lang/String; = "eye_dist"

.field public static final MSG_CB_BUNDLE_FACE_FLOAT_PITCH:Ljava/lang/String; = "pitch"

.field public static final MSG_CB_BUNDLE_FACE_FLOAT_ROLL:Ljava/lang/String; = "roll"

.field public static final MSG_CB_BUNDLE_FACE_FLOAT_YAW:Ljava/lang/String; = "yaw"

.field public static final MSG_CB_BUNDLE_FACE_HAS_FACE:Ljava/lang/String; = "has_face"

.field public static final MSG_CB_BUNDLE_FACE_IS_IR:Ljava/lang/String; = "is_ir_detect"

.field public static final MSG_CB_BUNDLE_FACE_POINTS_ARRAY:Ljava/lang/String; = "points_array"

.field public static final MSG_CB_BUNDLE_FACE_RECT_BOUND:Ljava/lang/String; = "bound"

.field public static final MSG_CB_BUNDLE_SHAREMEM_FD:Ljava/lang/String; = "fd"

.field public static final MSG_CB_BUNDLE_SHAREMEM_SIZE:Ljava/lang/String; = "fd_size"

.field public static final MSG_CB_EVENT_DATABASE:I = 0x2b

.field public static final MSG_CB_EVENT_ENROLL_ERROR:I = 0x1f

.field public static final MSG_CB_EVENT_ENROLL_INFO:I = 0x20

.field public static final MSG_CB_EVENT_ENROLL_SUCCESS:I = 0x1e

.field public static final MSG_CB_EVENT_IR_CAM_CLOSED:I = 0x17

.field public static final MSG_CB_EVENT_IR_CAM_ERROR:I = 0x18

.field public static final MSG_CB_EVENT_IR_CAM_FACE_DETECT_BASE_SIZE:I = 0x16

.field public static final MSG_CB_EVENT_IR_CAM_OPEND:I = 0x14

.field public static final MSG_CB_EVENT_IR_CAM_PREVIEW_SIZE:I = 0x15

.field public static final MSG_CB_EVENT_RGB_CAM_CLOSED:I = 0x3

.field public static final MSG_CB_EVENT_RGB_CAM_ERROR:I = 0x4

.field public static final MSG_CB_EVENT_RGB_CAM_FACE_DETECT_BASE_SIZE:I = 0x2

.field public static final MSG_CB_EVENT_RGB_CAM_OPEND:I = 0x0

.field public static final MSG_CB_EVENT_RGB_CAM_PREVIEW_SIZE:I = 0x1

.field public static final MSG_CB_EVENT_VERIFY_ERROR:I = 0x29

.field public static final MSG_CB_EVENT_VERIFY_INFO:I = 0x2a

.field public static final MSG_CB_EVENT_VERIFY_SUCCESS:I = 0x28

.field public static final MSG_COMMAND_DB_PREPARE:I = 0x9

.field public static final MSG_COMMAND_DB_RESET:I = 0xa

.field public static final MSG_COMMAND_DEINIT_CALLBACK:I = 0x2

.field public static final MSG_COMMAND_ENROLL_START:I = 0x7

.field public static final MSG_COMMAND_ENROLL_STOP:I = 0x8

.field public static final MSG_COMMAND_FAKE_IR_CB:I = 0xb

.field public static final MSG_COMMAND_INIT_CALLBACK:I = 0x1

.field public static final MSG_COMMAND_RESUME_ENROLL_LOGIC:I = 0xe

.field public static final MSG_COMMAND_RGB_CAM_CLOSE:I = 0x4

.field public static final MSG_COMMAND_RGB_CAM_OPEN:I = 0x3

.field public static final MSG_COMMAND_SHARE_MEM_USED:I = 0xc

.field public static final MSG_COMMAND_TEST:I = 0x64

.field public static final MSG_COMMAND_UPDATE_DEPTHMAP_TYPE:I = 0xd

.field public static final MSG_COMMAND_VERIFY_START:I = 0x5

.field public static final MSG_COMMAND_VERIFY_STOP:I = 0x6

.field public static final MSG_CONNECT_TEST:I = 0x270f

.field public static final MSG_REPLY_ARG1:Ljava/lang/String; = "arg1"

.field public static final MSG_REPLY_ARG2:Ljava/lang/String; = "arg2"

.field public static final MSG_REPLY_BUNDLE_KEY:Ljava/lang/String; = "key"

.field public static final MSG_REPLY_EVENT:Ljava/lang/String; = "event"

.field public static final MSG_REPLY_MODULE_ID:Ljava/lang/String; = "module_id"

.field public static final MSG_REPLY_NO_SEND_WAIT:Ljava/lang/String; = "auto_reply"

.field public static final MSG_REPLY_RESULT:Ljava/lang/String; = "result"

.field public static final MSG_SEND_BUNDLE:I = 0x3ea

.field public static final MSG_SEND_COMMAND:I = 0x3e9

.field public static final MSG_SET_DEBUG_PREVIEW_SURFACE:I = 0x7d0

.field public static final MSG_SET_PREVIEW_SURFACE:I = 0x3eb

.field public static final MSG_SEVICE_VERSION:I = 0x3e8

.field public static final MSG_VER_MODULE_ID_STRUCT_LIGHT:I = 0x1

.field public static final MSG_VER_MODULE_MAJ:Ljava/lang/String; = "module_ver_maj"

.field public static final MSG_VER_MODULE_MIN:Ljava/lang/String; = "module_ver_min"

.field public static final MSG_VER_SER_MAJ:Ljava/lang/String; = "svc_ver_maj"

.field public static final MSG_VER_SER_MIN:Ljava/lang/String; = "svc_ver_min"

.field public static final SERVICE_NAME:Ljava/lang/String; = "BiometricService"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.biometric"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static syncDebugLog()V
    .registers 2

    const-string/jumbo v0, "persist.biometric.debug.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG_LOG:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricConnect"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
