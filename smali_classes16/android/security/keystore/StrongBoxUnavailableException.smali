.class public Landroid/security/keystore/StrongBoxUnavailableException;
.super Ljava/security/ProviderException;
.source "StrongBoxUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/security/ProviderException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x44

    const-string v2, "No StrongBox available"

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
