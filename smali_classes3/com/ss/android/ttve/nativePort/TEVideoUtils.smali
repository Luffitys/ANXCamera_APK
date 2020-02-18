.class public final Lcom/ss/android/ttve/nativePort/TEVideoUtils;
.super Ljava/lang/Object;
.source "TEVideoUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearWavSeg(Ljava/lang/String;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeClearWavSeg(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConcat([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I
    .locals 0
    .param p1    # Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeExecuteFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result p0

    return p0
.end method

.method public static findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/vesdk/VEException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeFindBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0xcd

    const-string v1, "\u8be5\u6587\u4ef6\u6682\u4e0d\u652f\u6301\u8f6c\u5c01\u88c5!"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0x64

    const-string v1, "\u8bf7\u68c0\u67e5\u8f93\u5165\u53c2\u6570!"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static generateMuteWav(Ljava/lang/String;III)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGenerateMuteWav(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static getAudioFileInfo(Ljava/lang/String;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getAudioWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFileInfo(Ljava/lang/String;[I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrame(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I

    move-result p0

    return p0
.end method

.method public static isCanImport(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, -0x64

    return p0

    :cond_0
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanImport(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isCanTransCode(Ljava/lang/String;II)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanTransCode(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeMux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native nativeClearWavSeg(Ljava/lang/String;II)I
.end method

.method private static native nativeConcat([Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeExecuteFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I
.end method

.method private static native nativeFindBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nativeGenerateMuteWav(Ljava/lang/String;III)I
.end method

.method private static native nativeGetAudioFileInfo(Ljava/lang/String;[I)I
.end method

.method private static native nativeGetAudioWaveData(Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMusicWaveBean;
.end method

.method private static native nativeGetFileInfo(Ljava/lang/String;[I)I
.end method

.method private static native nativeGetResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
.end method

.method private static native nativeGetVideoFrame(Ljava/lang/String;[IIIZLjava/lang/Object;)I
.end method

.method private static native nativeGetVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I
.end method

.method private static native nativeIsCanImport(Ljava/lang/String;)I
.end method

.method private static native nativeIsCanTransCode(Ljava/lang/String;II)I
.end method

.method private static native nativeMux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeTransCodecAudioFile(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static reverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static transCodeAudioFile(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeTransCodecAudioFile(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
