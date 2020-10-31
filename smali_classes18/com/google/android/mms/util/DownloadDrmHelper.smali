.class public Lcom/google/android/mms/util/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# static fields
.field public static final EXTENSION_DRM_MESSAGE:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_INTERNAL_FWDL:Ljava/lang/String; = ".fl"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final TAG:Ljava/lang/String; = "DownloadDrmHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "DownloadDrmHelper"

    move-object v1, p2

    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_13} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_13} :catch_15

    move-object v1, v0

    :cond_14
    :goto_14
    goto :goto_23

    :catch_15
    move-exception v3

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_1c
    move-exception v3

    const-string v4, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :goto_23
    return-object v1
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "DownloadDrmHelper"

    const/4 v1, 0x0

    if-eqz p0, :cond_28

    :try_start_5
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_18} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_18} :catch_1a

    move v1, v0

    :cond_19
    :goto_19
    goto :goto_28

    :catch_1a
    move-exception v2

    const-string v3, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :catch_21
    move-exception v2

    const-string v3, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_28
    :goto_28
    return v1
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_16

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_10
    const-string v1, ".fl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_16
    return-object p0
.end method
