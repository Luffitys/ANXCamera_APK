.class final Landroid/app/VoiceInteractor$KillCallback;
.super Landroid/os/ICancellationSignal$Stub;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KillCallback"
.end annotation


# instance fields
.field private final mInteractor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/VoiceInteractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/VoiceInteractor$KillCallback;->mInteractor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    iget-object v0, p0, Landroid/app/VoiceInteractor$KillCallback;->mInteractor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_19

    iget-object v1, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/app/-$$Lambda$dUWXWbBHcaaVBn031EDBP91NR7k;->INSTANCE:Landroid/app/-$$Lambda$dUWXWbBHcaaVBn031EDBP91NR7k;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method
