.class Lcom/miui/internal/analytics/SaltGenerate$1;
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
.method public compare(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/internal/net/KeyValuePair;

    check-cast p2, Lcom/miui/internal/net/KeyValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/analytics/SaltGenerate$1;->compare(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I

    move-result p0

    return p0
.end method
