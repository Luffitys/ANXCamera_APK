.class Landroid/util/apk/VerbatimX509Certificate;
.super Landroid/util/apk/WrappedX509Certificate;
.source "VerbatimX509Certificate.java"


# instance fields
.field private final mEncodedVerbatim:[B

.field private mHash:I


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/util/apk/WrappedX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    iput-object p2, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroid/util/apk/VerbatimX509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroid/util/apk/VerbatimX509Certificate;

    invoke-virtual {v2}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_19
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_a .. :try_end_19} :catch_1a

    return v1

    :catch_1a
    move-exception v0

    return v1
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mEncodedVerbatim:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    :try_start_5
    invoke-virtual {p0}, Landroid/util/apk/VerbatimX509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I
    :try_end_f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    :cond_14
    :goto_14
    iget v0, p0, Landroid/util/apk/VerbatimX509Certificate;->mHash:I

    return v0
.end method
