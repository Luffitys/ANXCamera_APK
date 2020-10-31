.class public final Landroid/widget/ViewAnimator$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewAnimator$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ViewAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnimateFirstViewId:I

.field private mInAnimationId:I

.field private mOutAnimationId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "animateFirstView"

    const v1, 0x10102d5

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mAnimateFirstViewId:I

    const-string v0, "inAnimation"

    const v1, 0x1010177

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mInAnimationId:I

    const-string/jumbo v0, "outAnimation"

    const v1, 0x1010178

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mOutAnimationId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/ViewAnimator;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mAnimateFirstViewId:I

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getAnimateFirstView()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mInAnimationId:I

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ViewAnimator$InspectionCompanion;->mOutAnimationId:I

    invoke-virtual {p1}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_20
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/ViewAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ViewAnimator$InspectionCompanion;->readProperties(Landroid/widget/ViewAnimator;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
