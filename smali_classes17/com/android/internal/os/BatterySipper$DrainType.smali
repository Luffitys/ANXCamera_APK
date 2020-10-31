.class public final enum Lcom/android/internal/os/BatterySipper$DrainType;
.super Ljava/lang/Enum;
.source "BatterySipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatterySipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/os/BatterySipper$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum APP:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum CELL:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum USER:Lcom/android/internal/os/BatterySipper$DrainType;

.field public static final enum WIFI:Lcom/android/internal/os/BatterySipper$DrainType;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "AMBIENT_DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "APP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "BLUETOOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "CAMERA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "CELL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "FLASHLIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "IDLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "MEMORY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "OVERCOUNTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "PHONE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "SCREEN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "UNACCOUNTED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "USER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v0, Lcom/android/internal/os/BatterySipper$DrainType;

    const-string v1, "WIFI"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/internal/os/BatterySipper$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v16, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 2

    const-class v0, Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/os/BatterySipper$DrainType;
    .registers 1

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->$VALUES:[Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, [Lcom/android/internal/os/BatterySipper$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/BatterySipper$DrainType;

    return-object v0
.end method
