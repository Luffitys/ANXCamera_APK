.class Lcom/miui/internal/analytics/SaltGenerate$1;
.super Ljava/lang/Object;
.source "SaltGenerate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/analytics/SaltGenerate;->getKeyFromParams(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/internal/net/KeyValuePair;",
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
.method public compare(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I
    .registers 5

    invoke-virtual {p1}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/internal/net/KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/miui/internal/net/KeyValuePair;

    check-cast p2, Lcom/miui/internal/net/KeyValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/analytics/SaltGenerate$1;->compare(Lcom/miui/internal/net/KeyValuePair;Lcom/miui/internal/net/KeyValuePair;)I

    move-result p1

    return p1
.end method
