.class public final Landroid/widget/AutoCompleteTextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "AutoCompleteTextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AutoCompleteTextView;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompletionHintId:I

.field private mCompletionThresholdId:I

.field private mDropDownHeightId:I

.field private mDropDownHorizontalOffsetId:I

.field private mDropDownVerticalOffsetId:I

.field private mDropDownWidthId:I

.field private mPopupBackgroundId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "completionHint"

    const v1, 0x1010172

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionHintId:I

    const-string v0, "completionThreshold"

    const v1, 0x1010174

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionThresholdId:I

    const-string v0, "dropDownHeight"

    const v1, 0x1010283

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHeightId:I

    const-string v0, "dropDownHorizontalOffset"

    const v1, 0x10102ac

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    const-string v0, "dropDownVerticalOffset"

    const v1, 0x10102ad

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownVerticalOffsetId:I

    const-string v0, "dropDownWidth"

    const v1, 0x1010262

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownWidthId:I

    const-string/jumbo v0, "popupBackground"

    const v1, 0x1010176

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPopupBackgroundId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/AutoCompleteTextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionHintId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompletionHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mCompletionThresholdId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHeightId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownHorizontalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownHorizontalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownVerticalOffsetId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mDropDownWidthId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->mPopupBackgroundId:I

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_44
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AutoCompleteTextView$InspectionCompanion;->readProperties(Landroid/widget/AutoCompleteTextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
