.class public Landroid/security/keystore/WrappedKeyEntry;
.super Ljava/lang/Object;
.source "WrappedKeyEntry.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# instance fields
.field private final mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mTransformation:Ljava/lang/String;

.field private final mWrappedKeyBytes:[B

.field private final mWrappingKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappedKeyBytes:[B

    iput-object p2, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappingKeyAlias:Ljava/lang/String;

    iput-object p3, p0, Landroid/security/keystore/WrappedKeyEntry;->mTransformation:Ljava/lang/String;

    iput-object p4, p0, Landroid/security/keystore/WrappedKeyEntry;->mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getTransformation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mTransformation:Ljava/lang/String;

    return-object v0
.end method

.method public getWrappedKeyBytes()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappedKeyBytes:[B

    return-object v0
.end method

.method public getWrappingKeyAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappingKeyAlias:Ljava/lang/String;

    return-object v0
.end method
