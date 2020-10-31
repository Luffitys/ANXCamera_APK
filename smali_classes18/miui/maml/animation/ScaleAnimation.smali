.class public Lmiui/maml/animation/ScaleAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 6

    const-string v0, "value"

    const-string v1, "x"

    const-string v2, "y"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Item"

    invoke-direct {p0, p1, v1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    return-void
.end method

.method private getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    if-nez p1, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_12

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    :goto_12
    return-wide v0
.end method

.method private getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    if-nez p1, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_12

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x2

    :goto_e
    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    :goto_12
    return-wide v0
.end method


# virtual methods
.method protected getDelayValue(I)D
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_9

    :cond_6
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    goto :goto_b

    :cond_9
    :goto_9
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    :goto_b
    return-wide v0
.end method

.method public final getScaleX()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleY()D
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 13

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v3

    sub-double/2addr v3, v0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v3, v0

    invoke-virtual {p0, v2, v3, v4}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v5

    sub-double/2addr v5, v2

    float-to-double v7, p3

    mul-double/2addr v5, v7

    add-double/2addr v5, v2

    invoke-virtual {p0, v4, v5, v6}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    return-void
.end method
