.class public Lcom/android/camera/statistic/CameraStatUtil;
.super Ljava/lang/Object;
.source "CameraStatUtil.java"


# static fields
.field private static final AUTO:Ljava/lang/String; = "auto"

.field public static final AUTO_OFF:Ljava/lang/String; = "auto-off"

.field public static final AUTO_ON:Ljava/lang/String; = "auto-on"

.field public static final NONE:Ljava/lang/String; = "none"

.field private static final OTHERS:Ljava/lang/String; = "others"

.field private static final TAG:Ljava/lang/String; = "CameraStatUtil"

.field private static sBeautyTypeToName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExposureTimeLessThan1sToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterTypeToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPictureQualityIndexToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTriggerModeIdToName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa1

    const-string v2, "\u5c0f\u89c6\u9891"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xae

    const-string v2, "Live\u89c6\u9891"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xb1

    const-string v2, "\u840c\u62cd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa3

    const-string v2, "\u62cd\u7167"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa5

    const-string v2, "\u65b9\u5f62"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa7

    const-string v2, "\u624b\u52a8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xab

    const-string v2, "\u4eba\u50cf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u5168\u666f"

    const/16 v2, 0xa6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v2, 0xb0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xac

    const-string v2, "\u6162\u52a8\u4f5c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const-string v1, "\u5f55\u50cf"

    const/16 v2, 0xa2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v2, 0xa9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xad

    const-string v2, "\u591c\u666f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xaf

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "\u62cd\u7167\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "\u97f3\u91cf\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "\u6307\u7eb9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "\u76f8\u673a\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "dpad\u952e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u7269\u4f53\u8ffd\u8e2a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x46

    const-string v2, "\u58f0\u63a7\u5feb\u95e8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x50

    const-string v2, "\u957f\u6309\u5c4f\u5e55"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u66dd\u5149\u73af"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u624b\u52bf\u62cd\u7167"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "\u6700\u4f4e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "\u66f4\u4f4e"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "\u4f4e"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string v3, "\u6807\u51c6"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x5

    const-string v3, "\u66f4\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    const/4 v2, 0x6

    const-string v3, "\u6700\u9ad8"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    const-string v2, "1/1000s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x7d0

    const-string v2, "1/500s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const-string v1, "1/250s"

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    const-string v2, "1/125s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const/16 v1, 0x411b

    const-string v2, "1/60s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x8235

    const-string v2, "1/30s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1046b

    const-string v2, "1/15s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e848

    const-string v2, "1/8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x3d090

    const-string v2, "1/4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x7a120

    const-string v2, "1/2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0xf4240

    const-string v2, "1s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e8480

    const-string v2, "2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x3d0900

    const-string v2, "4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x7a1200

    const-string v2, "8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0xf42400

    const-string v2, "16s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    const v1, 0x1e84800

    const-string v2, "32s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_skin_color_ratio_key"

    const-string v2, "\u7f8e\u767d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_slim_face_ratio_key"

    const-string v2, "\u7626\u8138"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_enlarge_eye_ratio_key"

    const-string v2, "\u5927\u773c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_skin_smooth_ratio_key"

    const-string v2, "\u5ae9\u80a4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_nose_ratio_key"

    const-string v2, "\u82ad\u6bd4\u9f3b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_risorius_ratio_key"

    const-string v2, "\u82f9\u679c\u808c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_lips_ratio_key"

    const-string v2, "\u82b1\u74e3\u5507"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_chin_ratio_key"

    const-string v2, "\u7fd8\u4e0b\u5df4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_neck_ratio_key"

    const-string v2, "\u5929\u9e45\u9888"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_eyebrow_dye_ratio_key"

    const-string v2, "\u67d3\u7709"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_pupil_line_ratio_key"

    const-string v2, "\u7f8e\u77b3\u7ebf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_jelly_lips_ratio_key"

    const-string v2, "\u679c\u51bb\u5507"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_blusher_ratio_key"

    const-string v2, "\u816e\u7ea2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_smile_ratio_key"

    const-string v2, "\u5fae\u7b11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sBeautyTypeToName:Ljava/util/HashMap;

    const-string v1, "pref_beautify_slim_nose_ratio_key"

    const-string v2, "\u7626\u9f3b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_BERRY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d46\u679c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_COOKIE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u66f2\u5947"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_DELICACY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7f8e\u5473"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FADE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u892a\u8272"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_KOIZORA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u604b\u7a7a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LATTE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u62ff\u94c1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIGHT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d6e\u5149"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_LIVELY:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u751f\u52a8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_QUIET:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9759\u8c27"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_SODA:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6c7d\u6c34"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WARM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6696\u9633"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_FAIRYTALE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7ae5\u8bdd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_JAPANESE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u65e5\u7cfb"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MINT:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u8584\u8377"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MOOD:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5fc3\u5883"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_NATURE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u81ea\u7136"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_PINK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u7c89\u5ae9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_ROMANCE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u6d6a\u6f2b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_MAZE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u8ff7\u5bab"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->B_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u4eba\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FILM:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u80f6\u7247(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_YEARS:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u90a3\u4e9b\u5e74"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_POLAROID:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u62cd\u7acb\u5f97"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_FOREST:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5c0f\u68ee\u6797"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_BYGONE:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u5f80\u4e8b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->S_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u5f55\u50cf)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    sget-object v1, Lcom/miui/filtersdk/filter/helper/FilterType;->N_WHITEANDBLACK:Lcom/miui/filtersdk/filter/helper/FilterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "\u9ed1\u767d(\u62cd\u7167)"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCameraSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "front"

    goto :goto_0

    :cond_0
    const-string p0, "back"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static addUltraPixelParameter(ZLjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const-string v1, "on"

    const-string v2, "off"

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->Da()I

    move-result p0

    const v3, 0x1ec7b00

    if-ne p0, v3, :cond_5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string p0, "3200\u4e07\u8d85\u6e05\u50cf\u7d20"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->Ja()I

    move-result p0

    const v3, 0x2dc6c00

    if-ne p0, v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string p0, "4800\u4e07\u8d85\u6e05\u50cf\u7d20"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const v3, 0x3d2c300

    if-ne p0, v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    const-string p0, "6400\u4e07\u8d85\u6e05\u50cf\u7d20"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-void
.end method

.method private static antiBandingToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "others"

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v1, "null antiBanding"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :pswitch_3
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected antiBanding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string p0, "auto"

    return-object p0

    :cond_3
    const-string p0, "60hz"

    return-object p0

    :cond_4
    const-string p0, "50hz"

    return-object p0

    :cond_5
    const-string p0, "off"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static autoExposureToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u5e73\u5747\u6d4b\u5149"

    return-object p0

    :cond_0
    const v1, 0x7f0f01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u4e2d\u5fc3\u6743\u91cd"

    return-object p0

    :cond_1
    const v1, 0x7f0f01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "\u4e2d\u70b9\u6d4b\u5149"

    return-object p0

    :cond_2
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected auto exposure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "others"

    return-object p0
.end method

.method private static autoWhiteBalanceToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "others"

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v1, "null awb"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4075183a

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x35

    if-eq v2, v3, :cond_2

    const/16 v3, 0x36

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v6

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v7

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v8

    goto :goto_0

    :cond_1
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v2, "manual"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v1, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected awb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const-string p0, "cloudy-daylight"

    return-object p0

    :cond_6
    const-string p0, "daylight"

    return-object p0

    :cond_7
    const-string p0, "fluorescent"

    return-object p0

    :cond_8
    const-string p0, "incandescent"

    return-object p0

    :cond_9
    const-string p0, "auto"

    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static burstShotNumToName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cameraIdToName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "\u524d\u6444"

    goto :goto_0

    :cond_0
    const-string p0, "\u540e\u6444"

    :goto_0
    return-object p0
.end method

.method private static contrastToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f03000c

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static divideTo10Section(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "90+"

    return-object p0

    :pswitch_0
    const-string p0, "80+"

    return-object p0

    :pswitch_1
    const-string p0, "70+"

    return-object p0

    :pswitch_2
    const-string p0, "60+"

    return-object p0

    :pswitch_3
    const-string p0, "50+"

    return-object p0

    :pswitch_4
    const-string p0, "40+"

    return-object p0

    :pswitch_5
    const-string p0, "30+"

    return-object p0

    :pswitch_6
    const-string p0, "20+"

    return-object p0

    :pswitch_7
    const-string p0, "10+"

    return-object p0

    :pswitch_8
    const-string p0, "1+"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static exposureTimeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4240

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->sExposureTimeLessThan1sToName:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    div-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exposure time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "auto"

    return-object p0
.end method

.method public static faceBeautyRatioToName(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static filterIdToName(I)Ljava/lang/String;
    .locals 4

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const-string v1, "none"

    if-ne v0, p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/camera/effect/FilterInfo;->getIndex(I)I

    move-result v0

    sget-object v2, Lcom/android/camera/statistic/CameraStatUtil;->sFilterTypeToName:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected filter id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static flashModeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "others"

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    const-string v1, "null flash mode"

    invoke-static {p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xbdf2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0xbdf4

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v5

    goto :goto_0

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v8

    goto :goto_0

    :pswitch_3
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "103"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v7

    goto :goto_0

    :cond_2
    const-string v2, "101"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v6

    :cond_3
    :goto_0
    if-eqz v1, :cond_9

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    sget-object v1, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected flash mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    const-string p0, "off"

    return-object p0

    :cond_5
    const-string p0, "torch"

    return-object p0

    :cond_6
    const-string p0, "screen-light-on"

    return-object p0

    :cond_7
    const-string p0, "screen-light-auto"

    return-object p0

    :cond_8
    const-string p0, "on"

    return-object p0

    :cond_9
    const-string p0, "auto"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static focusPositionToName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e8

    if-ne v0, p0, :cond_0

    const-string p0, "auto"

    return-object p0

    :cond_0
    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtil;->divideTo10Section(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDualZoomName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ultra"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->STRING_ZOOM_RATIO_ULTR:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "tele"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->STRING_ZOOM_RATIO_TELE:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v0, "wide"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/camera/HybridZoomingSystem;->STRING_ZOOM_RATIO_WIDE:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->readZoom()F

    move-result p0

    invoke-static {p0}, Lcom/android/camera/HybridZoomingSystem;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfString([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isoToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static modeIdToName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sCameraModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "\u672a\u77e5"

    :cond_0
    return-object p0
.end method

.method private static pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length v1, p0

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtil;->indexOfString([Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    array-length p0, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sget-object p0, Lcom/android/camera/statistic/CameraStatUtil;->sPictureQualityIndexToName:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "others"

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture quality array size is smaller than values size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static round(JI)J
    .locals 2

    if-gtz p2, :cond_0

    return-wide p0

    :cond_0
    div-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    add-long/2addr p0, v0

    int-to-long v0, p2

    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static saturationToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030015

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sharpnessToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f030017

    invoke-static {v0, p0}, Lcom/android/camera/statistic/CameraStatUtil;->pictureQualityToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static slowMotionConfigToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "slow_motion_120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u70b9\u51fb\u81f3120"

    return-object p0

    :cond_0
    const-string v0, "slow_motion_240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u70b9\u51fb\u81f3240"

    return-object p0

    :cond_1
    const-string p0, "\u70b9\u51fb\u81f3960"

    return-object p0
.end method

.method private static slowMotionQualityIdToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "others"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x35

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x36

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "6"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v2, "5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    return-object v0

    :cond_4
    const-string p0, "1080p"

    return-object p0

    :cond_5
    const-string p0, "720p"

    return-object p0
.end method

.method public static tarckBokenChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static timeLapseIntervalToName(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ge p0, v2, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p0, p0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%.2fs"

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "%ds"

    invoke-static {v3, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs track(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackAISceneChanged(IILandroid/content/res/Resources;)V
    .locals 0

    return-void
.end method

.method public static trackAwbChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackBeautyBodyCapture()V
    .locals 0

    return-void
.end method

.method public static trackBeautyBodyCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackBeautyBodyCounterPort(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static trackBeautyBodySlim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackBeautyInfo(ILjava/lang/String;Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 0

    return-void
.end method

.method public static trackBeautySwitchChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackBokehTaken()V
    .locals 0

    return-void
.end method

.method public static trackBroadcastKillService()V
    .locals 0

    return-void
.end method

.method public static trackCameraError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackCameraErrorDialogShow()V
    .locals 0

    return-void
.end method

.method public static trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    return-void
.end method

.method public static trackDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public static trackDualWaterMarkChanged(Z)V
    .locals 0

    return-void
.end method

.method public static trackDualZoomChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackEvAdjusted()V
    .locals 0

    return-void
.end method

.method public static trackExposureTimeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackFilterChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public static trackFlashChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackFocusPositionChanged(I)V
    .locals 0

    return-void
.end method

.method public static trackGeneralInfo(IZIIZLcom/android/camera/MutexModeManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackGoogleLensOobeContinue(Z)V
    .locals 0

    return-void
.end method

.method public static trackGoogleLensPicker()V
    .locals 0

    return-void
.end method

.method public static trackGoogleLensPickerValue(Z)V
    .locals 0

    return-void
.end method

.method public static trackGoogleLensTouchAndHold()V
    .locals 0

    return-void
.end method

.method public static trackGotoGallery(I)V
    .locals 0

    return-void
.end method

.method public static trackGotoSettings(I)V
    .locals 0

    return-void
.end method

.method public static trackHdrChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackIsoChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLensChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLightingChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLiveBeautyClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLiveBeautyCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLiveClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackLiveMusicClick()V
    .locals 0

    return-void
.end method

.method public static trackLiveRecordingParams(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIIZ)V
    .locals 0

    return-void
.end method

.method public static trackLiveStickerDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public static trackLiveStickerMore(Z)V
    .locals 0

    return-void
.end method

.method public static trackLiveVideoParams(IFZZZ)V
    .locals 0

    return-void
.end method

.method public static trackLostCount(I)V
    .locals 0

    return-void
.end method

.method public static trackLyingDirectPictureTaken(I)V
    .locals 0

    return-void
.end method

.method public static trackLyingDirectShow(I)V
    .locals 0

    return-void
.end method

.method private static trackMacroModeTaken(I)V
    .locals 0

    return-void
.end method

.method public static trackMeterClick()V
    .locals 0

    return-void
.end method

.method public static trackMimojiCaptureOrRecord(Ljava/util/Map;Ljava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method public static trackMimojiClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackMimojiCount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public static trackModeSwitch()V
    .locals 0

    return-void
.end method

.method public static trackMoonMode(ZZ)V
    .locals 0

    return-void
.end method

.method public static trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V
    .locals 0

    return-void
.end method

.method public static trackPauseVideoRecording(Z)V
    .locals 0

    return-void
.end method

.method public static trackPictureSize(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackPictureTaken(IZIZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackPictureTakenInManual(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static trackPictureTakenInPanorama(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public static trackPictureTakenInWideSelfie(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackPocketModeEnter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackPocketModeExit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackPocketModeSensorDelay()V
    .locals 0

    return-void
.end method

.method public static trackPreferenceChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static trackSelectObject(Z)V
    .locals 0

    return-void
.end method

.method public static trackSlowMotionQuality(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackSnapInfo(Z)V
    .locals 0

    return-void
.end method

.method public static trackStartAppCost(J)V
    .locals 0

    return-void
.end method

.method public static trackTakePictureCost(JZI)V
    .locals 0

    return-void
.end method

.method public static trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackTimerChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static trackUltraWide(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackUltraWideFunTaken()V
    .locals 0

    return-void
.end method

.method public static trackUltraWideManualTaken(I)V
    .locals 0

    return-void
.end method

.method public static trackUltraWidePictureTaken()V
    .locals 0

    return-void
.end method

.method public static trackUltraWideVideoTaken()V
    .locals 0

    return-void
.end method

.method public static trackUserDefineWatermark()V
    .locals 0

    return-void
.end method

.method public static trackVideoModeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackVideoQuality(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static trackVideoRecorded(ZIZZZLjava/lang/String;IIIILcom/android/camera/fragment/beauty/BeautyValues;J)V
    .locals 0

    return-void
.end method

.method public static trackVideoSnapshot(Z)V
    .locals 0

    return-void
.end method

.method public static trackVoiceControl(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public static trackZoomAdjusted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static triggerModeToName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->sTriggerModeIdToName:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static videoQualityToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "4k"

    return-object p0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1080p"

    return-object p0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "720p"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "480p"

    return-object p0

    :cond_3
    const-string v0, "8,60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "4k,60fps"

    return-object p0

    :cond_4
    const-string v0, "6,60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "1080p,60fps"

    return-object p0

    :cond_5
    sget-object v0, Lcom/android/camera/statistic/CameraStatUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected video quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "others"

    return-object p0
.end method
