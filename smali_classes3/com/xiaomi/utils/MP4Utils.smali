.class public Lcom/xiaomi/utils/MP4Utils;
.super Ljava/lang/Object;
.source "MP4Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mp4Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concateMP4Files([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Mp4Utils"

    const-string v1, "concate MP4 files"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/xiaomi/utils/MP4Utils;->concateMP4FilesJni([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "concate MP4 files failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " concate MP4 files succeed to: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static native concateMP4FilesJni([Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static probeMP4VideoInfo(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
    .locals 2

    const-string v0, "Mp4Utils"

    const-string v1, "probe MP4 video information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/utils/MP4Utils;->probeMP4VideoInfoJni(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;

    move-result-object p0

    return-object p0
.end method

.method private static native probeMP4VideoInfoJni(Ljava/lang/String;)Lcom/xiaomi/utils/MP4Utils$MP4VideoInfo;
.end method
