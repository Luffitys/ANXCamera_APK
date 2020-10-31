.class Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:J = 0xaL

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method private cleanUpList()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_21
    return-void
.end method

.method public static getFrameTime()J
    .registers 2

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    iget-wide v0, v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;
    .registers 2

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    sget-object v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gez v2, :cond_1a

    iget-object v2, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addAnimationFrameCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    :cond_f
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method doAnimationFrame(J)V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    iget-object v3, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_18

    goto :goto_21

    :cond_18
    invoke-direct {p0, v3, v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3, p1, p2}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_24
    invoke-direct {p0}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method getProvider()Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_14

    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_1d

    :cond_14
    new-instance v0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider14;-><init>(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method public removeCallback(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_16
    return-void
.end method

.method public setProvider(Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lcom/miui/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-void
.end method
