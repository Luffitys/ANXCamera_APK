.class Landroid/net/IpPrefix$1;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/IpPrefix;->lengthComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/IpPrefix;",
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
.method public compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I
    .registers 13

    invoke-virtual {p1}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_f
    invoke-virtual {p2}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    if-ge v0, v3, :cond_21

    return v1

    :cond_21
    if-ge v3, v0, :cond_24

    return v2

    :cond_24
    # getter for: Landroid/net/IpPrefix;->address:[B
    invoke-static {p1}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object v4

    # getter for: Landroid/net/IpPrefix;->address:[B
    invoke-static {p2}, Landroid/net/IpPrefix;->access$000(Landroid/net/IpPrefix;)[B

    move-result-object v5

    array-length v6, v4

    array-length v7, v5

    if-ge v6, v7, :cond_32

    array-length v6, v4

    goto :goto_33

    :cond_32
    array-length v6, v5

    :goto_33
    const/4 v7, 0x0

    :goto_34
    if-ge v7, v6, :cond_47

    aget-byte v8, v4, v7

    aget-byte v9, v5, v7

    if-ge v8, v9, :cond_3d

    return v1

    :cond_3d
    aget-byte v8, v4, v7

    aget-byte v9, v5, v7

    if-le v8, v9, :cond_44

    return v2

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_47
    array-length v7, v5

    if-ge v7, v6, :cond_4b

    return v2

    :cond_4b
    array-length v2, v4

    if-ge v2, v6, :cond_4f

    return v1

    :cond_4f
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/net/IpPrefix;

    check-cast p2, Landroid/net/IpPrefix;

    invoke-virtual {p0, p1, p2}, Landroid/net/IpPrefix$1;->compare(Landroid/net/IpPrefix;Landroid/net/IpPrefix;)I

    move-result p1

    return p1
.end method
