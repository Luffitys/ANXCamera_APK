.class Lcom/miui/mishare/app/connect/MiShareConnectivity$1;
.super Ljava/lang/Object;
.source "MiShareConnectivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/connect/MiShareConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/connect/MiShareConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-static {p2}, Lcom/miui/mishare/IMiShareService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/mishare/IMiShareService;

    move-result-object v1

    # setter for: Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;
    invoke-static {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->access$002(Lcom/miui/mishare/app/connect/MiShareConnectivity;Lcom/miui/mishare/IMiShareService;)Lcom/miui/mishare/IMiShareService;

    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    # getter for: Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;
    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->access$100(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    # getter for: Lcom/miui/mishare/app/connect/MiShareConnectivity;->mCallback:Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;
    invoke-static {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->access$100(Lcom/miui/mishare/app/connect/MiShareConnectivity;)Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;->onServiceBound()V

    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/mishare/app/connect/MiShareConnectivity$1;->this$0:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    const/4 v1, 0x0

    # setter for: Lcom/miui/mishare/app/connect/MiShareConnectivity;->mService:Lcom/miui/mishare/IMiShareService;
    invoke-static {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->access$002(Lcom/miui/mishare/app/connect/MiShareConnectivity;Lcom/miui/mishare/IMiShareService;)Lcom/miui/mishare/IMiShareService;

    return-void
.end method
