.class public final Landroid/widget/TableRow$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;
.source "TableRow$LayoutParams$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TableRow$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayout_columnId:I

.field private mLayout_spanId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "layout_column"

    const v1, 0x101014c

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mLayout_columnId:I

    const-string v0, "layout_span"

    const v1, 0x101014d

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mLayout_spanId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/TableRow$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mLayout_columnId:I

    iget v1, p1, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->mLayout_spanId:I

    iget v1, p1, Landroid/widget/TableRow$LayoutParams;->span:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_13
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow$LayoutParams$InspectionCompanion;->readProperties(Landroid/widget/TableRow$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
