.class public Lcom/android/camera/WatermarkMiSysUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkMiSysUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eraseFile(Ljava/lang/String;)I
    .locals 1

    const-string p0, "WatermarkMiSysUtils"

    const-string v0, "eraseFile NO Permission!!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static isFileExist(Ljava/lang/String;)I
    .locals 1

    const-string p0, "WatermarkMiSysUtils"

    const-string v0, "isFileExist NO Permission!!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static writeFileToPersist([BLjava/lang/String;)Z
    .locals 0

    const-string p0, "WatermarkMiSysUtils"

    const-string p1, "writeFileToPersist NO Permission!!!!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
