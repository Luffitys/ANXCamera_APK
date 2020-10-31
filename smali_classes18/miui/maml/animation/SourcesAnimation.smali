.class public Lmiui/maml/animation/SourcesAnimation;
.super Lmiui/maml/animation/PositionAnimation;
.source "SourcesAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/animation/SourcesAnimation$Source;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 4

    const-string v0, "Source"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;
    .registers 4

    new-instance v0, Lmiui/maml/animation/SourcesAnimation$Source;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/SourcesAnimation$Source;-><init>(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_d

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    invoke-virtual {p0, v0, v2, v3}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    return-void

    :cond_d
    invoke-virtual {p2, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    invoke-virtual {p2, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/maml/animation/SourcesAnimation;->setCurValue(ID)V

    move-object v0, p2

    check-cast v0, Lmiui/maml/animation/SourcesAnimation$Source;

    iget-object v0, v0, Lmiui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    return-void
.end method
