.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final OooO00o:Ljava/util/Comparator;

.field static final synthetic OooO0O0:Z


# instance fields
.field comparator:Ljava/util/Comparator;

.field private entrySet:Lcom/airbnb/lottie/parser/moshi/OooO;

.field final header:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field private keySet:Lcom/airbnb/lottie/parser/moshi/OooOO0O;

.field modCount:I

.field size:I

.field table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/OooO0o0;

    invoke-direct {v0}, Lcom/airbnb/lottie/parser/moshi/OooO0o0;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO00o:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO00o:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    new-instance p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    invoke-direct {p1}, Lcom/airbnb/lottie/parser/moshi/OooOOO0;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/16 p1, 0x10

    new-array p1, p1, [Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    array-length p1, p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method private OooO00o()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0O0([Lcom/airbnb/lottie/parser/moshi/OooOOO0;)[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    return-void
.end method

.method static OooO0O0([Lcom/airbnb/lottie/parser/moshi/OooOOO0;)[Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 11

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    new-instance v2, Lcom/airbnb/lottie/parser/moshi/OooO0oO;

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/moshi/OooO0oO;-><init>()V

    new-instance v3, Lcom/airbnb/lottie/parser/moshi/OooO0o;

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/moshi/OooO0o;-><init>()V

    new-instance v4, Lcom/airbnb/lottie/parser/moshi/OooO0o;

    invoke-direct {v4}, Lcom/airbnb/lottie/parser/moshi/OooO0o;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_7

    aget-object v7, p0, v6

    if-nez v7, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    move v8, v5

    move v9, v8

    :goto_1
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO00o()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v10, v10, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oO:I

    and-int/2addr v10, v0

    if-nez v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v8}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO0O0(I)V

    invoke-virtual {v4, v9}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO0O0(I)V

    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO0O0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    :goto_2
    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/moshi/OooO0oO;->OooO00o()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v10, v7, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oO:I

    and-int/2addr v10, v0

    if-nez v10, :cond_3

    invoke-virtual {v3, v7}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO00o(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    if-lez v8, :cond_5

    invoke-virtual {v3}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO0OO()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v7

    :goto_3
    aput-object v8, v1, v6

    add-int v8, v6, v0

    if-lez v9, :cond_6

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/moshi/OooO0o;->OooO0OO()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v7

    :cond_6
    aput-object v7, v1, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method private OooO0OO(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0o(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    :cond_5
    :goto_4
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0O(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v1, :cond_8

    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0O(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    :cond_a
    :goto_6
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0o(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_0

    :cond_e
    :goto_7
    return-void
.end method

.method private OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V
    .locals 2

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :cond_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oO:I

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    aput-object p2, p0, p1

    :goto_0
    return-void
.end method

.method private OooOO0O(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V
    .locals 4

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v2, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    iput-object p1, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    return-void
.end method

.method private OooOO0o(Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V
    .locals 4

    iget-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v3, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v3, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    iput-object p1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    return-void
.end method

.method private static OooOOO0(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, v0

    return p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method OooO(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0oo(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V

    :cond_0
    return-object p1
.end method

.method OooO0Oo(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 12

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOOO0(I)I

    move-result v6

    array-length v2, v1

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    and-int/2addr v2, v6

    aget-object v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    sget-object v5, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO00o:Ljava/util/Comparator;

    if-ne v0, v5, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    iget-object v7, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o:Ljava/lang/Object;

    if-eqz v5, :cond_1

    invoke-interface {v5, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    :goto_1
    if-nez v7, :cond_2

    return-object v3

    :cond_2
    if-gez v7, :cond_3

    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_2

    :cond_3
    iget-object v8, v3, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :goto_2
    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v8

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_3
    move-object v10, v3

    move v11, v7

    if-nez p2, :cond_6

    return-object v4

    :cond_6
    iget-object v7, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-nez v10, :cond_9

    sget-object p2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO00o:Ljava/util/Comparator;

    if-ne v0, p2, :cond_8

    instance-of p2, p1, Ljava/lang/Comparable;

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not Comparable"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/OooOOO0;-><init>(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    aput-object p2, v1, v2

    goto :goto_6

    :cond_9
    new-instance p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v8, v7, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v3, p2

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/airbnb/lottie/parser/moshi/OooOOO0;-><init>(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Ljava/lang/Object;ILcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    if-gez v11, :cond_a

    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_5

    :cond_a
    iput-object p2, v10, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :goto_5
    invoke-direct {p0, v10, v9}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V

    :goto_6
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->threshold:I

    if-le p1, v0, :cond_b

    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO00o()V

    :cond_b
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    return-object p2
.end method

.method OooO0o(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0Oo(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method OooO0o0(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0OO(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method OooO0oo(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :cond_0
    iget-object p2, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v2, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    iget v2, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    if-le v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o()Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0oo(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V

    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v1, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    if-eqz v1, :cond_3

    iget v3, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    iput-object v1, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p2, v1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO00o:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO:I

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0O0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0OO:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooOO0(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Lcom/airbnb/lottie/parser/moshi/OooOOO0;)V

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0oO(Lcom/airbnb/lottie/parser/moshi/OooOOO0;Z)V

    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->table:[Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->modCount:I

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->header:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    :goto_0
    if-eq v0, p0, :cond_0

    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object v1, v0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0o0:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    iput-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0Oo:Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/OooO;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/OooO;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/OooO;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->entrySet:Lcom/airbnb/lottie/parser/moshi/OooO;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0o(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/OooOO0O;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/OooOO0O;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/OooOO0O;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->keySet:Lcom/airbnb/lottie/parser/moshi/OooOO0O;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO0Oo(Ljava/lang/Object;Z)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p0

    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    iput-object p2, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->OooO(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/OooOOO0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/parser/moshi/OooOOO0;->OooO0oo:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    return p0
.end method
