.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field mIsClosed:Z

.field final mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    return-void
.end method

.method private validateSessionInternalStates()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$700(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    :cond_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$700(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V
    invoke-static {v0, p0}, Landroid/media/MediaCas;->access$1100(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V
    invoke-static {v1}, Landroid/media/MediaCas;->access$900(Landroid/media/MediaCas;)V

    :goto_21
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/media/MediaCas$Session;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Landroid/media/MediaCas$Session;

    iget-object v1, v1, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()[B
    .registers 3

    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    # invokes: Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B
    invoke-static {v0, v1}, Landroid/media/MediaCas;->access$000(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method public processEcm([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    return-void
.end method

.method public processEcm([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$700(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;
    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->access$800(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V
    invoke-static {v1}, Landroid/media/MediaCas;->access$900(Landroid/media/MediaCas;)V

    :goto_1f
    return-void
.end method

.method public sendSessionEvent(II[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$1000(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    if-eqz v0, :cond_28

    :try_start_b
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$1000(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;
    invoke-static {v2, p3}, Landroid/media/MediaCas;->access$200(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/hardware/cas/V1_1/ICas;->sendSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V
    invoke-static {v1}, Landroid/media/MediaCas;->access$900(Landroid/media/MediaCas;)V

    :goto_27
    return-void

    :cond_28
    const-string v0, "MediaCas"

    const-string v1, "Send Session Event isn\'t supported by cas@1.0 interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v1, "Send Session Event is not supported"

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrivateData([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    invoke-static {v0}, Landroid/media/MediaCas;->access$700(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    const/4 v3, 0x0

    array-length v4, p1

    # invokes: Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;
    invoke-static {v2, p1, v3, v4}, Landroid/media/MediaCas;->access$800(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    # invokes: Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V
    invoke-static {v1}, Landroid/media/MediaCas;->access$900(Landroid/media/MediaCas;)V

    :goto_21
    return-void
.end method
