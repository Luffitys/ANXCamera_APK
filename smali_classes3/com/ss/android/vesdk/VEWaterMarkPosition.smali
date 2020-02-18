.class public final enum Lcom/ss/android/vesdk/VEWaterMarkPosition;
.super Ljava/lang/Enum;
.source "VEWaterMarkPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEWaterMarkPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

.field public static final enum TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v1, 0x0

    const-string v2, "TL_BR"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v2, 0x1

    const-string v3, "BR"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v3, 0x2

    const-string v4, "BL"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v4, 0x3

    const-string v5, "TR"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    new-instance v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v5, 0x4

    const-string v6, "TL"

    invoke-direct {v0, v6, v5}, Lcom/ss/android/vesdk/VEWaterMarkPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ss/android/vesdk/VEWaterMarkPosition;

    sget-object v6, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    aput-object v6, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->$VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEWaterMarkPosition;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEWaterMarkPosition;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEWaterMarkPosition;->$VALUES:[Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEWaterMarkPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEWaterMarkPosition;

    return-object v0
.end method
