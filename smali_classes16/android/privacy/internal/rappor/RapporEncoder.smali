.class public Landroid/privacy/internal/rappor/RapporEncoder;
.super Ljava/lang/Object;
.source "RapporEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final INSECURE_SECRET:[B

.field private static final sSecureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final mConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final mEncoder:Lcom/google/android/rappor/Encoder;

.field private final mIsSecure:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    return-void

    nop

    :array_12
    .array-data 1
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
    .end array-data
.end method

.method private constructor <init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    iput-boolean v2, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    if-eqz v2, :cond_14

    sget-object v3, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    move-object/from16 v4, p3

    goto :goto_21

    :cond_14
    new-instance v3, Ljava/util/Random;

    iget-object v4, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/privacy/internal/rappor/RapporEncoder;->getInsecureSeed(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    sget-object v4, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    :goto_21
    new-instance v14, Lcom/google/android/rappor/Encoder;

    const/4 v7, 0x0

    iget-object v10, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    iget v11, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    iget-wide v12, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    iget-wide v5, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    iget-wide v8, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    iget v15, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    move-wide/from16 v16, v8

    iget v8, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    move-wide/from16 v18, v5

    move-object v5, v14

    move-object v6, v3

    move/from16 v20, v8

    const/4 v8, 0x0

    move-object v9, v4

    move-object/from16 v21, v14

    move/from16 v22, v15

    move-wide/from16 v14, v18

    move/from16 v18, v22

    move/from16 v19, v20

    invoke-direct/range {v5 .. v19}, Lcom/google/android/rappor/Encoder;-><init>(Ljava/util/Random;Ljava/security/MessageDigest;Ljava/security/MessageDigest;[BLjava/lang/String;IDDDII)V

    move-object/from16 v5, v21

    iput-object v5, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    return-void
.end method

.method public static createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;
    .registers 4

    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method public static createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;
    .registers 4

    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method private getInsecureSeed(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_19

    return-wide v2

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unable generate insecure seed"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public encodeBits([B)[B
    .registers 3

    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {v0, p1}, Lcom/google/android/rappor/Encoder;->encodeBits([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeBoolean(Z)[B
    .registers 3

    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {v0, p1}, Lcom/google/android/rappor/Encoder;->encodeBoolean(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeString(Ljava/lang/String;)[B
    .registers 3

    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {v0, p1}, Lcom/google/android/rappor/Encoder;->encodeString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .registers 2

    invoke-virtual {p0}, Landroid/privacy/internal/rappor/RapporEncoder;->getConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .registers 2

    iget-object v0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object v0
.end method

.method public isInsecureEncoderForTest()Z
    .registers 2

    iget-boolean v0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
