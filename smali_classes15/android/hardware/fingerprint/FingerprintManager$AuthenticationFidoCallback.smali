.class public abstract Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationFidoCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFidoSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    .registers 3

    return-void
.end method
