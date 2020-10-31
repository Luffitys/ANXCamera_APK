.class Lcom/android/internal/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I
    .registers 5

    iget v0, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    check-cast p2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$1;->compare(Lcom/android/internal/widget/ViewPager$ItemInfo;Lcom/android/internal/widget/ViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
