.class public final Landroid/widget/CheckedTextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "CheckedTextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/CheckedTextView;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckMarkId:I

.field private mCheckMarkTintBlendModeId:I

.field private mCheckMarkTintId:I

.field private mCheckMarkTintModeId:I

.field private mCheckedId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "checkMark"

    const v1, 0x1010108

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkId:I

    const-string v0, "checkMarkTint"

    const v1, 0x10104a7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintId:I

    const-string v0, "checkMarkTintBlendMode"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintBlendModeId:I

    const-string v0, "checkMarkTintMode"

    const v1, 0x10104a8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintModeId:I

    const-string v0, "checked"

    const v1, 0x1010106

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckedId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/CheckedTextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_32

    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckMarkTintModeId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/CheckedTextView$InspectionCompanion;->mCheckedId:I

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    return-void

    :cond_32
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/CheckedTextView$InspectionCompanion;->readProperties(Landroid/widget/CheckedTextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
