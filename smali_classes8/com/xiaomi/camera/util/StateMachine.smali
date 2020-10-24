.class public Lcom/xiaomi/camera/util/StateMachine;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/util/StateMachine;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaomi/camera/util/StateMachine;Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$SmHandler;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/util/StateMachine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    new-instance p1, Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/xiaomi/camera/util/StateMachine;Lcom/xiaomi/camera/util/StateMachine$1;)V

    iput-object p1, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method public addLogRec(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1200(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/IState;

    move-result-object v5

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2100(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)[Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2200(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v6, v2, Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;->state:Lcom/xiaomi/camera/util/State;

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/State;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->add(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V

    return-void
.end method

.method public final addState(Lcom/xiaomi/camera/util/State;)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$900(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final addState(Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$900(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;Lcom/xiaomi/camera/util/State;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->access$2000(Lcom/xiaomi/camera/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/util/StateMachine$LogRec;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final deferMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1600(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " total records="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getLogRecCount()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getLogRecSize()I

    move-result p3

    if-ge p1, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " rec["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->getLogRec(I)Lcom/xiaomi/camera/util/StateMachine$LogRec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "curState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine;->getCurrentState()Lcom/xiaomi/camera/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCurrentMessage()Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1200(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentState()Lcom/xiaomi/camera/util/IState;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/IState;

    move-result-object p0

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    return-object p0
.end method

.method public final getLogRec(I)Lcom/xiaomi/camera/util/StateMachine$LogRec;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->get(I)Lcom/xiaomi/camera/util/StateMachine$LogRec;

    move-result-object p0

    return-object p0
.end method

.method public final getLogRecCount()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->count()I

    move-result p0

    return p0
.end method

.method public final getLogRecMaxSize()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->access$1900(Lcom/xiaomi/camera/util/StateMachine$LogRecords;)I

    move-result p0

    return p0
.end method

.method public final getLogRecSize()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->size()I

    move-result p0

    return p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x2

    if-eq p1, p0, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "sm quit"

    return-object p0

    :cond_1
    const-string p0, "sm init"

    return-object p0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final hasDeferredMessages(I)Z
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method protected final hasMessages(I)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public isDbg()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Z

    move-result p0

    return p0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_1

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2500(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->addLogRec(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected onHalting()V
    .locals 0

    return-void
.end method

.method protected onPostHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onPreHandleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected onQuitting()V
    .locals 0

    return-void
.end method

.method public final quit()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2600(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method

.method public final quitNow()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2700(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final removeDeferredMessages(I)V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final removeMessages(I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final removeState(Lcom/xiaomi/camera/util/State;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1000(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IIIJ)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IIJ)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setDbg(Z)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$2900(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Z)V

    return-void
.end method

.method public final setInitialState(Lcom/xiaomi/camera/util/State;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1100(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/State;)V

    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1800(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$LogRecords;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$3000(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "(null)"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/util/StateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1300(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transitionTo(Lcom/xiaomi/camera/util/IState;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/IState;)V

    return-void
.end method

.method public final transitionToHaltingState()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {p0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1500(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Lcom/xiaomi/camera/util/StateMachine$SmHandler$HaltingState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1400(Lcom/xiaomi/camera/util/StateMachine$SmHandler;Lcom/xiaomi/camera/util/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine;->mSmHandler:Lcom/xiaomi/camera/util/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/xiaomi/camera/util/StateMachine$SmHandler;->access$1700(Lcom/xiaomi/camera/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
