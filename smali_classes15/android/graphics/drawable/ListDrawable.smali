.class public Landroid/graphics/drawable/ListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "ListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ListDrawable$ListState;
    }
.end annotation


# instance fields
.field private final mListState:Landroid/graphics/drawable/ListDrawable$ListState;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    new-instance v0, Landroid/graphics/drawable/ListDrawable$ListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ListDrawable$ListState;-><init>(Landroid/graphics/drawable/ListDrawable$ListState;Landroid/graphics/drawable/ListDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mListState:Landroid/graphics/drawable/ListDrawable$ListState;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    if-eqz p2, :cond_15

    iput-object p2, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->enableFade(Z)V

    :cond_15
    return-void
.end method


# virtual methods
.method public addDrawable(I)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/graphics/drawable/ListDrawable;->mListState:Landroid/graphics/drawable/ListDrawable$ListState;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ListDrawable$ListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    :cond_d
    return-void
.end method

.method public enableFade(Z)V
    .registers 4

    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setEnterFadeDuration(I)V

    iget-object v0, p0, Landroid/graphics/drawable/ListDrawable;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setExitFadeDuration(I)V

    goto :goto_21

    :cond_1a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setEnterFadeDuration(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->setExitFadeDuration(I)V

    :goto_21
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 4

    move v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    return v1

    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onLevelChange(I)Z

    move-result v1

    return v1
.end method
