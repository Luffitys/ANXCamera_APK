.class public Landroid/view/ScrollCaptureTargetResolver;
.super Ljava/lang/Object;
.source "ScrollCaptureTargetResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureTargetResolver$SingletonConsumer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ScrollCaptureTargetRes"


# instance fields
.field private mDeadlineMillis:J

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPendingBoundsRequests:I

.field private mResult:Landroid/view/ScrollCaptureTarget;

.field private mStarted:Z

.field private final mTargets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLimitMillis:J

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mWhenComplete:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/ScrollCaptureTargetResolver$1;

    invoke-direct {v0, p0}, Landroid/view/ScrollCaptureTargetResolver$1;-><init>(Landroid/view/ScrollCaptureTargetResolver;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/view/ScrollCaptureTargetResolver;->mTargets:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureTargetResolver;->supplyResult(Landroid/view/ScrollCaptureTarget;)V

    return-void
.end method

.method private static area(Landroid/graphics/Rect;)I
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static chooseTarget(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)Landroid/view/ScrollCaptureTarget;
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chooseTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollCaptureTargetRes"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_38

    if-nez p1, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chooseTarget: (both null) return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_38
    if-eqz p0, :cond_125

    if-nez p1, :cond_3e

    goto/16 :goto_125

    :cond_3e
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ScrollCaptureTargetResolver;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ScrollCaptureTargetResolver;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v2, :cond_e0

    if-eqz v3, :cond_54

    goto/16 :goto_e0

    :cond_54
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v4

    invoke-static {v0}, Landroid/view/ScrollCaptureTargetResolver;->hasIncludeHint(Landroid/view/View;)Z

    move-result v5

    invoke-static {v4}, Landroid/view/ScrollCaptureTargetResolver;->hasIncludeHint(Landroid/view/View;)Z

    move-result v6

    if-eq v5, v6, :cond_80

    if-eqz v5, :cond_6a

    move-object v7, p0

    goto :goto_6b

    :cond_6a
    move-object v7, p1

    :goto_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chooseTarget: (has hint=INCLUDE) return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_80
    invoke-static {v0, v4}, Landroid/view/ScrollCaptureTargetResolver;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chooseTarget: (b is descendant of a) return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_9b
    invoke-static {v4, v0}, Landroid/view/ScrollCaptureTargetResolver;->isDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chooseTarget: (a is descendant of b) return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_b6
    invoke-virtual {p0}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ScrollCaptureTargetResolver;->area(Landroid/graphics/Rect;)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ScrollCaptureTargetResolver;->area(Landroid/graphics/Rect;)I

    move-result v8

    if-lt v7, v8, :cond_ca

    move-object v9, p0

    goto :goto_cb

    :cond_ca
    move-object v9, p1

    :goto_cb
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chooseTarget: return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_e0
    :goto_e0
    if-eqz v2, :cond_f9

    if-eqz v3, :cond_f9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chooseTarget: (both have empty or null bounds) return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_f9
    if-eqz v2, :cond_110

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseTarget: (a has empty or null bounds) return "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseTarget: (b has empty or null bounds) return "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_125
    :goto_125
    if-nez p0, :cond_129

    move-object v0, p1

    goto :goto_12a

    :cond_129
    move-object v0, p0

    :goto_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chooseTarget: (other is null) return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static findRelation(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_c
    if-nez v1, :cond_12

    if-eqz v2, :cond_11

    goto :goto_12

    :cond_11
    return v0

    :cond_12
    :goto_12
    if-ne v1, v2, :cond_15

    return v0

    :cond_15
    if-ne v1, p1, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    if-ne v2, p0, :cond_1d

    const/4 v0, -0x1

    return v0

    :cond_1d
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :cond_23
    if-eqz v2, :cond_2a

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_c

    :cond_2a
    goto :goto_c
.end method

.method private static hasIncludeHint(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getScrollCaptureHint()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isDescendant(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_8
    if-eq v1, p0, :cond_11

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_8

    :cond_11
    if-ne v1, p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private static nullOrEmpty(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private onScrollBoundsProvided(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTargetResolver;->checkThread()V

    iget-boolean v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mFinished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    nop

    :goto_27
    move v0, v1

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getContainingView()Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Landroid/view/ScrollCaptureTargetResolver;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->updatePositionInWindow()V

    invoke-virtual {p1, p2}, Landroid/view/ScrollCaptureTarget;->setScrollBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/view/ScrollCaptureTargetResolver;->supplyResult(Landroid/view/ScrollCaptureTarget;)V

    :cond_41
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPendingBoundsRequests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeadlineMillis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemClock.elapsedRealtime(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mFinished:Z

    if-nez v2, :cond_b1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We think we\'re NOT done yet and will check back at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_b1
    return-void
.end method

.method private queryTarget(Landroid/view/ScrollCaptureTarget;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTargetResolver;->checkThread()V

    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    new-instance v1, Landroid/view/ScrollCaptureTargetResolver$SingletonConsumer;

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;

    invoke-direct {v2, p0, p1}, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$J9O9ShCuuF3gTNBsMj2uaRnxEtQ;-><init>(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;)V

    invoke-direct {v1, v2}, Landroid/view/ScrollCaptureTargetResolver$SingletonConsumer;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private run(JLjava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTargetResolver;->checkThread()V

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mTargets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mTargets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ScrollCaptureTarget;

    invoke-direct {p0, v1}, Landroid/view/ScrollCaptureTargetResolver;->queryTarget(Landroid/view/ScrollCaptureTarget;)V

    goto :goto_11

    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeLimitMillis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    iget-object v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private supplyResult(Landroid/view/ScrollCaptureTarget;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ScrollCaptureTargetResolver;->checkThread()V

    iget-boolean v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mFinished:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mResult:Landroid/view/ScrollCaptureTarget;

    invoke-static {v0, p1}, Landroid/view/ScrollCaptureTargetResolver;->chooseTarget(Landroid/view/ScrollCaptureTarget;Landroid/view/ScrollCaptureTarget;)Landroid/view/ScrollCaptureTarget;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mResult:Landroid/view/ScrollCaptureTarget;

    iget v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/view/ScrollCaptureTargetResolver;->mDeadlineMillis:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v1

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v2

    :goto_24
    if-eqz v0, :cond_48

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "We think we\'re done, or timed out"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mPendingBoundsRequests:I

    iget-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mWhenComplete:Ljava/util/function/Consumer;

    iget-object v3, p0, Landroid/view/ScrollCaptureTargetResolver;->mResult:Landroid/view/ScrollCaptureTarget;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iput-boolean v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mFinished:Z

    iget-object v2, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_45

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mWhenComplete:Ljava/util/function/Consumer;

    goto :goto_48

    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method checkThread()V
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called from wrong thread! ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$queryTarget$2$ScrollCaptureTargetResolver(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ScrollCaptureTargetResolver;->onScrollBoundsProvided(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    return-void
.end method

.method public synthetic lambda$queryTarget$3$ScrollCaptureTargetResolver(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$gdmLlyNUqtKoShKx1WC6kEG8ZHs;-><init>(Landroid/view/ScrollCaptureTargetResolver;Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$start$0$ScrollCaptureTargetResolver()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ScrollCaptureTargetResolver;->supplyResult(Landroid/view/ScrollCaptureTarget;)V

    return-void
.end method

.method public synthetic lambda$start$1$ScrollCaptureTargetResolver(JLjava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ScrollCaptureTargetResolver;->run(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public start(Landroid/os/Handler;JLjava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mStarted:Z

    if-nez v1, :cond_3c

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_34

    iput-object p1, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    iput-wide p2, p0, Landroid/view/ScrollCaptureTargetResolver;->mTimeLimitMillis:J

    iput-object p4, p0, Landroid/view/ScrollCaptureTargetResolver;->mWhenComplete:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mTargets:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$EzFCJjUw-13D2CDqIgLoFuJ5qdY;

    invoke-direct {v2, p0}, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$EzFCJjUw-13D2CDqIgLoFuJ5qdY;-><init>(Landroid/view/ScrollCaptureTargetResolver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mStarted:Z

    new-instance v1, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/view/-$$Lambda$ScrollCaptureTargetResolver$yVQQiWyGWiKm9-d01s2pn78mS0k;-><init>(Landroid/view/ScrollCaptureTargetResolver;JLjava/util/function/Consumer;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Time limit must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already started!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public waitForResult()Landroid/view/ScrollCaptureTarget;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget-boolean v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mFinished:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/view/ScrollCaptureTargetResolver;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    iget-object v0, p0, Landroid/view/ScrollCaptureTargetResolver;->mResult:Landroid/view/ScrollCaptureTarget;

    return-object v0

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
