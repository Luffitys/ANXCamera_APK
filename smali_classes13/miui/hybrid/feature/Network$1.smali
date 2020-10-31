.class Lmiui/hybrid/feature/Network$1;
.super Lmiui/hybrid/LifecycleListener;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Network;->enableNotification(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Network;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .registers 3

    iput-object p1, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    iput-object p2, p0, Lmiui/hybrid/feature/Network$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method

.method private unregister()V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    iget-object v1, p0, Lmiui/hybrid/feature/Network$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    # invokes: Lmiui/hybrid/feature/Network;->unregisterNotification(Lmiui/hybrid/NativeInterface;)V
    invoke-static {v0, v1}, Lmiui/hybrid/feature/Network;->access$200(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iget-object v0, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    # getter for: Lmiui/hybrid/feature/Network;->mCallback:Lmiui/hybrid/Callback;
    invoke-static {v0}, Lmiui/hybrid/feature/Network;->access$000(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    return-void
.end method

.method public onPageChange()V
    .registers 1

    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    return-void
.end method
