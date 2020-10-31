.class Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskCacheEntry"
.end annotation


# instance fields
.field public contentEncoding:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;

.field private volatile markDelete:Z

.field public offset:J

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J

.field private volatile using:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I

    move-result v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_81
    .catchall {:try_start_4 .. :try_end_e} :catchall_7c

    const v4, 0x20140228

    if-eq v3, v4, :cond_18

    nop

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2

    :cond_18
    :try_start_18
    new-instance v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v3}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iput-object v2, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    :cond_31
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iput-object v2, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    :cond_3f
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iput-object v2, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    :cond_4d
    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    invoke-static {v1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    iput-object p0, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_77} :catch_81
    .catchall {:try_start_18 .. :try_end_77} :catchall_7c

    nop

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v3

    :catchall_7c
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catch_81
    move-exception v0

    nop

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-object v2
.end method

.method private static read(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method static readHeaders(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readInt(Ljava/io/InputStream;)I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

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

    goto :goto_a

    :cond_22
    return-object v1
.end method

.method static readInt(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong(Ljava/io/InputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->read(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    if-ltz v0, :cond_4a

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_4a

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1c

    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c

    add-int/2addr v2, v4

    goto :goto_e

    :cond_1c
    if-ne v2, v0, :cond_26

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    :cond_26
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes but read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed data structure encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toFile(Ljava/io/File;Ljava/lang/String;Lmiui/net/http/Cache$Entry;)Lmiui/net/http/DiskBasedCache$DiskCacheEntry;
    .registers 15

    const-string v0, "Cannot delete file "

    const-string v1, "DisBasedCache"

    const/4 v2, 0x0

    iget-object v3, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_9
    iput-object v5, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    const v5, 0x20140228

    invoke-static {v2, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    invoke-static {v2, p1}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_e9
    .catchall {:try_start_9 .. :try_end_1c} :catchall_e7

    const-string v6, ""

    if-nez v5, :cond_22

    move-object v5, v6

    goto :goto_24

    :cond_22
    :try_start_22
    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    :goto_24
    invoke-static {v2, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    if-nez v5, :cond_2d

    move-object v5, v6

    goto :goto_2f

    :cond_2d
    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    :goto_2f
    invoke-static {v2, v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    if-nez v5, :cond_37

    goto :goto_39

    :cond_37
    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    :goto_39
    invoke-static {v2, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    invoke-static {v2, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    invoke-static {v2, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-wide v5, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    invoke-static {v2, v5, v6}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    iget-object v5, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {v5, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    new-instance v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;

    invoke-direct {v5}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;-><init>()V

    iput-object p1, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->key:Ljava/lang/String;

    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->etag:Ljava/lang/String;

    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentType:Ljava/lang/String;

    iput-object v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentType:Ljava/lang/String;

    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->contentEncoding:Ljava/lang/String;

    iput-object v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->contentEncoding:Ljava/lang/String;

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->serverDate:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->serverDate:J

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->ttl:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->ttl:J

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->softTtl:J

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->softTtl:J

    iget-object v6, p2, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object p0, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-static {v3, v2}, Lmiui/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    iput-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_a2

    iget-wide v6, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v8, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v6, v8

    iput-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    goto :goto_ad

    :cond_a2
    iget-wide v6, p2, Lmiui/net/http/Cache$Entry;->length:J

    iget-wide v8, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v10, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_c1

    :goto_ad
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x0

    new-instance v6, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;

    invoke-direct {v6, v5}, Lmiui/net/http/DiskBasedCache$CacheFileContentInputStream;-><init>(Lmiui/net/http/DiskBasedCache$DiskCacheEntry;)V

    iput-object v6, p2, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_b8} :catch_e9
    .catchall {:try_start_22 .. :try_end_b8} :catchall_e7

    move-object v4, v5

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    nop

    goto :goto_11f

    :cond_c1
    :try_start_c1
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length not match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p2, Lmiui/net/http/Cache$Entry;->length:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->size:J

    iget-wide v10, v5, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_e7} :catch_e9
    .catchall {:try_start_c1 .. :try_end_e7} :catchall_e7

    :catchall_e7
    move-exception v5

    goto :goto_120

    :catch_e9
    move-exception v5

    :try_start_ea
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot save cache to disk file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_ea .. :try_end_fe} :catchall_e7

    nop

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    if-nez v4, :cond_11f

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_11f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    :goto_11f
    return-object v4

    :goto_120
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    if-nez v4, :cond_140

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_140

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_140
    throw v5
.end method

.method static writeHeaders(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_17

    :cond_36
    goto :goto_3b

    :cond_37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeInt(Ljava/io/OutputStream;I)V

    :goto_3b
    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeLong(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->writeLong(Ljava/io/OutputStream;J)V

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z

    goto :goto_29

    :cond_9
    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_29

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
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUsing()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    iget v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->using:I

    if-gtz v0, :cond_2f

    iget-boolean v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->markDelete:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2f

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
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toCacheEntry()Lmiui/net/http/Cache$Entry;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lmiui/net/http/Cache$Entry;

    invoke-direct {v1}, Lmiui/net/http/Cache$Entry;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-object v2, v1, Lmiui/net/http/Cache$Entry;->data:Ljava/io/InputStream;

    iget-wide v3, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->offset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    return-object v0

    :cond_1e
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

    iget-object v2, p0, Lmiui/net/http/DiskBasedCache$DiskCacheEntry;->responseHeaders:Ljava/util/Map;

    iput-object v2, v1, Lmiui/net/http/Cache$Entry;->responseHeaders:Ljava/util/Map;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    move-exception v1

    return-object v0
.end method
