.class public Landroid/media/CamcorderProfile;
.super Ljava/lang/Object;
.source "CamcorderProfile.java"


# static fields
.field public static final QUALITY_1080P:I = 0x6

.field public static final QUALITY_2160P:I = 0x8

.field public static final QUALITY_2K:I = 0xc

.field public static final QUALITY_480P:I = 0x4

.field public static final QUALITY_4KDCI:I = 0xa

.field public static final QUALITY_720P:I = 0x5

.field public static final QUALITY_8KUHD:I = 0xbb9

.field public static final QUALITY_CIF:I = 0x3

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_HIGH_SPEED_1080P:I = 0x7d4

.field public static final QUALITY_HIGH_SPEED_2160P:I = 0x7d5

.field public static final QUALITY_HIGH_SPEED_480P:I = 0x7d2

.field public static final QUALITY_HIGH_SPEED_4KDCI:I = 0x7d8

.field public static final QUALITY_HIGH_SPEED_720P:I = 0x7d3

.field public static final QUALITY_HIGH_SPEED_CIF:I = 0x7d6

.field public static final QUALITY_HIGH_SPEED_HIGH:I = 0x7d1

.field private static final QUALITY_HIGH_SPEED_LIST_END:I = 0x7d8

.field private static final QUALITY_HIGH_SPEED_LIST_START:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_LOW:I = 0x7d0

.field public static final QUALITY_HIGH_SPEED_VGA:I = 0x7d7

.field private static final QUALITY_LIST_END:I = 0xc

.field private static final QUALITY_LIST_START:I = 0x0

.field public static final QUALITY_LOW:I = 0x0

.field public static final QUALITY_QCIF:I = 0x2

.field public static final QUALITY_QHD:I = 0xb

.field public static final QUALITY_QVGA:I = 0x7

.field public static final QUALITY_TIME_LAPSE_1080P:I = 0x3ee

.field public static final QUALITY_TIME_LAPSE_2160P:I = 0x3f0

.field public static final QUALITY_TIME_LAPSE_2K:I = 0x3f4

.field public static final QUALITY_TIME_LAPSE_480P:I = 0x3ec

.field public static final QUALITY_TIME_LAPSE_4KDCI:I = 0x3f2

.field public static final QUALITY_TIME_LAPSE_720P:I = 0x3ed

.field public static final QUALITY_TIME_LAPSE_8KUHD:I = 0xbba

.field public static final QUALITY_TIME_LAPSE_CIF:I = 0x3eb

.field public static final QUALITY_TIME_LAPSE_HIGH:I = 0x3e9

.field private static final QUALITY_TIME_LAPSE_LIST_END:I = 0x3f4

.field private static final QUALITY_TIME_LAPSE_LIST_START:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_LOW:I = 0x3e8

.field public static final QUALITY_TIME_LAPSE_QCIF:I = 0x3ea

.field public static final QUALITY_TIME_LAPSE_QHD:I = 0x3f3

.field public static final QUALITY_TIME_LAPSE_QVGA:I = 0x3ef

.field public static final QUALITY_TIME_LAPSE_VGA:I = 0x3f1

.field private static final QUALITY_VENDOR_LIST_END:I = 0xbba

.field private static final QUALITY_VENDOR_LIST_START:I = 0xbb9

.field public static final QUALITY_VGA:I = 0x9


# instance fields
.field public audioBitRate:I

.field public audioChannels:I

.field public audioCodec:I

.field public audioSampleRate:I

.field public duration:I

.field public fileFormat:I

.field public quality:I

.field public videoBitRate:I

.field public videoCodec:I

.field public videoFrameHeight:I

.field public videoFrameRate:I

.field public videoFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/CamcorderProfile;->native_init()V

    return-void
.end method

.method private constructor <init>(IIIIIIIIIIII)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/CamcorderProfile;->duration:I

    iput p2, p0, Landroid/media/CamcorderProfile;->quality:I

    iput p3, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    iput p4, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    iput p5, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput p7, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p8, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p9, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    iput p10, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput p11, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput p12, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    return-void
.end method

.method public static get(I)Landroid/media/CamcorderProfile;
    .registers 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1b

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method public static get(II)Landroid/media/CamcorderProfile;
    .registers 4

    if-ltz p1, :cond_6

    const/16 v0, 0xc

    if-le p1, v0, :cond_1e

    :cond_6
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_e

    const/16 v0, 0x3f4

    if-le p1, v0, :cond_1e

    :cond_e
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_16

    const/16 v0, 0x7d8

    if-le p1, v0, :cond_1e

    :cond_16
    const/16 v0, 0xbb9

    if-lt p1, v0, :cond_23

    const/16 v0, 0xbba

    if-gt p1, v0, :cond_23

    :cond_1e
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported quality level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hasProfile(I)Z
    .registers 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1b

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_18

    invoke-static {v2, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v3

    return v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public static hasProfile(II)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->native_has_camcorder_profile(II)Z

    move-result v0

    return v0
.end method

.method private static final native native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
.end method

.method private static final native native_has_camcorder_profile(II)Z
.end method

.method private static final native native_init()V
.end method
