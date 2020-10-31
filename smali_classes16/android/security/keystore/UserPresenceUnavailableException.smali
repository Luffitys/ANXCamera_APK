.class public Landroid/security/keystore/UserPresenceUnavailableException;
.super Ljava/security/InvalidKeyException;
.source "UserPresenceUnavailableException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "No Strong Box available."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
