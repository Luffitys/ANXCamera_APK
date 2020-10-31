.class Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;
.super Ljava/lang/Object;
.source "BinderInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->notifyClient(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;->this$0:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    iput p2, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;->this$0:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    # getter for: Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->access$100(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;)Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;->val$uid:I

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;->onLimitReached(I)V

    return-void
.end method
