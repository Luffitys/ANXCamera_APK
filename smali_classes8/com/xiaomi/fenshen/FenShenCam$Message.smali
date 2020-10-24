.class public final enum Lcom/xiaomi/fenshen/FenShenCam$Message;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum EDIT_DONE:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum ERROR_INIT:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum ERROR_RUNTIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum PAUSED:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum SAVE_VIDEO_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

.field public static final enum START:Lcom/xiaomi/fenshen/FenShenCam$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "PREVIEW_NO_PERSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "ALIGN_OK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "ALIGN_WARNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "ALIGN_TOO_LARGE_OR_FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "NO_PERSON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "MOVE_OUTSIDE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "DYNAMIC_SCENE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "ERROR_INIT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_INIT:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "ERROR_RUNTIME"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_RUNTIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "PREVIEW_PERSON"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "SAVE_VIDEO_SUCCESS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->SAVE_VIDEO_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "EDIT_DONE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_DONE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    const-string v1, "PAUSED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/xiaomi/fenshen/FenShenCam$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->PAUSED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/xiaomi/fenshen/FenShenCam$Message;

    sget-object v16, Lcom/xiaomi/fenshen/FenShenCam$Message;->START:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v16, v1, v2

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v3

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_OK:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v4

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_WARNING:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ALIGN_TOO_LARGE_OR_FAILED:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->NO_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->MOVE_OUTSIDE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v8

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->DYNAMIC_SCENE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v9

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_INIT:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v10

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->ERROR_RUNTIME:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v11

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->PREVIEW_PERSON:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v12

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->SAVE_VIDEO_SUCCESS:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v13

    sget-object v2, Lcom/xiaomi/fenshen/FenShenCam$Message;->EDIT_DONE:Lcom/xiaomi/fenshen/FenShenCam$Message;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/xiaomi/fenshen/FenShenCam$Message;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Message;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/fenshen/FenShenCam$Message;
    .locals 1

    const-class v0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/fenshen/FenShenCam$Message;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/fenshen/FenShenCam$Message;
    .locals 1

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Message;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Message;

    invoke-virtual {v0}, [Lcom/xiaomi/fenshen/FenShenCam$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/fenshen/FenShenCam$Message;

    return-object v0
.end method
