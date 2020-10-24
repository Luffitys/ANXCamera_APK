.class public final enum Lcom/xiaomi/fenshen/FenShenCam$Mode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v1, "MCOPY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v1, "TIMEFREEZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v6, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    aput-object v6, v1, v2

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 1

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/fenshen/FenShenCam$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object v0
.end method
