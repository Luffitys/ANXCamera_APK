.class public Lmiui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/animation/BaseAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationItem"
.end annotation


# instance fields
.field private mAni:Lmiui/maml/animation/BaseAnimation;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lmiui/maml/data/Expression;

.field public mExps:[Lmiui/maml/data/Expression;

.field public mInitTime:J

.field public mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

.field private mName:Ljava/lang/String;

.field private mNeedEvaluate:Z

.field public mTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-direct {p0, p2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 12

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    iget-object v1, v1, Lmiui/maml/animation/BaseAnimation;->mScreenElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lmiui/maml/ScreenElementRoot;->addAnimationItem(Ljava/lang/String;Lmiui/maml/animation/BaseAnimation$AnimationItem;)V

    :cond_21
    invoke-static {v0, p1}, Lmiui/maml/animation/interpolater/InterpolatorHelper;->create(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/animation/interpolater/InterpolatorHelper;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    const-string v1, "time"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    :try_start_33
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v2

    :cond_3b
    :goto_3b
    const-string v2, "dtime"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    array-length v3, v2

    new-array v3, v3, [D

    iput-object v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    array-length v3, v2

    new-array v3, v3, [Lmiui/maml/data/Expression;

    iput-object v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    :goto_5c
    if-ge v5, v4, :cond_86

    aget-object v6, v2, v5

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    if-nez v7, :cond_7c

    if-nez v3, :cond_7c

    const-string v8, "value"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7c

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    :cond_7c
    iget-object v8, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    add-int/lit8 v9, v3, 0x1

    aput-object v7, v8, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v9

    goto :goto_5c

    :cond_86
    iget-wide v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v3, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    return-void
.end method

.method private reevaluate()V
    .registers 10

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    iget-object v5, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    add-int/lit8 v6, v1, 0x1

    if-nez v4, :cond_15

    const-wide/16 v7, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    :goto_19
    aput-wide v7, v5, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_8

    :cond_1f
    return-void
.end method


# virtual methods
.method public attrExists(I)Z
    .registers 5

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lmiui/maml/data/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    array-length v2, v0

    if-lt p1, v2, :cond_b

    goto :goto_11

    :cond_b
    aget-object v0, v0, p1

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    :cond_11
    :goto_11
    return v1
.end method

.method public changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lmiui/maml/animation/interpolater/InterpolatorHelper;

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/BaseAnimation;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3, p2}, Lmiui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lmiui/maml/animation/interpolater/InterpolatorHelper;

    return-void
.end method

.method public get(I)D
    .registers 4

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    if-eqz v0, :cond_19

    if-ltz p1, :cond_19

    array-length v0, v0

    if-lt p1, v0, :cond_a

    goto :goto_19

    :cond_a
    iget-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    :cond_14
    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    aget-wide v0, v0, p1

    return-wide v0

    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to get number in AnimationItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    iget-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    iput-wide v0, p0, Lmiui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    return-void
.end method
