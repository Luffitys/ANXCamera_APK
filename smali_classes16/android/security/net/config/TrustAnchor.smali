.class public final Landroid/security/net/config/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final overridesPins:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    iput-object p1, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    iput-boolean p2, p0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return-void

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
