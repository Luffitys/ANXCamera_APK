.class public final enum Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OooO00o:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum OooO0O0:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public static final enum OooO0OO:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private static final synthetic OooO0Oo:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO00o:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO0O0:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    const-string v1, "BEVEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO0OO:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO00o:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO0O0:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO0Oo:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->OooO0Oo:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method


# virtual methods
.method public OooO00o()Landroid/graphics/Paint$Join;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/OooOOOO;->OooO0O0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0
.end method
