.class public final enum Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

.field public static final enum LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

.field public static final enum LEVEL1:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

.field public static final enum LEVEL2:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

.field public static final enum LEVEL3:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    const-string v1, "LEVEL0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    new-instance v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    const-string v1, "LEVEL1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL1:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    new-instance v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    const-string v1, "LEVEL2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL2:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    new-instance v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    const-string v1, "LEVEL3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL3:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    sget-object v6, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    aput-object v6, v1, v2

    sget-object v2, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL1:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL2:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->$VALUES:[Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;
    .locals 1

    const-class v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;
    .locals 1

    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->$VALUES:[Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    return-object v0
.end method
