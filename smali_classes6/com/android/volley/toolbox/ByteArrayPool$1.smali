.class Lcom/android/volley/toolbox/ByteArrayPool$1;
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

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/volley/toolbox/ByteArrayPool$1;->compare([B[B)I

    move-result p0

    return p0
.end method

.method public compare([B[B)I
    .locals 0

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method
