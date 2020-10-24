.class Lcom/xiaomi/idm/api/IDMApi$InternalCallback;
.super Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;
.source ""


# instance fields
.field private mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;

.field final synthetic this$0:Lcom/xiaomi/idm/api/IDMApi;


# direct methods
.method private constructor <init>(Lcom/xiaomi/idm/api/IDMApi;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;->this$0:Lcom/xiaomi/idm/api/IDMApi;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/IDMApi;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;Lcom/xiaomi/idm/api/IDMApi$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;-><init>(Lcom/xiaomi/idm/api/IDMApi;Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure([B)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getErrCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;

    invoke-interface {p0, p1, v0, v1}, Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;->onFailure(Lcom/xiaomi/idm/api/conn/ConnParam;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess([B)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getConfig()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDMApi$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;

    invoke-interface {p0, p1, v0}, Lcom/xiaomi/idm/api/IDMApi$IDMConnectionCallback;->onSuccess(Lcom/xiaomi/idm/api/conn/ConnParam;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
