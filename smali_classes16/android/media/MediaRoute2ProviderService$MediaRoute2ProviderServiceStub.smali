.class final Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;
.super Landroid/media/IMediaRoute2ProviderService$Stub;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRoute2ProviderServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRoute2ProviderService;


# direct methods
.method constructor <init>(Landroid/media/MediaRoute2ProviderService;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-direct {p0}, Landroid/media/IMediaRoute2ProviderService$Stub;-><init>()V

    return-void
.end method

.method private checkCallerIsSystem()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MR2ProviderService"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Ignoring empty routeId from system service."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$000(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$000(Landroid/media/MediaRoute2ProviderService;)Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2ProviderInfo;->getRoute(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x1

    return v0

    :cond_35
    :goto_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Ignoring unknown route from system service. routeId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MR2ProviderService"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Ignoring empty sessionId from system service."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2ProviderService;->getSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Ignoring unknown session from system service. sessionId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3e
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "deselectRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_31

    :cond_16
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$oIYR_uFXIzjOYgcaHDJvXF7vaTo;->INSTANCE:Landroid/media/-$$Lambda$oIYR_uFXIzjOYgcaHDJvXF7vaTo;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_31
    :goto_31
    return-void
.end method

.method public releaseSession(JLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "releaseSession"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$vzDjZebXFgg25eChK64A6RbOKWM;->INSTANCE:Landroid/media/-$$Lambda$vzDjZebXFgg25eChK64A6RbOKWM;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "requestCreateSession"

    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;->INSTANCE:Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "selectRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_32

    :cond_17
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;->INSTANCE:Landroid/media/-$$Lambda$vBRPMdg_QrRz6M5Jf1vFUX7p348;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_32
    :goto_32
    return-void
.end method

.method public setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V
    .registers 5

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$io02Kf1ict0DH83WLluLtzQSGQo;->INSTANCE:Landroid/media/-$$Lambda$io02Kf1ict0DH83WLluLtzQSGQo;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "setRouteVolume"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$Z9rxhzVNP08ZyBKTAu2QaNgeJBo;->INSTANCE:Landroid/media/-$$Lambda$Z9rxhzVNP08ZyBKTAu2QaNgeJBo;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .registers 10

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "setSessionVolume"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;->INSTANCE:Landroid/media/-$$Lambda$NaAryPBSI2JqN5mM_RWDdyz8eFE;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "transferToRoute"

    invoke-direct {p0, p3, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkSessionIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0, p4, v0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkRouteIdIsValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_32

    :cond_17
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # invokes: Landroid/media/MediaRoute2ProviderService;->addRequestId(J)V
    invoke-static {v0, p1, p2}, Landroid/media/MediaRoute2ProviderService;->access$200(Landroid/media/MediaRoute2ProviderService;J)V

    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$oNqqU7q9NNLGaqLJ6CkSYk9Pwt0;->INSTANCE:Landroid/media/-$$Lambda$oNqqU7q9NNLGaqLJ6CkSYk9Pwt0;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3, p3, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_32
    :goto_32
    return-void
.end method

.method public updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    .registers 5

    invoke-direct {p0}, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->checkCallerIsSystem()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    # getter for: Landroid/media/MediaRoute2ProviderService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/media/MediaRoute2ProviderService;->access$100(Landroid/media/MediaRoute2ProviderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;->INSTANCE:Landroid/media/-$$Lambda$zs_1ohlviAzvACJcfYn-NI8YNFc;

    iget-object v2, p0, Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub;->this$0:Landroid/media/MediaRoute2ProviderService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
