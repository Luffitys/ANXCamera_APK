.class public final enum Lcom/ss/android/vesdk/ROTATE_DEGREE;
.super Ljava/lang/Enum;
.source "ROTATE_DEGREE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/ROTATE_DEGREE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public static final enum ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v1, 0x0

    const-string v2, "ROTATE_NONE"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v2, 0x1

    const-string v3, "ROTATE_90"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v3, 0x2

    const-string v4, "ROTATE_180"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    new-instance v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v4, 0x3

    const-string v5, "ROTATE_270"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/vesdk/ROTATE_DEGREE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    sget-object v5, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->$VALUES:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
