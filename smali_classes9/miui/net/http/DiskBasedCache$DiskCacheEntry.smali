.class Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;

.field private volatile markDelete:Z

.field public offset:J

.field public responseHeaders:Ljava/util/Map;

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J

.field private volatile using:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v4, 0x20140228

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1

    :cond_0
    :try_start_2
    new-instance v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    :cond_1
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    :cond_2
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    :cond_3
    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    invoke-static {v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    iput-object p0, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw p0

    :catch_0
    move-object v2, v1

    :catch_1
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v1
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static readHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .locals 7

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_2

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes but read "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed data structure encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .locals 12

    const-string v0, "Cannot delete file "

    const-string v1, "DisBasedCache"

    iget-object v2, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x20140228

    :try_start_1
    invoke-static {v4, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    invoke-static {v4, p1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v6, ""

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    :goto_0
    invoke-static {v4, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    :goto_1
    invoke-static {v4, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    :goto_2
    invoke-static {v4, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-static {v4, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    invoke-static {v4, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {v4, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {v5, v4}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    new-instance v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    iget-object p1, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object p0, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-static {v2, v4}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v8, p2, Lmiui/net/http/Cache$Entry;->length:J

    const-wide/16 v10, 0x0

    cmp-long p1, v8, v10

    if-gtz p1, :cond_3

    iget-wide v8, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v6, v8

    iput-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    goto :goto_3

    :cond_3
    iget-wide v8, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v10, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v6, v10

    cmp-long p1, v8, v6

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance p1, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;

    invoke-direct {p1, v5}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;-><init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    iput-object p1, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v3, v5

    goto :goto_5

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length not match "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v9, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v4, v3

    :goto_4
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot save cache to disk file "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-object v3

    :catchall_1
    move-exception p1

    move-object v3, v4

    :goto_6
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw p1
.end method

.method static writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    :cond_1
    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUsing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DisBasedCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toCacheEntry()Lmiui/net/http/Cache$Entry;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lmiui/net/http/Cache$Entry;

    invoke-direct {v1}, Lmiui/net/http/Cache$Entry;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->length:J

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->serverDate:J

    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->ttl:J

    iget-wide v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    iput-wide v2, v1, Lmiui/net/http/Cache$Entry;->softTtl:J

    iget-object p0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object p0, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
