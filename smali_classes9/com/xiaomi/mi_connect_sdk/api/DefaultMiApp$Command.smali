.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

.field private worker:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->worker:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method execute()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->worker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
