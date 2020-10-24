.class Lmiui/hybrid/feature/Network$1;
.super Lmiui/hybrid/LifecycleListener;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/hybrid/feature/Network;

.field final synthetic val$nativeInterface:Lmiui/hybrid/NativeInterface;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    iput-object p2, p0, Lmiui/hybrid/feature/Network$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    iget-object v1, p0, Lmiui/hybrid/feature/Network$1;->val$nativeInterface:Lmiui/hybrid/NativeInterface;

    invoke-static {v0, v1}, Lmiui/hybrid/feature/Network;->access$200(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iget-object p0, p0, Lmiui/hybrid/feature/Network$1;->this$0:Lmiui/hybrid/feature/Network;

    invoke-static {p0}, Lmiui/hybrid/feature/Network;->access$000(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object p0

    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {p0, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    return-void
.end method

.method public onPageChange()V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    return-void
.end method
