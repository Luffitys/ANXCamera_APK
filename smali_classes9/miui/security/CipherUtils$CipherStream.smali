.class Lmiui/security/CipherUtils$CipherStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field final mCipher:Ljavax/crypto/Cipher;

.field mInputBuffer:[B

.field final mInputDataStream:Ljava/io/InputStream;

.field mIsFinal:Z

.field mOutputBuffer:[B

.field mOutputBufferOffset:I


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    iput-object p2, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lmiui/security/CipherUtils$CipherStream;->mInputBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    :try_start_0
    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BadPaddingException"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IllegalBlockSizeException"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    iget v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    if-le v1, v2, :cond_0

    array-length v0, v0

    sub-int/2addr v0, v2

    iget-object p0, p0, Lmiui/security/CipherUtils$CipherStream;->mInputDataStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 4

    iget-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBufferOffset:I

    aget-byte p0, v0, v2

    return p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/CipherUtils$CipherStream;->mOutputBuffer:[B

    iget-boolean v0, p0, Lmiui/security/CipherUtils$CipherStream;->mIsFinal:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lmiui/security/CipherUtils$CipherStream;->update()V

    invoke-virtual {p0}, Lmiui/security/CipherUtils$CipherStream;->read()I

    move-result p0

    return p0
.end method
