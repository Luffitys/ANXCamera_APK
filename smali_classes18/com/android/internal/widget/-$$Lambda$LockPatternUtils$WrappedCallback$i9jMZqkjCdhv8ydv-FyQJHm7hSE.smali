.class public final synthetic Lcom/android/internal/widget/-$$Lambda$LockPatternUtils$WrappedCallback$i9jMZqkjCdhv8ydv-FyQJHm7hSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$LockPatternUtils$WrappedCallback$i9jMZqkjCdhv8ydv-FyQJHm7hSE;->f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$LockPatternUtils$WrappedCallback$i9jMZqkjCdhv8ydv-FyQJHm7hSE;->f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->lambda$onCredentialVerified$0$LockPatternUtils$WrappedCallback()V

    return-void
.end method
