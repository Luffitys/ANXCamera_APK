.class Lcom/xiaomi/camera/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mCount:I

    iput-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/util/StateMachine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/camera/util/StateMachine$LogRecords;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    return p0
.end method

.method static synthetic access$2000(Lcom/xiaomi/camera/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object p0
.end method


# virtual methods
.method declared-synchronized add(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mCount:I

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v8, Lcom/xiaomi/camera/util/StateMachine$LogRec;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/camera/util/StateMachine$LogRec;-><init>(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/camera/util/StateMachine$LogRec;

    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    iget v2, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/camera/util/StateMachine$LogRec;->update(Lcom/xiaomi/camera/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;Lcom/xiaomi/camera/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/xiaomi/camera/util/StateMachine$LogRec;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    sub-int/2addr v0, p1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, p1, :cond_1

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/camera/util/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSize(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mMaxSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mOldestIndex:I

    iput p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mCount:I

    iget-object p1, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
