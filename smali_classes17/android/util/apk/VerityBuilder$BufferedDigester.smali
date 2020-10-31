.class Landroid/util/apk/VerityBuilder$BufferedDigester;
.super Ljava/lang/Object;
.source "VerityBuilder.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/VerityBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedDigester"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private mBytesDigestedSinceReset:I

.field private final mDigestBuffer:[B

.field private final mMd:Ljava/security/MessageDigest;

.field private final mOutput:Ljava/nio/ByteBuffer;

.field private final mSalt:[B


# direct methods
.method private constructor <init>([BLjava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    iput-object p1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    if-eqz v1, :cond_20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    return-void
.end method

.method synthetic constructor <init>([BLjava/nio/ByteBuffer;Landroid/util/apk/VerityBuilder$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/util/apk/VerityBuilder$BufferedDigester;-><init>([BLjava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/apk/VerityBuilder$BufferedDigester;)V
    .registers 1

    invoke-direct {p0}, Landroid/util/apk/VerityBuilder$BufferedDigester;->fillUpLastOutputChunk()V

    return-void
.end method

.method private fillUpLastOutputChunk()V
    .registers 4

    iget-object v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    rsub-int v2, v0, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public assertEmptyBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    iget v0, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer is not empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    :goto_8
    if-lez v1, :cond_46

    iget v2, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    const/16 v3, 0x1000

    rsub-int v2, v2, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    iget v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    if-ne v4, v3, :cond_45

    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/security/MessageDigest;->digest([BII)I

    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mOutput:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mDigestBuffer:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mSalt:[B

    if-eqz v3, :cond_43

    iget-object v4, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mMd:Ljava/security/MessageDigest;

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    :cond_43
    iput v6, p0, Landroid/util/apk/VerityBuilder$BufferedDigester;->mBytesDigestedSinceReset:I

    :cond_45
    goto :goto_8

    :cond_46
    return-void
.end method
