.class Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;
.super Ljava/io/FilterInputStream;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheFileContentInputStream"
.end annotation


# instance fields
.field private mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;


# direct methods
.method protected constructor <init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    iput-object p1, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    :cond_d
    return-void
.end method

.method private static getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->acquire()V

    const/4 v0, 0x1

    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3c

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    const/4 v0, 0x0

    nop

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    :cond_1e
    return-object v1

    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip failed for file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v1

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    :cond_42
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
