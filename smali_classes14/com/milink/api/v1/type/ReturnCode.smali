.class public final enum Lcom/milink/api/v1/type/ReturnCode;
.super Ljava/lang/Enum;
.source "ReturnCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum Error:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum NotConnected:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum NotSupport:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum OK:Lcom/milink/api/v1/type/ReturnCode;

.field public static final enum ServiceException:Lcom/milink/api/v1/type/ReturnCode;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "Error"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "ServiceException"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "NotConnected"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "NotSupport"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "InvalidParams"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    new-instance v0, Lcom/milink/api/v1/type/ReturnCode;

    const-string v1, "InvalidUrl"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/milink/api/v1/type/ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/milink/api/v1/type/ReturnCode;

    sget-object v9, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v9, v1, v2

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/milink/api/v1/type/ReturnCode;->$VALUES:[Lcom/milink/api/v1/type/ReturnCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
    .registers 2

    const-class v0, Lcom/milink/api/v1/type/ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/ReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/ReturnCode;
    .registers 1

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->$VALUES:[Lcom/milink/api/v1/type/ReturnCode;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/ReturnCode;

    return-object v0
.end method
