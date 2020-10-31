.class Lmiui/security/CipherUtils$CipherStream;
.super Ljava/io/InputStream;
.source "CipherUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/CipherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CipherStream"
.end annotation


# instance fields
.field final mCipher:Ljavax/crypto/Cipher;

.field mInputBuffer:[B

.field final mInputDataStream:Ljava/io/InputStream;

.field mIsFinal:Z

.field mOutputBuffer:[B

.field mOutputBufferOffset:I


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    iput-object p2, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    return-void
.end method

.method private update()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    goto :goto_26

    :cond_18
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    :try_start_1b
    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I
    :try_end_25
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_25} :catch_30
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_25} :catch_27

    nop

    :goto_26
    return-void

    :catch_27
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "BadPaddingException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_30
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IllegalBlockSizeException"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    if-eqz v0, :cond_13

    array-length v1, v0

    iget v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    if-le v1, v2, :cond_13

    array-length v0, v0

    sub-int/2addr v0, v2

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    array-length v3, v0

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    aget-byte v0, v0, v2

    return v0

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iget-boolean v0, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    invoke-virtual {p0}, Lmiui/security/CipherUtils$CipherStream;->read()I

    move-result v0

    return v0
.end method
