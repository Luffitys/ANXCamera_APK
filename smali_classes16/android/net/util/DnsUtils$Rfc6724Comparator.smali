.class public Landroid/net/util/DnsUtils$Rfc6724Comparator;
.super Ljava/lang/Object;
.source "DnsUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/DnsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rfc6724Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/util/DnsUtils$SortableAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/util/DnsUtils$SortableAddress;Landroid/net/util/DnsUtils$SortableAddress;)I
    .registers 5

    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    if-eq v0, v1, :cond_c

    iget v0, p2, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    iget v1, p1, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    sub-int/2addr v0, v1

    return v0

    :cond_c
    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    if-eq v0, v1, :cond_18

    iget v0, p2, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    iget v1, p1, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    sub-int/2addr v0, v1

    return v0

    :cond_18
    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    if-eq v0, v1, :cond_24

    iget v0, p2, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    iget v1, p1, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    sub-int/2addr v0, v1

    return v0

    :cond_24
    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    if-eq v0, v1, :cond_30

    iget v0, p2, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    iget v1, p1, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    sub-int/2addr v0, v1

    return v0

    :cond_30
    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    if-eq v0, v1, :cond_3c

    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    sub-int/2addr v0, v1

    return v0

    :cond_3c
    iget v0, p1, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    iget v1, p2, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    if-eq v0, v1, :cond_48

    iget v0, p2, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    iget v1, p1, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    sub-int/2addr v0, v1

    return v0

    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/net/util/DnsUtils$SortableAddress;

    check-cast p2, Landroid/net/util/DnsUtils$SortableAddress;

    invoke-virtual {p0, p1, p2}, Landroid/net/util/DnsUtils$Rfc6724Comparator;->compare(Landroid/net/util/DnsUtils$SortableAddress;Landroid/net/util/DnsUtils$SortableAddress;)I

    move-result p1

    return p1
.end method
