.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHUNK_SIZE_MAX:I = 0x10000

.field private static final DEFAULT_CHUNK_SIZE_THRESHOLD:I = 0x800


# instance fields
.field private final mChunk:[B

.field private mChunkLength:I

.field private final mChunkSizeMax:I

.field private final mChunkSizeThreshold:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private mProducedOutputSizeBytes:J


# direct methods
.method constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .registers 4

    const/16 v0, 0x800

    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .registers 4

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    return-void
.end method

.method constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iput p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-gtz p2, :cond_10

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_17

    :cond_10
    if-le p2, p3, :cond_15

    iput p3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_17

    :cond_15
    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    :goto_17
    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v2, v1, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v2

    if-eqz v2, :cond_41

    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    iget-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    array-length v5, v1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v3, :cond_39

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v3, v3

    if-lez v3, :cond_39

    iget-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v5, v2, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    :cond_39
    return-object v0

    :cond_3a
    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    throw v3

    :cond_41
    new-instance v3, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v3}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v3
.end method

.method public getConsumedInputSizeBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_100

    if-nez p1, :cond_6

    goto/16 :goto_100

    :cond_6
    const/16 v0, -0x3e8

    if-ltz p3, :cond_f8

    if-ltz p2, :cond_f8

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_f8

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    :goto_13
    if-gtz p3, :cond_1d

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    if-lt v2, v3, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object v1

    :cond_1d
    :goto_1d
    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-static {p1, p2, v2, v3, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result v2

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    const/16 v5, -0x15

    if-gt v3, v4, :cond_d5

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    if-lt v3, v4, :cond_d3

    iget-object v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iget-object v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    if-eqz v3, :cond_cd

    iget v4, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c6

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-lez v4, :cond_a8

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    if-gt v4, v5, :cond_85

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v5, v4

    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    if-lez v5, :cond_6c

    iget-object v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v5, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iget-object v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v8, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-static {v4, v5, v6, v7, v8}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    :cond_6c
    iget-object v4, v3, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v4, :cond_d3

    iget-object v4, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v4, v4

    if-lez v4, :cond_d3

    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v6, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v4, v3, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {v1, v4}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v1

    goto :goto_d3

    :cond_85
    new-instance v4, Landroid/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_a8
    new-instance v0, Landroid/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed 0 of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes provided."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c6
    iget v0, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    throw v0

    :cond_cd
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_d3
    :goto_d3
    goto/16 :goto_13

    :cond_d5
    new-instance v0, Landroid/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chunk size exceeded max chunk size. Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f8
    new-instance v1, Landroid/security/KeyStoreException;

    const-string v2, "Input offset and length out of bounds of input array"

    invoke-direct {v1, v0, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_100
    :goto_100
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0
.end method
