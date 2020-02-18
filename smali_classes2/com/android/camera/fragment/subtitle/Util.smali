.class public Lcom/android/camera/fragment/subtitle/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static TAG:Ljava/lang/String; = "SubtitleUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "subtitle_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/camera/fragment/subtitle/Util;->TAG:Ljava/lang/String;

    const-string v2, "load subtitle_jni.so failed."

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native genAccessAppID()[B
.end method

.method private static native genAccessAppKey()[B
.end method

.method private static native genAccessAppSecret()[B
.end method

.method public static getAccessAppID()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->genAccessAppID()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getAccessAppKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->genAccessAppKey()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static getAccessAppSecret()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/subtitle/Util;->genAccessAppSecret()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
