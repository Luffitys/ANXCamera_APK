.class public Landroid/net/util/DnsUtils$SortableAddress;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/DnsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortableAddress"
.end annotation


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public final hasSrcAddr:I

.field public final label:I

.field public final labelMatch:I

.field public final precedence:I

.field public final prefixMatchLen:I

.field public final scope:I

.field public final scopeMatch:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/util/DnsUtils$SortableAddress;->address:Ljava/net/InetAddress;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    # invokes: Landroid/net/util/DnsUtils;->findLabel(Ljava/net/InetAddress;)I
    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$000(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->label:I

    # invokes: Landroid/net/util/DnsUtils;->findScope(Ljava/net/InetAddress;)I
    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$100(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    # invokes: Landroid/net/util/DnsUtils;->findPrecedence(Ljava/net/InetAddress;)I
    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$200(Ljava/net/InetAddress;)I

    move-result v2

    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->precedence:I

    if-eqz p2, :cond_2c

    iget v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->label:I

    # invokes: Landroid/net/util/DnsUtils;->findLabel(Ljava/net/InetAddress;)I
    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$000(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    move v2, v0

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    iput v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->labelMatch:I

    if-eqz p2, :cond_3a

    iget v2, p0, Landroid/net/util/DnsUtils$SortableAddress;->scope:I

    # invokes: Landroid/net/util/DnsUtils;->findScope(Ljava/net/InetAddress;)I
    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$100(Ljava/net/InetAddress;)I

    move-result v3

    if-ne v2, v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    iput v0, p0, Landroid/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    # invokes: Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z
    invoke-static {p1}, Landroid/net/util/DnsUtils;->access$300(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_50

    # invokes: Landroid/net/util/DnsUtils;->isIpv6Address(Ljava/net/InetAddress;)Z
    invoke-static {p2}, Landroid/net/util/DnsUtils;->access$300(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_50

    # invokes: Landroid/net/util/DnsUtils;->compareIpv6PrefixMatchLen(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    invoke-static {p2, p1}, Landroid/net/util/DnsUtils;->access$400(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    goto :goto_52

    :cond_50
    iput v1, p0, Landroid/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    :goto_52
    return-void
.end method
