.class public abstract Lmiui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field protected mAttrs:[Ljava/lang/String;

.field private mCurValues:[D

.field private mCurrentFrame:Lmiui/maml/data/IndexedVariable;

.field private mDelay:Lmiui/maml/data/Expression;

.field private mDisable:Z

.field private mEndTime:J

.field private mHasName:Z

.field private mInitPaused:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoop:Z

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field protected mScreenElement:Lmiui/maml/elements/ScreenElement;

.field private mStartTime:J

.field private mTag:Ljava/lang/String;

.field private mTriggers:Lmiui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0, p4}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 5

    const-string v0, "value"

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    iput-object p4, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    iput-object p3, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, p3

    new-array v0, v0, [D

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-direct {p0, p1, p2}, Lmiui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "value"

    invoke-direct {p0, p1, v0, v1, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method private getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-nez v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_9
    sub-long v0, p2, p4

    long-to-float v0, v0

    long-to-float v1, p6

    div-float/2addr v0, v1

    :goto_e
    if-eqz p1, :cond_1a

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {v1, v0}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result v0

    :cond_1a
    return v0
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 12

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    iget-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_37

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "current_frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    :cond_37
    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    const-string v2, "initPause"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    const-string v2, "loop"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    const-string v2, "tag"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string v5, "Item"

    aput-object v5, v3, v1

    new-instance v5, Lmiui/maml/animation/BaseAnimation$1;

    invoke-direct {v5, p0}, Lmiui/maml/animation/BaseAnimation$1;-><init>(Lmiui/maml/animation/BaseAnimation;)V

    invoke-static {p1, v3, v5}, Lmiui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_88

    const-string v1, "BaseAnimation"

    const-string v2, "empty items"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_88
    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v5, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    const-wide v7, 0xe8d4a51000L

    cmp-long v3, v5, v7

    if-ltz v3, :cond_a1

    move v4, v1

    :cond_a1
    iput-boolean v4, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_c1

    iget-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz v3, :cond_c1

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v1, v1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_d2

    :cond_c1
    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v1, v1, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_d2
    const-string v1, "Triggers"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_e3

    new-instance v2, Lmiui/maml/CommandTriggers;

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-direct {v2, v1, v3}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    :cond_e3
    return-void
.end method

.method private reevaluate()V
    .registers 10

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_37

    iget-object v4, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-object v5, v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_2a

    iget-object v5, v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_26

    const-wide/16 v5, 0x0

    :cond_26
    add-long/2addr v0, v5

    iput-wide v0, v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_33

    :cond_2a
    iget-wide v5, v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v5, v5, v0

    if-ltz v5, :cond_33

    iget-wide v0, v4, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_34

    :cond_33
    :goto_33
    nop

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_37
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    if-ltz v3, :cond_43

    move v3, v4

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    iput-boolean v3, p0, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-le v2, v4, :cond_59

    if-eqz v3, :cond_59

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v3, v3, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v3, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_5b

    :cond_59
    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_5b
    return-void
.end method

.method private resetTime()V
    .registers 6

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    :cond_7
    iput-boolean v1, p0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation;->reevaluate()V

    iget-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    invoke-direct {p0, v1, v2}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    iget-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    invoke-direct {p0, v1, v2}, Lmiui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    iget-wide v3, p0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method private transToAnimTime(J)J
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    goto :goto_e

    :cond_d
    return-wide p1

    :cond_e
    :goto_e
    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    return-wide v0
.end method


# virtual methods
.method public finish()V
    .registers 7

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->finish()V

    :cond_7
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    array-length v1, v1

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_2d

    iget-object v3, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2d
    return-void
.end method

.method public getAttrs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurValue(I)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method protected getDefaultValue()D
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/BaseAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    goto :goto_e

    :cond_c
    const-wide/16 v1, 0x0

    :goto_e
    return-wide v1
.end method

.method protected getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .registers 3

    if-ltz p1, :cond_14

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    return-object v0

    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected final getVariables()Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->init()V

    :cond_7
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .registers 4

    new-instance v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 15

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/maml/animation/BaseAnimation;->getDefaultValue()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_26

    if-nez p1, :cond_13

    move-wide v4, v0

    goto :goto_17

    :cond_13
    invoke-virtual {p1, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    :goto_17
    iget-object v6, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p2, v3}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v7

    sub-double/2addr v7, v4

    float-to-double v9, p3

    mul-double/2addr v7, v9

    add-double/2addr v7, v4

    aput-wide v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_26
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->pause()V

    :cond_7
    return-void
.end method

.method public pauseAnim(J)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iput-wide p1, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    :cond_e
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 23

    move-object v0, p0

    iget-boolean v1, v0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    move-wide v1, p1

    iput-wide v1, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    const-wide/16 v6, -0x1

    if-gez v5, :cond_18

    cmp-long v5, p3, v6

    if-nez v5, :cond_16

    goto :goto_18

    :cond_16
    move-wide v8, v3

    goto :goto_1a

    :cond_18
    :goto_18
    move-wide/from16 v8, p3

    :goto_1a
    iput-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iput-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    cmp-long v5, p5, v3

    if-gez v5, :cond_29

    cmp-long v5, p5, v6

    if-nez v5, :cond_27

    goto :goto_29

    :cond_27
    move-wide v8, v3

    goto :goto_2b

    :cond_29
    :goto_29
    move-wide/from16 v8, p5

    :goto_2b
    iput-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    iput-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mAnimEndTime:J

    move/from16 v5, p7

    iput-boolean v5, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    move/from16 v10, p8

    iput-boolean v10, v0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    iget-wide v11, v0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    cmp-long v6, v11, v6

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_4a

    cmp-long v6, v11, v8

    if-ltz v6, :cond_48

    cmp-long v6, v8, v3

    if-ltz v6, :cond_48

    goto :goto_4a

    :cond_48
    move v6, v13

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v6, v7

    :goto_4b
    iput-boolean v6, v0, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    iget-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mStartTime:J

    iget-wide v11, v0, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    cmp-long v6, v8, v11

    if-nez v6, :cond_57

    iput-boolean v13, v0, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    :cond_57
    iget-boolean v6, v0, Lmiui/maml/animation/BaseAnimation;->mIsDelay:Z

    if-eqz v6, :cond_6a

    iget-object v6, v0, Lmiui/maml/animation/BaseAnimation;->mDelay:Lmiui/maml/data/Expression;

    if-eqz v6, :cond_6a

    iget-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    long-to-double v8, v8

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v11

    add-double/2addr v8, v11

    double-to-long v8, v8

    iput-wide v8, v0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_6a
    iput-boolean v7, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    iput-boolean v13, v0, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    iput-boolean v13, v0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iput-boolean v7, v0, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    iput-wide v3, v0, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method public reset(J)V
    .registers 13

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v9, v0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v9, :cond_16

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p0, v0}, Lmiui/maml/animation/BaseAnimation;->getDelayValue(I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mInitPaused:Z

    if-eqz v0, :cond_26

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    goto :goto_31

    :cond_26
    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v8}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    :goto_31
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_3c
    const-string v0, "init"

    invoke-virtual {p0, v0}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/maml/CommandTriggers;->resume()V

    :cond_7
    return-void
.end method

.method public resumeAnim(J)V
    .registers 7

    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_16
    return-void
.end method

.method public setCurValue(ID)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation;->mCurValues:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public setDisable(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    return-void
.end method

.method public final tick(J)V
    .registers 25

    move-object/from16 v8, p0

    iget-boolean v0, v8, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_eb

    iget-boolean v0, v8, Lmiui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_c

    goto/16 :goto_eb

    :cond_c
    iget-wide v0, v8, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_26

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    iput-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    const-wide/16 v0, 0x0

    goto :goto_26

    :cond_20
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v2}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_26
    :goto_26
    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-nez v2, :cond_3a

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v2, :cond_3d

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v2, :cond_3d

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v2, :cond_3d

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-eqz v2, :cond_3d

    :cond_3a
    invoke-direct/range {p0 .. p0}, Lmiui/maml/animation/BaseAnimation;->resetTime()V

    :cond_3d
    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4a

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-nez v2, :cond_69

    :cond_4a
    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v2, :cond_69

    iput-boolean v3, v8, Lmiui/maml/animation/BaseAnimation;->mIsPaused:Z

    iget-wide v2, v8, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v4, v8, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Lmiui/maml/animation/BaseAnimation;->mPauseTime:J

    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_63

    iget-object v2, v8, Lmiui/maml/animation/BaseAnimation;->mCurrentFrame:Lmiui/maml/data/IndexedVariable;

    iget-wide v3, v8, Lmiui/maml/animation/BaseAnimation;->mEndTime:J

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_63
    const-string v2, "end"

    invoke-virtual {v8, v2}, Lmiui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void

    :cond_69
    iget-wide v4, v8, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    cmp-long v2, v0, v4

    const-wide/16 v6, 0x1

    if-ltz v2, :cond_7c

    add-long/2addr v4, v6

    rem-long v4, v0, v4

    sub-long v4, p1, v4

    iput-wide v4, v8, Lmiui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v0, v8, Lmiui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    iput-boolean v3, v8, Lmiui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    :cond_7c
    iget-boolean v2, v8, Lmiui/maml/animation/BaseAnimation;->mIsReverse:Z

    if-eqz v2, :cond_85

    iget-wide v2, v8, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v2, v0

    move-wide v9, v2

    goto :goto_89

    :cond_85
    iget-wide v2, v8, Lmiui/maml/animation/BaseAnimation;->mAnimStartTime:J

    add-long/2addr v2, v0

    move-wide v9, v2

    :goto_89
    iget-wide v0, v8, Lmiui/maml/animation/BaseAnimation;->mRealTimeRange:J

    add-long/2addr v0, v6

    rem-long v11, v9, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v8, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v2, 0x0

    move v14, v2

    :goto_98
    if-ge v14, v13, :cond_e5

    iget-object v2, v8, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v1, v15, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v1, v11, v1

    if-gez v1, :cond_df

    const-wide/16 v1, 0x0

    if-nez v14, :cond_b5

    iget-wide v3, v15, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-object v6, v0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    goto :goto_cc

    :cond_b5
    iget-object v3, v8, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v14, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v3, v15, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iget-wide v5, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    sub-long/2addr v3, v5

    iget-wide v1, v0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    move-object v6, v0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    :goto_cc
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v11

    move-wide/from16 v4, v16

    move-wide/from16 v20, v9

    move-object v9, v6

    move-wide/from16 v6, v18

    invoke-direct/range {v0 .. v7}, Lmiui/maml/animation/BaseAnimation;->getRatio(Lmiui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    move-result v0

    invoke-virtual {v8, v9, v15, v0}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_df
    move-wide/from16 v20, v9

    add-int/lit8 v14, v14, 0x1

    move-object v1, v15

    goto :goto_98

    :cond_e5
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0, v1, v2}, Lmiui/maml/animation/BaseAnimation;->onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_eb
    :goto_eb
    return-void
.end method
