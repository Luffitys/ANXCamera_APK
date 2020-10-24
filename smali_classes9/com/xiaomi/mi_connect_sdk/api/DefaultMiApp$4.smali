.class Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

.field final synthetic val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;


# direct methods
.method constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$4;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$4;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$4;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object p0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$4;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-virtual {v0, p0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    return-void
.end method
