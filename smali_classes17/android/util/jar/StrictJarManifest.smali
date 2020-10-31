.class public Landroid/util/jar/StrictJarManifest;
.super Ljava/lang/Object;
.source "StrictJarManifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarManifest$Chunk;
    }
.end annotation


# static fields
.field static final ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

.field static final LINE_LENGTH_LIMIT:I = 0x48

.field private static final LINE_SEPARATOR:[B

.field private static final VALUE_SEPARATOR:[B


# instance fields
.field private chunks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAttributes:Ljava/util/jar/Attributes;

.field private mainEnd:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    return-void

    nop

    :array_1a
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_20
    .array-data 1
        0x3at
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-void
.end method

.method public constructor <init>(Landroid/util/jar/StrictJarManifest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    nop

    invoke-virtual {p1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    invoke-static {p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method constructor <init>([BZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/jar/StrictJarManifest;-><init>()V

    if-eqz p2, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    :cond_c
    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method private read([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-direct {v0, p1, v1}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    invoke-virtual {v0}, Landroid/util/jar/StrictJarManifestReader;->getEndOfMainSection()I

    move-result v1

    iput v1, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1e

    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v4, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v3

    :cond_1e
    if-eqz v3, :cond_49

    invoke-static {p1, v2, v3, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    iget-object v4, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v4}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v5, v2}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    iget-object v6, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v6, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    :cond_48
    goto :goto_2d

    :cond_49
    sget-object v4, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Landroid/util/jar/StrictJarManifest;->ATTRIBUTE_NAME_NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {p1, v6, v5, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    invoke-virtual {v6}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9, v0, v1}, Landroid/util/jar/StrictJarManifest;->writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    goto :goto_7b

    :cond_8f
    sget-object v8, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5a

    :cond_95
    return-void
.end method

.method private static writeEntry(Ljava/io/OutputStream;Ljava/util/jar/Attributes$Name;Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Landroid/util/jar/StrictJarManifest;->VALUE_SEPARATOR:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x48

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_28
    const/4 v2, 0x1

    invoke-virtual {p3, v1, p4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_35

    invoke-virtual {p3, p4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    :cond_35
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    sget-object v3, Landroid/util/jar/StrictJarManifest;->LINE_SEPARATOR:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v2, :cond_4f

    nop

    return-void

    :cond_4f
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_28
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/util/jar/StrictJarManifest;

    invoke-direct {v0, p0}, Landroid/util/jar/StrictJarManifest;-><init>(Landroid/util/jar/StrictJarManifest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    iget-object v1, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    move-object v2, p1

    check-cast v2, Landroid/util/jar/StrictJarManifest;

    iget-object v2, v2, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v1, v2}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v1}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;
    .registers 3

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/jar/StrictJarManifest$Chunk;

    return-object v0
.end method

.method public getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method getMainAttributesEnd()I
    .registers 2

    iget v0, p0, Landroid/util/jar/StrictJarManifest;->mainEnd:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/util/jar/StrictJarManifest;->mainAttributes:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/jar/StrictJarManifest;->read([B)V

    return-void
.end method

.method removeChunks()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/jar/StrictJarManifest;->chunks:Ljava/util/HashMap;

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarManifest;->write(Landroid/util/jar/StrictJarManifest;Ljava/io/OutputStream;)V

    return-void
.end method
