.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedSigner"
.end annotation


# instance fields
.field public final certs:[Ljava/security/cert/X509Certificate;

.field public digest:[B

.field public final por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

.field public verityRootHash:[B


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    return-void
.end method
