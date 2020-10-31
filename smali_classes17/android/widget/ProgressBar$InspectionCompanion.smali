.class public final Landroid/widget/ProgressBar$InspectionCompanion;
.super Ljava/lang/Object;
.source "ProgressBar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ProgressBar;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndeterminateDrawableId:I

.field private mIndeterminateId:I

.field private mIndeterminateTintBlendModeId:I

.field private mIndeterminateTintId:I

.field private mIndeterminateTintModeId:I

.field private mInterpolatorId:I

.field private mMaxId:I

.field private mMinId:I

.field private mMirrorForRtlId:I

.field private mProgressBackgroundTintBlendModeId:I

.field private mProgressBackgroundTintId:I

.field private mProgressBackgroundTintModeId:I

.field private mProgressDrawableId:I

.field private mProgressId:I

.field private mProgressTintBlendModeId:I

.field private mProgressTintId:I

.field private mProgressTintModeId:I

.field private mPropertiesMapped:Z

.field private mSecondaryProgressId:I

.field private mSecondaryProgressTintBlendModeId:I

.field private mSecondaryProgressTintId:I

.field private mSecondaryProgressTintModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "indeterminate"

    const v1, 0x1010139

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateId:I

    const-string v0, "indeterminateDrawable"

    const v1, 0x101013b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateDrawableId:I

    const-string v0, "indeterminateTint"

    const v1, 0x1010469

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintId:I

    const-string v0, "indeterminateTintBlendMode"

    const/16 v1, 0x17

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintBlendModeId:I

    const-string v0, "indeterminateTintMode"

    const v1, 0x101046a

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintModeId:I

    const-string v0, "interpolator"

    const v1, 0x1010141

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mInterpolatorId:I

    const-string/jumbo v0, "max"

    const v1, 0x1010136

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMaxId:I

    const-string/jumbo v0, "min"

    const v1, 0x1010539

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMinId:I

    const-string/jumbo v0, "mirrorForRtl"

    const v1, 0x10103ce

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMirrorForRtlId:I

    const-string/jumbo v0, "progress"

    const v1, 0x1010137

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressId:I

    const-string/jumbo v0, "progressBackgroundTint"

    const v1, 0x1010465

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintId:I

    const-string/jumbo v0, "progressBackgroundTintBlendMode"

    const/16 v1, 0x13

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintBlendModeId:I

    const-string/jumbo v0, "progressBackgroundTintMode"

    const v1, 0x1010466

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintModeId:I

    const-string/jumbo v0, "progressDrawable"

    const v1, 0x101013c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressDrawableId:I

    const-string/jumbo v0, "progressTint"

    const v1, 0x1010463

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintId:I

    const-string/jumbo v0, "progressTintBlendMode"

    const/16 v1, 0x11

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintBlendModeId:I

    const-string/jumbo v0, "progressTintMode"

    const v1, 0x1010464

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintModeId:I

    const-string/jumbo v0, "secondaryProgress"

    const v1, 0x1010138

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressId:I

    const-string/jumbo v0, "secondaryProgressTint"

    const v1, 0x1010467

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintId:I

    const-string/jumbo v0, "secondaryProgressTintBlendMode"

    const/16 v1, 0x15

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintBlendModeId:I

    const-string/jumbo v0, "secondaryProgressTintMode"

    const v1, 0x1010468

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintModeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/ProgressBar;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_c2

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateDrawableId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mIndeterminateTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mInterpolatorId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMaxId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMinId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mMirrorForRtlId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMirrorForRtl()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressBackgroundTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressDrawableId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mProgressTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ProgressBar$InspectionCompanion;->mSecondaryProgressTintModeId:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_c2
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ProgressBar$InspectionCompanion;->readProperties(Landroid/widget/ProgressBar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
