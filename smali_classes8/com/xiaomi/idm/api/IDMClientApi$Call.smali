.class public Lcom/xiaomi/idm/api/IDMClientApi$Call;
.super Ljava/lang/Object;
.source ""


# instance fields
.field action:Lcom/xiaomi/idm/api/IDMService$Action;

.field future:Lcom/xiaomi/idm/task/CallFuture;

.field request:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMClientApi;


# direct methods
.method constructor <init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/IDMService$Action;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->this$0:Lcom/xiaomi/idm/api/IDMClientApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->action:Lcom/xiaomi/idm/api/IDMService$Action;

    iput-object p3, p0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->request:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMRequest;

    new-instance p1, Lcom/xiaomi/idm/task/CallFuture;

    invoke-direct {p1}, Lcom/xiaomi/idm/task/CallFuture;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMClientApi$Call;->future:Lcom/xiaomi/idm/task/CallFuture;

    return-void
.end method
