.class public final Landroid/widget/AbsSeekBar$InspectionCompanion;
.super Ljava/lang/Object;
.source "AbsSeekBar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AbsSeekBar;",
        ">;"
    }
.end annotation


# instance fields
.field private mPropertiesMapped:Z

.field private mThumbTintId:I

.field private mThumbTintModeId:I

.field private mTickMarkTintBlendModeId:I

.field private mTickMarkTintId:I

.field private mTickMarkTintModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string/jumbo v0, "thumbTint"

    const v1, 0x1010471

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintId:I

    const-string/jumbo v0, "thumbTintMode"

    const v1, 0x1010472

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintModeId:I

    const-string/jumbo v0, "tickMarkTint"

    const v1, 0x101050b

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintId:I

    const-string/jumbo v0, "tickMarkTintBlendMode"

    const/4 v1, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintBlendModeId:I

    const-string/jumbo v0, "tickMarkTintMode"

    const v1, 0x101050c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintModeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/AbsSeekBar;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mThumbTintModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AbsSeekBar$InspectionCompanion;->mTickMarkTintModeId:I

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_32
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/AbsSeekBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSeekBar$InspectionCompanion;->readProperties(Landroid/widget/AbsSeekBar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
