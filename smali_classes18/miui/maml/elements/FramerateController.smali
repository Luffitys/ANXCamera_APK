.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string v0, "loop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    const-string v0, "tag"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string v0, "delay"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    :try_start_31
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_40

    :catch_38
    move-exception v1

    const-string v2, "FramerateController"

    const-string v3, "invalid delay attribute"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    const-string v1, "ControlPoint"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_47
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_60

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v5, v3}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_60
    iget-object v2, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v2, v2, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    iget-boolean v5, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v5, :cond_7d

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x0

    :goto_7e
    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    return-void
.end method

.method private restart(J)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V

    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 11

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .registers 18

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_12

    return-wide v4

    :cond_12
    iget-object v6, v1, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_15
    iget-boolean v0, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v0, :cond_1b

    monitor-exit v6

    return-wide v4

    :cond_1b
    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_3a

    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v9

    if-ltz v0, :cond_3a

    iget-wide v11, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v0, v7, v11

    if-gez v0, :cond_3a

    iget-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v4, v7

    iput-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    iput-wide v2, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    monitor-exit v6

    return-wide v4

    :cond_3a
    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v9

    if-gez v0, :cond_44

    const-wide/16 v7, 0x0

    :cond_44
    iget-boolean v0, v1, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v0, :cond_50

    iget-wide v9, v1, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    rem-long v9, v7, v9

    goto :goto_51

    :cond_50
    move-wide v9, v7

    :goto_51
    const-wide/16 v11, 0x0

    iget-object v0, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :goto_5b
    if-ltz v0, :cond_9d

    iget-object v14, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v4, v9, v4

    if-ltz v4, :cond_92

    iget v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    iget-boolean v4, v1, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v4, :cond_80

    iget-object v4, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    if-ne v0, v4, :cond_80

    iput-boolean v13, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    :cond_80
    iput-wide v2, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    iget-boolean v4, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v4, :cond_8c

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_8e

    :cond_8c
    sub-long v4, v11, v9

    :goto_8e
    iput-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v6

    return-wide v4

    :cond_92
    iget-wide v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    move-wide v11, v4

    add-int/lit8 v0, v0, -0x1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_5b

    :cond_9d
    monitor-exit v6

    const-wide v4, 0x7fffffffffffffffL

    return-wide v4

    :catchall_a4
    move-exception v0

    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_15 .. :try_end_a6} :catchall_a4

    throw v0
.end method
