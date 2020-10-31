.class public final Landroid/widget/GridLayout$InspectionCompanion;
.super Ljava/lang/Object;
.source "GridLayout$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/GridLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlignmentModeId:I

.field private mColumnCountId:I

.field private mColumnOrderPreservedId:I

.field private mOrientationId:I

.field private mPropertiesMapped:Z

.field private mRowCountId:I

.field private mRowOrderPreservedId:I

.field private mUseDefaultMarginsId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 8

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const-string v2, "alignBounds"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const-string v3, "alignMargins"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v3, v0}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string v4, "alignmentMode"

    const v5, 0x101037a

    invoke-interface {p1, v4, v5, v3}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    const-string v3, "columnCount"

    const v4, 0x1010377

    invoke-interface {p1, v3, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    const-string v3, "columnOrderPreserved"

    const v4, 0x1010378

    invoke-interface {p1, v3, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const-string v4, "horizontal"

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "vertical"

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;

    invoke-direct {v1, v3}, Landroid/widget/-$$Lambda$QY3N4tzLteuFdjRnyJFCbR1ajSI;-><init>(Landroid/util/SparseArray;)V

    const-string/jumbo v4, "orientation"

    const v5, 0x10100c4

    invoke-interface {p1, v4, v5, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    const-string/jumbo v1, "rowCount"

    const v4, 0x1010375

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    const-string/jumbo v1, "rowOrderPreserved"

    const v4, 0x1010376

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    const-string/jumbo v1, "useDefaultMargins"

    const v4, 0x1010379

    invoke-interface {p1, v1, v4}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    iput-boolean v2, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_44

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mAlignmentModeId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getAlignmentMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mColumnOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isColumnOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mOrientationId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getOrientation()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowCountId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mRowOrderPreservedId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->isRowOrderPreserved()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/GridLayout$InspectionCompanion;->mUseDefaultMarginsId:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getUseDefaultMargins()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    return-void

    :cond_44
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/GridLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/GridLayout$InspectionCompanion;->readProperties(Landroid/widget/GridLayout;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
