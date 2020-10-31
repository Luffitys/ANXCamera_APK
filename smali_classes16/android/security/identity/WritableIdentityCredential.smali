.class public abstract Landroid/security/identity/WritableIdentityCredential;
.super Ljava/lang/Object;
.source "WritableIdentityCredential.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCredentialKeyCertificateChain([B)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract personalize(Landroid/security/identity/PersonalizationData;)[B
.end method
