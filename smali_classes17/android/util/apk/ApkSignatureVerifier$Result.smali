.class public Landroid/util/apk/ApkSignatureVerifier$Result;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final certs:[[Ljava/security/cert/Certificate;

.field public final signatureSchemeVersion:I

.field public final sigs:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>([[Ljava/security/cert/Certificate;[Landroid/content/pm/Signature;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->certs:[[Ljava/security/cert/Certificate;

    iput-object p2, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->sigs:[Landroid/content/pm/Signature;

    iput p3, p0, Landroid/util/apk/ApkSignatureVerifier$Result;->signatureSchemeVersion:I

    return-void
.end method
