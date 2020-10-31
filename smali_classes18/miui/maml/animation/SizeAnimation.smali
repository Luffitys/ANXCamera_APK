.class public Lmiui/maml/animation/SizeAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "SizeAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Size"

.field public static final TAG_NAME:Ljava/lang/String; = "SizeAnimation"


# instance fields
.field private mMaxH:D

.field private mMaxW:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 10

    const-string v0, "w"

    const-string v1, "h"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Size"

    invoke-direct {p0, p1, v1, v0, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    iget-object v0, p0, Lmiui/maml/animation/SizeAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation$AnimationItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_30

    invoke-virtual {v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    :cond_30
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v3

    iget-wide v5, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_41

    invoke-virtual {v1, v2}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    :cond_41
    goto :goto_13

    :cond_42
    return-void
.end method


# virtual methods
.method public final getHeight()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxHeight()D
    .registers 3

    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxH:D

    return-wide v0
.end method

.method public final getMaxWidth()D
    .registers 3

    iget-wide v0, p0, Lmiui/maml/animation/SizeAnimation;->mMaxW:D

    return-wide v0
.end method

.method public final getWidth()D
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/SizeAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
