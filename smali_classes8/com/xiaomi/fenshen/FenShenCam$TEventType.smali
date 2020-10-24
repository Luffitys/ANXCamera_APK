.class public final enum Lcom/xiaomi/fenshen/FenShenCam$TEventType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

.field public static final enum SCALE:Lcom/xiaomi/fenshen/FenShenCam$TEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const-string v1, "CLICK_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const-string v1, "CLICK_DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const-string v1, "GENERIC_UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const-string v1, "DRAG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const-string v1, "SCALE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/fenshen/FenShenCam$TEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->SCALE:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    sget-object v7, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->CLICK_DOWN:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->GENERIC_UP:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->DRAG:Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/fenshen/FenShenCam$TEventType;
    .locals 1

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/fenshen/FenShenCam$TEventType;
    .locals 1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$TEventType;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    invoke-virtual {v0}, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/fenshen/FenShenCam$TEventType;

    return-object v0
.end method
