.class public final Landroid/widget/Switch$InspectionCompanion;
.super Ljava/lang/Object;
.source "Switch$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/Switch;",
        ">;"
    }
.end annotation


# instance fields
.field private mPropertiesMapped:Z

.field private mShowTextId:I

.field private mSplitTrackId:I

.field private mSwitchMinWidthId:I

.field private mSwitchPaddingId:I

.field private mTextOffId:I

.field private mTextOnId:I

.field private mThumbId:I

.field private mThumbTextPaddingId:I

.field private mThumbTintBlendModeId:I

.field private mThumbTintId:I

.field private mThumbTintModeId:I

.field private mTrackId:I

.field private mTrackTintBlendModeId:I

.field private mTrackTintId:I

.field private mTrackTintModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string/jumbo v0, "showText"

    const v1, 0x10104ad

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mShowTextId:I

    const-string/jumbo v0, "splitTrack"

    const v1, 0x101044c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSplitTrackId:I

    const-string/jumbo v0, "switchMinWidth"

    const v1, 0x1010370

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchMinWidthId:I

    const-string/jumbo v0, "switchPadding"

    const v1, 0x1010371

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchPaddingId:I

    const-string/jumbo v0, "textOff"

    const v1, 0x1010125

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOffId:I

    const-string/jumbo v0, "textOn"

    const v1, 0x1010124

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOnId:I

    const-string/jumbo v0, "thumb"

    const v1, 0x1010142

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbId:I

    const-string/jumbo v0, "thumbTextPadding"

    const v1, 0x1010372

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTextPaddingId:I

    const-string/jumbo v0, "thumbTint"

    const v1, 0x1010471

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintId:I

    const-string/jumbo v0, "thumbTintBlendMode"

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintBlendModeId:I

    const-string/jumbo v0, "thumbTintMode"

    const v1, 0x1010472

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintModeId:I

    const-string/jumbo v0, "track"

    const v1, 0x101036f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackId:I

    const-string/jumbo v0, "trackTint"

    const v1, 0x10104d9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintId:I

    const-string/jumbo v0, "trackTintBlendMode"

    const/16 v1, 0xd

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintBlendModeId:I

    const-string/jumbo v0, "trackTintMode"

    const v1, 0x10104da

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintModeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/Switch;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/Switch$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_8c

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mShowTextId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getShowText()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSplitTrackId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSplitTrack()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchMinWidthId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSwitchMinWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mSwitchPaddingId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getSwitchPadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOffId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTextOnId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTextPaddingId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTextPadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mThumbTintModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/Switch$InspectionCompanion;->mTrackTintModeId:I

    invoke-virtual {p1}, Landroid/widget/Switch;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_8c
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p0, p1, p2}, Landroid/widget/Switch$InspectionCompanion;->readProperties(Landroid/widget/Switch;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
