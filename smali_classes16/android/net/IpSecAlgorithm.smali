.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$AlgorithmName;
    }
.end annotation


# static fields
.field public static final AUTH_CRYPT_AES_GCM:Ljava/lang/String; = "rfc4106(gcm(aes))"

.field public static final AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"

.field public static final CRYPT_NULL:Ljava/lang/String; = "ecb(cipher_null)"

.field private static final TAG:Ljava/lang/String; = "IpSecAlgorithm"


# instance fields
.field private final mKey:[B

.field private final mName:Ljava/lang/String;

.field private final mTruncLenBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    iput p3, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v1, v0, p3}, Landroid/net/IpSecAlgorithm;->checkValidOrThrow(Ljava/lang/String;II)V

    return-void
.end method

.method private static checkValidOrThrow(Ljava/lang/String;II)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_11c

    :cond_b
    goto :goto_53

    :sswitch_c
    const-string v2, "hmac(sha1)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    goto :goto_54

    :sswitch_16
    const-string v2, "hmac(md5)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_54

    :sswitch_20
    const-string v2, "hmac(sha512)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    goto :goto_54

    :sswitch_2a
    const-string v2, "hmac(sha384)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    goto :goto_54

    :sswitch_34
    const-string v2, "hmac(sha256)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    goto :goto_54

    :sswitch_3e
    const-string v2, "cbc(aes)"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_54

    :sswitch_48
    const-string/jumbo v2, "rfc4106(gcm(aes))"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x6

    goto :goto_54

    :goto_53
    const/4 v2, -0x1

    :goto_54
    const/16 v5, 0xc0

    const/16 v6, 0xa0

    const/16 v7, 0x60

    const/16 v8, 0x100

    const/16 v9, 0x80

    packed-switch v2, :pswitch_data_13a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find an algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_78
    if-eq p1, v6, :cond_85

    const/16 v2, 0xe0

    if-eq p1, v2, :cond_85

    const/16 v2, 0x120

    if-ne p1, v2, :cond_83

    goto :goto_85

    :cond_83
    move v2, v4

    goto :goto_86

    :cond_85
    :goto_85
    move v2, v3

    :goto_86
    move v0, v2

    const/16 v2, 0x40

    if-eq p2, v2, :cond_91

    if-eq p2, v7, :cond_91

    if-ne p2, v9, :cond_90

    goto :goto_91

    :cond_90
    move v3, v4

    :cond_91
    :goto_91
    move v1, v3

    goto/16 :goto_e9

    :pswitch_94
    const/16 v2, 0x200

    if-ne p1, v2, :cond_9a

    move v5, v3

    goto :goto_9b

    :cond_9a
    move v5, v4

    :goto_9b
    move v0, v5

    if-lt p2, v8, :cond_a1

    if-gt p2, v2, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v4

    :goto_a2
    move v1, v3

    goto/16 :goto_e9

    :pswitch_a5
    const/16 v2, 0x180

    if-ne p1, v2, :cond_ab

    move v6, v3

    goto :goto_ac

    :cond_ab
    move v6, v4

    :goto_ac
    move v0, v6

    if-lt p2, v5, :cond_b2

    if-gt p2, v2, :cond_b2

    goto :goto_b3

    :cond_b2
    move v3, v4

    :goto_b3
    move v1, v3

    goto :goto_e9

    :pswitch_b5
    if-ne p1, v8, :cond_b9

    move v2, v3

    goto :goto_ba

    :cond_b9
    move v2, v4

    :goto_ba
    move v0, v2

    if-lt p2, v7, :cond_c0

    if-gt p2, v8, :cond_c0

    goto :goto_c1

    :cond_c0
    move v3, v4

    :goto_c1
    move v1, v3

    goto :goto_e9

    :pswitch_c3
    if-ne p1, v6, :cond_c7

    move v2, v3

    goto :goto_c8

    :cond_c7
    move v2, v4

    :goto_c8
    move v0, v2

    if-lt p2, v7, :cond_ce

    if-gt p2, v6, :cond_ce

    goto :goto_cf

    :cond_ce
    move v3, v4

    :goto_cf
    move v1, v3

    goto :goto_e9

    :pswitch_d1
    if-ne p1, v9, :cond_d5

    move v2, v3

    goto :goto_d6

    :cond_d5
    move v2, v4

    :goto_d6
    move v0, v2

    if-lt p2, v7, :cond_dc

    if-gt p2, v9, :cond_dc

    goto :goto_dd

    :cond_dc
    move v3, v4

    :goto_dd
    move v1, v3

    goto :goto_e9

    :pswitch_df
    if-eq p1, v9, :cond_e7

    if-eq p1, v5, :cond_e7

    if-ne p1, v8, :cond_e6

    goto :goto_e7

    :cond_e6
    move v3, v4

    :cond_e7
    :goto_e7
    move v0, v3

    nop

    :goto_e9
    if-eqz v0, :cond_105

    if-eqz v1, :cond_ee

    return-void

    :cond_ee
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid truncation keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key material keyLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_11c
    .sparse-switch
        -0x43ce71de -> :sswitch_48
        0x17881bfe -> :sswitch_3e
        0x215826a1 -> :sswitch_34
        0x2158a605 -> :sswitch_2a
        0x2159743e -> :sswitch_20
        0x2d40230c -> :sswitch_16
        0x7b1b4343 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_df
        :pswitch_d1
        :pswitch_c3
        :pswitch_b5
        :pswitch_a5
        :pswitch_94
        :pswitch_78
    .end packed-switch
.end method

.method public static equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_7

    goto :goto_24

    :cond_7
    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    iget-object v3, p1, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    iget v3, p1, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    if-ne v2, v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    :cond_24
    :goto_24
    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0
.end method

.method private static isUnsafeBuild()Z
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()[B
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncationLengthBits()I
    .registers 2

    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return v0
.end method

.method public isAead()Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rfc4106(gcm(aes))"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAuthentication()Z
    .registers 8

    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_50

    :cond_10
    goto :goto_43

    :sswitch_11
    const-string v1, "hmac(sha1)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    goto :goto_44

    :sswitch_1b
    const-string v1, "hmac(md5)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_44

    :sswitch_25
    const-string v1, "hmac(sha512)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_44

    :sswitch_2f
    const-string v1, "hmac(sha384)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_44

    :sswitch_39
    const-string v1, "hmac(sha256)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v5

    goto :goto_44

    :goto_43
    const/4 v0, -0x1

    :goto_44
    if-eqz v0, :cond_4f

    if-eq v0, v6, :cond_4f

    if-eq v0, v5, :cond_4f

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_4f

    return v2

    :cond_4f
    return v6

    :sswitch_data_50
    .sparse-switch
        0x215826a1 -> :sswitch_39
        0x2158a605 -> :sswitch_2f
        0x2159743e -> :sswitch_25
        0x2d40230c -> :sswitch_1b
        0x7b1b4343 -> :sswitch_11
    .end sparse-switch
.end method

.method public isEncryption()Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cbc(aes)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/IpSecAlgorithm;->isUnsafeBuild()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    const-string v1, "<hidden>"

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTruncLenBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
