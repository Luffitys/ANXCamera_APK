.class public abstract Lcom/xiaomi/idm/service/test/TestLocalService$Skeleton;
.super Lcom/xiaomi/idm/service/test/TestLocalService;
.source ""


# instance fields
.field private mSomeEventEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/test/TestLocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/xiaomi/idm/service/test/TestLocalService$Skeleton;->mSomeEventEnabled:Z

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifySomeEventEvent(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/test/TestLocalService$Skeleton;->mSomeEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->newBuilder()Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->setParam(I)Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/test/localetestservice/proto/EventsProto$SomeEvent;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method
