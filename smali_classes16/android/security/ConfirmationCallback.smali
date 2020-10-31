.class public abstract Landroid/security/ConfirmationCallback;
.super Ljava/lang/Object;
.source "ConfirmationCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .registers 1

    return-void
.end method

.method public onConfirmed([B)V
    .registers 2

    return-void
.end method

.method public onDismissed()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
