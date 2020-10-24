.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DefaultMiApp"

    const-string v2, "binderDied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2$1;-><init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
