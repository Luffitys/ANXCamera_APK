.class public abstract Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnumerateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnumerate(Landroid/hardware/fingerprint/Fingerprint;)V
    .registers 2

    return-void
.end method

.method public onEnumerateError(ILjava/lang/CharSequence;)V
    .registers 3

    return-void
.end method
