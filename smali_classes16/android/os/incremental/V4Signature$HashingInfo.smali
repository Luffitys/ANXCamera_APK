.class public Landroid/os/incremental/V4Signature$HashingInfo;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashingInfo"
.end annotation


# instance fields
.field public final hashAlgorithm:I

.field public final log2BlockSize:B

.field public final rawRootHash:[B

.field public final salt:[B


# direct methods
.method constructor <init>(IB[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    iput-byte p2, p0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    iput-object p3, p0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    iput-object p4, p0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    return-void
.end method

.method public static fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;
    .registers 7
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

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    # invokes: Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->access$000(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    new-instance v5, Landroid/os/incremental/V4Signature$HashingInfo;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/os/incremental/V4Signature$HashingInfo;-><init>(IB[B[B)V

    return-object v5
.end method
