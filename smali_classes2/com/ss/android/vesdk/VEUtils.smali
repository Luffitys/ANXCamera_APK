.class public Lcom/ss/android/vesdk/VEUtils;
.super Ljava/lang/Object;
.source "VEUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTargetRes([I[I[Lcom/ss/android/vesdk/ROTATE_DEGREE;I)Lcom/ss/android/vesdk/VESize;
    .locals 11

    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    if-eqz p1, :cond_7

    if-eqz p0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_4

    aget v7, p1, v4

    aget v8, p0, v4

    aget-object v9, p2, v4

    sget-object v10, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    if-eq v9, v10, :cond_2

    aget-object v9, p2, v4

    sget-object v10, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    if-ne v9, v10, :cond_3

    :cond_2
    aget v8, p1, v4

    aget v7, p0, v4

    :cond_3
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const p0, 0x3fe38e39

    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v3, p0

    if-ltz p0, :cond_6

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, p0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    goto :goto_2

    :cond_6
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p0, p1

    div-float/2addr p0, v3

    float-to-int p0, p0

    :goto_2
    add-int/lit8 p0, p0, 0x10

    sub-int/2addr p0, v2

    and-int/lit8 p0, p0, -0x10

    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v2

    and-int/lit8 p1, p1, -0x10

    iput p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static concatVideo([Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->concat([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/ss/android/vesdk/VEUtils$1;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEUtils$1;-><init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)V

    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result p0

    return p0
.end method

.method public static findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioFileInfo(Ljava/lang/String;[I)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "iesve_veutils_get_audio_info"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getMusicWaveData(Ljava/lang/String;II)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEUtils;->getMusicWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getMusicWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    sget p1, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->Default:I

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEMusicWaveBean;->getWaveBean()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getQREncodedData(Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEImageListener;)I
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/VEUtils$2;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEUtils$2;-><init>(Lcom/ss/android/vesdk/VEListener$VEImageListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->getQREncodedData(Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I

    move-result p0

    return p0
.end method

.method public static getResampleMusicWaveData(Ljava/util/ArrayList;II)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .locals 3
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;II)",
            "Lcom/ss/android/ttve/model/VEMusicWaveBean;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFileInfo(Ljava/lang/String;[I)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "iesve_veutils_get_video_info"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/ss/android/vesdk/VEFrameAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    invoke-virtual {v5, p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const-string p5, "iesve_veutils_extract_video_frames"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p5, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[ILcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/vesdk/VEFrameAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    invoke-virtual {v5, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const-string p2, "iesve_veutils_extract_video_frames"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoThumb(Ljava/lang/String;ILcom/ss/android/vesdk/VEFrameAvailableListener;ZIIJI)I
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/android/vesdk/VEFrameAvailableListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v2, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {v2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    move-object v0, p2

    invoke-virtual {v2, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const-string v0, "iesve_veutils_extract_video_thumb"

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I

    move-result v0

    return v0
.end method

.method public static isCanImport(Ljava/lang/String;)I
    .locals 3

    const-string v0, "iesve_veutils_if_video_support_import"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isCanImport(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isCanTransCode(Ljava/lang/String;II)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isCanTransCode(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "iesve_veutils_combine_audio_and_video_start"

    invoke-static {v2, v1, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    if-nez p0, :cond_1

    const-string p2, "succ"

    goto :goto_0

    :cond_1
    const-string p2, "fail"

    :goto_0
    const-string v0, "iesve_veutils_combine_audio_and_video_finish_result"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string p2, "iesve_veutils_combine_audio_and_video_finish_reason"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const-string p2, "iesve_veutils_combine_audio_and_video_finish"

    invoke-static {p2, v1, p1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return p0

    :cond_2
    :goto_1
    const/16 p0, -0x64

    return p0
.end method

.method public static transCodeAudio(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->transCodeAudioFile(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
