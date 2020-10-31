.class public final Landroid/widget/RelativeLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "RelativeLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mGravityId:I

.field private mIgnoreGravityId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "gravity"

    const v1, 0x10100af

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mGravityId:I

    const-string v0, "ignoreGravity"

    const v1, 0x10101ff

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mIgnoreGravityId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/RelativeLayout;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/RelativeLayout$InspectionCompanion;->mIgnoreGravityId:I

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getIgnoreGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_17
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$InspectionCompanion;->readProperties(Landroid/widget/RelativeLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
