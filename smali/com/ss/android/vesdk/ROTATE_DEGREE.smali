.class public final enum Lcom/ss/android/vesdk/ROTATE_DEGREE;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v1, "ROTATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v1, "ROTATE_90"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v1, "ROTATE_180"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const-string v1, "ROTATE_270"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    sget-object v6, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->$VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    array-length v1, p0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/ROTATE_DEGREE;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/ROTATE_DEGREE;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->$VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/ROTATE_DEGREE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-object v0
.end method
