.class Lmiui/view/ViewPager$1;
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
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiui/view/ViewPager$ItemInfo;

    check-cast p2, Lmiui/view/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lmiui/view/ViewPager$1;->compare(Lmiui/view/ViewPager$ItemInfo;Lmiui/view/ViewPager$ItemInfo;)I

    move-result p0

    return p0
.end method

.method public compare(Lmiui/view/ViewPager$ItemInfo;Lmiui/view/ViewPager$ItemInfo;)I
    .locals 0

    iget p0, p1, Lmiui/view/ViewPager$ItemInfo;->position:I

    iget p1, p2, Lmiui/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr p0, p1

    return p0
.end method
