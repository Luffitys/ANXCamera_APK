.class public Lcom/miui/internal/vip/VipResInputStream;
.super Ljava/io/InputStream;
.source "VipResInputStream.java"


# instance fields
.field mIconName:Ljava/lang/String;

.field mIs:Ljava/io/InputStream;

.field mUserLevel:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/vip/VipResInputStream;->mIconName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/internal/vip/VipResInputStream;->mUserLevel:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void
.end method

.method open()V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->openIconStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_18

    :catch_c
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "VipResInputStream.open failed, %s"

    invoke-static {v2, v1}, Lcom/miui/internal/vip/utils/Utils;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_18
    return-void
.end method

.method openIconStream()Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIconName:Ljava/lang/String;

    const-string v1, "level_icon"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/internal/vip/VipResInputStream;->mUserLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "https://rs.vip.miui.com/h5/level_icons/icon_level_%d.webp"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/internal/vip/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->getImageFilePathAndClearUnusedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_43

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_43
    new-instance v3, Lcom/miui/internal/vip/utils/WebContentDownloader;

    invoke-direct {v3, v2, v0}, Lcom/miui/internal/vip/utils/WebContentDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_49
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->open()V

    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/internal/vip/VipResInputStream;->open()V

    iget-object v0, p0, Lcom/miui/internal/vip/VipResInputStream;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method
