.class Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;


# direct methods
.method protected constructor <init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V
    .locals 1

    invoke-static {p1}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    :cond_0
    return-void
.end method

.method private static getInputStream(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)Ljava/io/InputStream;
    .locals 5

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->acquire()V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-wide v1, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip failed for file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;->mDiskCacheEntry:Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->release()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
