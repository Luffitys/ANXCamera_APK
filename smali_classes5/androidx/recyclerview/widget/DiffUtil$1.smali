.class final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I
    .locals 1

    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v0, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Snake;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;->compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I

    move-result p0

    return p0
.end method
