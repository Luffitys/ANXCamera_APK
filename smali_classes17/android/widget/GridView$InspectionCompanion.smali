.class public final Landroid/widget/GridView$InspectionCompanion;
.super Ljava/lang/Object;
.source "GridView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumnWidthId:I

.field private mGravityId:I

.field private mHorizontalSpacingId:I

.field private mNumColumnsId:I

.field private mPropertiesMapped:Z

.field private mStretchModeId:I

.field private mVerticalSpacingId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 7

    const-string v0, "columnWidth"

    const v1, 0x1010117

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mColumnWidthId:I

    const-string v1, "gravity"

    const v2, 0x10100af

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mGravityId:I

    const-string v1, "horizontalSpacing"

    const v2, 0x1010114

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mHorizontalSpacingId:I

    const-string/jumbo v1, "numColumns"

    const v2, 0x1010118

    invoke-interface {p1, v1, v2}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridView$InspectionCompanion;->mNumColumnsId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string/jumbo v3, "spacingWidth"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x3

    const-string/jumbo v3, "spacingWidthUniform"

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v0, v1}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v3, "stretchMode"

    const v4, 0x1010116

    invoke-interface {p1, v3, v4, v0}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mStretchModeId:I

    const-string/jumbo v0, "verticalSpacing"

    const v3, 0x1010115

    invoke-interface {p1, v0, v3}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView$InspectionCompanion;->mVerticalSpacingId:I

    iput-boolean v2, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/GridView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/GridView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_3b

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mColumnWidthId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mHorizontalSpacingId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mNumColumnsId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mStretchModeId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getStretchMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridView$InspectionCompanion;->mVerticalSpacingId:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_3b
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridView$InspectionCompanion;->readProperties(Landroid/widget/GridView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
