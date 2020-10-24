.class public Lnet/majorkernelpanic/streaming/hw/CodecManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final SUPPORTED_COLOR_FORMATS:[I

.field public static final TAG:Ljava/lang/String; = "CodecManager"

.field private static sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

.field private static sEncoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    const/4 v0, 0x0

    sput-object v0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sEncoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    sput-object v0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    return-void

    :array_0
    .array-data 4
        0x15
        0x27
        0x13
        0x14
        0x7f000100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized findDecodersForMimeType(Ljava/lang/String;)[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lnet/majorkernelpanic/streaming/hw/CodecManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    if-eqz v1, :cond_0

    sget-object p0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_7

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_6

    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v4, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v9, v3

    :goto_2
    iget-object v10, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v10, v10

    if-ge v9, v10, :cond_4

    iget-object v10, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v10, v10, v9

    move v11, v3

    :goto_3
    sget-object v12, Lnet/majorkernelpanic/streaming/hw/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    array-length v12, v12

    if-ge v11, v12, :cond_3

    sget-object v12, Lnet/majorkernelpanic/streaming/hw/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    aget v12, v12, v11

    if-ne v10, v12, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v7, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    invoke-static {v4}, Lnet/majorkernelpanic/streaming/hw/CodecManager;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result v10

    invoke-direct {v7, v9, v8, v10}, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;-><init>(Ljava/lang/String;[Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "CodecManager"

    invoke-static {v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    sput-object p0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    move p0, v3

    :goto_6
    sget-object v1, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    array-length v1, v1

    if-ge p0, v1, :cond_9

    sget-object v1, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    aget-object v1, v1, p0

    iget-object v1, v1, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;->name:Ljava/lang/String;

    const-string v2, "omx.google.h264.decoder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    aget-object v1, v1, v3

    sget-object v2, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    sget-object v4, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    aget-object v4, v4, p0

    aput-object v4, v2, v3

    sget-object v2, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    aput-object v1, v2, p0

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_9
    sget-object p0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sDecoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized findEncodersForMimeType(Ljava/lang/String;)[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lnet/majorkernelpanic/streaming/hw/CodecManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sEncoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    if-eqz v1, :cond_0

    sget-object p0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sEncoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_7

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_6

    aget-object v7, v4, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v3, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v9, v5

    :goto_2
    iget-object v10, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v10, v10

    if-ge v9, v10, :cond_4

    iget-object v10, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v10, v10, v9

    move v11, v5

    :goto_3
    sget-object v12, Lnet/majorkernelpanic/streaming/hw/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    array-length v12, v12

    if-ge v11, v12, :cond_3

    sget-object v12, Lnet/majorkernelpanic/streaming/hw/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    aget v12, v12, v11

    if-ne v10, v12, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    new-instance v7, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Integer;

    invoke-static {v3}, Lnet/majorkernelpanic/streaming/hw/CodecManager;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result v10

    invoke-direct {v7, v9, v8, v10}, Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;-><init>(Ljava/lang/String;[Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_3
    const-string v8, "CodecManager"

    invoke-static {v8, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;

    sput-object p0, Lnet/majorkernelpanic/streaming/hw/CodecManager;->sEncoders:[Lnet/majorkernelpanic/streaming/hw/CodecManager$Codec;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lnet/majorkernelpanic/streaming/hw/CodecManager;->isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "omx.ffmpeg."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "omx.sec."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "c2.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "c2.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "omx."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
