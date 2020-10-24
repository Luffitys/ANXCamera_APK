.class public Lcom/xiaomi/idm/service/test/TestLocalService$Stub;
.super Lcom/xiaomi/idm/service/test/TestLocalService;
.source ""


# instance fields
.field private mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;


# direct methods
.method public constructor <init>(Lcom/xiaomi/idm/api/IDMClientApi;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/service/test/TestLocalService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    iput-object p1, p0, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    return-void
.end method


# virtual methods
.method public getSomeString(Ljava/lang/String;)Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;->getSomeStringAsync(Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/test/localetestservice/proto/DataProto$Response;
    :try_end_0
    .catch Lcom/xiaomi/idm/task/CallFuture$CallException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/idm/api/RmiException;

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/idm/task/CallFuture$CallException;->getMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getSomeStringAsync(Ljava/lang/String;)Lcom/xiaomi/idm/task/CallFuture;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/test/TestLocalService$Actions$GetSomeString;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/test/TestLocalService$Actions$GetSomeString;-><init>(Lcom/xiaomi/idm/service/test/TestLocalService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/idm/api/IDMClientApi;->request(Lcom/xiaomi/idm/api/IDMService$Action;)Lcom/xiaomi/idm/task/CallFuture;

    move-result-object p0

    return-object p0
.end method

.method public setSomeEventCallback(Lcom/xiaomi/idm/service/test/TestLocalService$Events$SomeEvent$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/idm/service/test/TestLocalService$Stub;->mIDMClientApi:Lcom/xiaomi/idm/api/IDMClientApi;

    new-instance v1, Lcom/xiaomi/idm/service/test/TestLocalService$Events$SomeEvent;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/idm/service/test/TestLocalService$Events$SomeEvent;-><init>(Lcom/xiaomi/idm/api/IDMService;Lcom/xiaomi/idm/service/test/TestLocalService$Events$SomeEvent$Callback;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/idm/api/IDMClientApi;->setEventCallback(Lcom/xiaomi/idm/api/IDMService$Event;Z)V

    return-void
.end method
