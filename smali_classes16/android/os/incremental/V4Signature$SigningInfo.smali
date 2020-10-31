.class public Landroid/os/incremental/V4Signature$SigningInfo;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfo"
.end annotation


# instance fields
.field public final additionalData:[B

.field public final apkDigest:[B

.field public final certificate:[B

.field public final publicKey:[B

.field public final signature:[B

.field public final signatureAlgorithmId:I


# direct methods
.method constructor <init>([B[B[B[BI[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    iput-object p3, p0, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    iput-object p4, p0, Landroid/os/incremental/V4Signature$SigningInfo;->publicKey:[B

    iput p5, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signatureAlgorithmId:I

    iput-object p6, p0, Landroid/os/incremental/V4Signature$SigningInfo;->signature:[B

    return-void
.end method

.method public static fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    new-instance v14, Landroid/os/incremental/V4Signature$SigningInfo;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/os/incremental/V4Signature$SigningInfo;-><init>([B[B[B[BI[B)V

    return-object v14
.end method
