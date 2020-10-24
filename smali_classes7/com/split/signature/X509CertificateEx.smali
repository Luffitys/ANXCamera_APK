.class final Lcom/split/signature/X509CertificateEx;
.super Lcom/split/signature/X509CertificateWrapper;
.source ""


# instance fields
.field private a:[B


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/split/signature/X509CertificateWrapper;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lcom/split/signature/X509CertificateEx;->a:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lcom/split/signature/X509CertificateEx;->a:[B

    return-object p0
.end method
