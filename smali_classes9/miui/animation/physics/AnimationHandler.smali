.class public Lmiui/animation/physics/AnimationHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;

.field private final mCallbackDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

.field private mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

.field private mListDirty:Z

.field private mProvider:Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lmiui/animation/physics/AnimationHandler;)V

    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/animation/physics/AnimationHandler;)J
    .locals 2

    iget-wide v0, p0, Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lmiui/animation/physics/AnimationHandler;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lmiui/animation/physics/AnimationHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/animation/physics/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static synthetic access$200(Lmiui/animation/physics/AnimationHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/animation/physics/AnimationHandler;)Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 0

    invoke-direct {p0}, Lmiui/animation/physics/AnimationHandler;->getProvider()Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object p0

    return-object p0
.end method

.method private cleanUpList()V
    .locals 2

    iget-boolean v0, p0, Lmiui/animation/physics/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/animation/physics/AnimationHandler;->mListDirty:Z

    :cond_2
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3, v0, v1}, Lmiui/animation/physics/AnimationHandler;->isCallbackDue(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1, p2}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmiui/animation/physics/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method public static getFrameTime()J
    .locals 2

    sget-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/physics/AnimationHandler;

    iget-wide v0, v0, Lmiui/animation/physics/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static getInstance()Lmiui/animation/physics/AnimationHandler;
    .locals 2

    sget-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Lmiui/animation/physics/AnimationHandler;

    invoke-direct {v1}, Lmiui/animation/physics/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lmiui/animation/physics/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/animation/physics/AnimationHandler;

    return-object v0
.end method

.method private getProvider()Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mProvider:Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lmiui/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;

    iget-object v1, p0, Lmiui/animation/physics/AnimationHandler;->mCallbackDispatcher:Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lmiui/animation/physics/AnimationHandler$FrameCallbackProvider14;-><init>(Lmiui/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    :goto_0
    iput-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mProvider:Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    :cond_1
    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler;->mProvider:Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    return-object p0
.end method

.method private isCallbackDue(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 4

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

    invoke-virtual {p0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addAnimationFrameCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/animation/physics/AnimationHandler;->getProvider()Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_0
    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    iget-object p0, p0, Lmiui/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmiui/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeCallback(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallback;)V
    .locals 2

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mDelayedCallbackStartTime:Lmiui/util/ArrayMap;

    invoke-virtual {v0, p1}, Lmiui/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/animation/physics/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/animation/physics/AnimationHandler;->mListDirty:Z

    :cond_0
    return-void
.end method

.method public setProvider(Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 0

    iput-object p1, p0, Lmiui/animation/physics/AnimationHandler;->mProvider:Lmiui/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    return-void
.end method
