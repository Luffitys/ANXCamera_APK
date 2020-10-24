.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OooO00o:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum OooO0OO:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum OooO0Oo:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field private static final synthetic OooO0o:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum OooO0o0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO00o:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "SUBTRACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0OO:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "INTERSECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0Oo:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const-string v1, "EXCLUDE_INTERSECTIONS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0o0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    sget-object v7, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO00o:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0OO:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0Oo:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0o:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static OooO00o(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO00o:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0o0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0Oo:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0OO:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0O0:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO00o:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->OooO0o:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
