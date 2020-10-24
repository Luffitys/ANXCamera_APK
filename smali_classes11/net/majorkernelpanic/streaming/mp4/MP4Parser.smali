.class public Lnet/majorkernelpanic/streaming/mp4/MP4Parser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MP4Parser"


# instance fields
.field private mBoxes:Ljava/util/HashMap;

.field private final mFile:Ljava/io/RandomAccessFile;

.field private mPos:J


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mBoxes:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "r"

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    :try_start_0
    const-string p1, ""

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->parse(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Parse error: malformed mp4 file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/mp4/MP4Parser;
    .locals 1

    new-instance v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;

    invoke-direct {v0, p0}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parse(Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    new-array v3, v2, [B

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x8

    if-nez v4, :cond_0

    iget-object v4, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mBoxes:Ljava/util/HashMap;

    iget-wide v7, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    cmp-long v4, v9, p2

    if-gez v4, :cond_6

    iget-object v4, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    const/4 v11, 0x0

    invoke-virtual {v4, v3, v11, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    iget-wide v12, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    add-long/2addr v12, v5

    iput-wide v12, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    add-long/2addr v9, v5

    invoke-direct {v0, v3}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->validBoxName([B)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/String;

    const/4 v12, 0x4

    invoke-direct {v4, v3, v12, v12}, Ljava/lang/String;-><init>([BII)V

    const/4 v13, 0x3

    aget-byte v13, v3, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    iget-object v12, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v12, v3, v11, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    iget-wide v12, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    add-long/2addr v12, v5

    iput-wide v12, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    add-long/2addr v9, v5

    invoke-static {v3, v11, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    const-wide/16 v13, 0x10

    sub-long/2addr v11, v13

    goto :goto_1

    :cond_1
    invoke-static {v3, v11, v12}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    sub-int/2addr v11, v2

    int-to-long v11, v11

    :goto_1
    cmp-long v13, v11, v7

    if-ltz v13, :cond_2

    const-wide/32 v13, 0x3f3f3f37

    cmp-long v13, v11, v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Atom -> name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " position: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MP4Parser"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v9, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v11, v12}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->parse(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    cmp-long v4, p2, v5

    if-gez v4, :cond_4

    iget-object v4, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    sub-long/2addr v11, v5

    add-long v11, v11, p2

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v11, p2, v5

    :goto_2
    add-long/2addr v9, v11

    goto/16 :goto_0

    :cond_4
    iget-object v4, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    sub-long v11, p2, v5

    long-to-int v13, v11

    invoke-virtual {v4, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v4

    if-lt v4, v13, :cond_5

    iget-wide v13, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mPos:J

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method static toHexString([BII)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private validBoxName([B)Z
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x4

    aget-byte v2, p1, v1

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    aget-byte v2, p1, v1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_1

    :cond_0
    aget-byte v2, p1, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    aget-byte v1, p1, v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getBoxPos(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mBoxes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mBoxes:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStsdBox()Lnet/majorkernelpanic/streaming/mp4/StsdBox;
    .locals 4

    :try_start_0
    new-instance v0, Lnet/majorkernelpanic/streaming/mp4/StsdBox;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->mFile:Ljava/io/RandomAccessFile;

    const-string v2, "/moov/trak/mdia/minf/stbl/stsd"

    invoke-virtual {p0, v2}, Lnet/majorkernelpanic/streaming/mp4/MP4Parser;->getBoxPos(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/mp4/StsdBox;-><init>(Ljava/io/RandomAccessFile;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stsd box could not be found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
