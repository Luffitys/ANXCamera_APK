.class public final Landroid/widget/ToggleButton$InspectionCompanion;
.super Ljava/lang/Object;
.source "ToggleButton$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/ToggleButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisabledAlphaId:I

.field private mPropertiesMapped:Z

.field private mTextOffId:I

.field private mTextOnId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "disabledAlpha"

    const v1, 0x1010033

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mDisabledAlphaId:I

    const-string/jumbo v0, "textOff"

    const v1, 0x1010125

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOffId:I

    const-string/jumbo v0, "textOn"

    const v1, 0x1010124

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOnId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/ToggleButton;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_20

    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mDisabledAlphaId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getDisabledAlpha()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOffId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/ToggleButton$InspectionCompanion;->mTextOnId:I

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

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

    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ToggleButton$InspectionCompanion;->readProperties(Landroid/widget/ToggleButton;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
