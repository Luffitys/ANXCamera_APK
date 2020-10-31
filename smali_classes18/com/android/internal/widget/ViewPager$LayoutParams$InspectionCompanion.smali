.class public final Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "ViewPager$LayoutParams$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Lcom/android/internal/widget/ViewPager$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayout_gravityId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "layout_gravity"

    const v1, 0x10100b3

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->mLayout_gravityId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Lcom/android/internal/widget/ViewPager$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->mLayout_gravityId:I

    iget v1, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    return-void

    :cond_c
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$LayoutParams$InspectionCompanion;->readProperties(Lcom/android/internal/widget/ViewPager$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
