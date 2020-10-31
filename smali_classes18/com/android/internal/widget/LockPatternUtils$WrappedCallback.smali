.class Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;
.super Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCredentialVerified$0$LockPatternUtils$WrappedCallback()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;->onEarlyMatched()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mCallback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    return-void
.end method

.method public onCredentialVerified()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    const-string v0, "LockPatternUtils"

    const-string v1, "Handler is null during callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/widget/-$$Lambda$LockPatternUtils$WrappedCallback$i9jMZqkjCdhv8ydv-FyQJHm7hSE;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/-$$Lambda$LockPatternUtils$WrappedCallback$i9jMZqkjCdhv8ydv-FyQJHm7hSE;-><init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method
