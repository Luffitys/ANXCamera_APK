.class Landroidx/customview/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$CollectionAdapter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroidx/collection/SparseArrayCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper$2;->get(Landroidx/collection/SparseArrayCompat;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public size(Landroidx/collection/SparseArrayCompat;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper$2;->size(Landroidx/collection/SparseArrayCompat;)I

    move-result p0

    return p0
.end method
