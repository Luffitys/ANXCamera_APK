.class public final enum Lcom/milink/api/v1/type/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/milink/api/v1/type/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/milink/api/v1/type/ErrorCode;

.field public static final enum ConnectTimeout:Lcom/milink/api/v1/type/ErrorCode;

.field public static final enum Undefined:Lcom/milink/api/v1/type/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/milink/api/v1/type/ErrorCode;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/milink/api/v1/type/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ErrorCode;->Undefined:Lcom/milink/api/v1/type/ErrorCode;

    new-instance v0, Lcom/milink/api/v1/type/ErrorCode;

    const-string v1, "ConnectTimeout"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/milink/api/v1/type/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/milink/api/v1/type/ErrorCode;->ConnectTimeout:Lcom/milink/api/v1/type/ErrorCode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/milink/api/v1/type/ErrorCode;

    sget-object v4, Lcom/milink/api/v1/type/ErrorCode;->Undefined:Lcom/milink/api/v1/type/ErrorCode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/milink/api/v1/type/ErrorCode;->$VALUES:[Lcom/milink/api/v1/type/ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/milink/api/v1/type/ErrorCode;
    .registers 2

    const-class v0, Lcom/milink/api/v1/type/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/milink/api/v1/type/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/milink/api/v1/type/ErrorCode;
    .registers 1

    sget-object v0, Lcom/milink/api/v1/type/ErrorCode;->$VALUES:[Lcom/milink/api/v1/type/ErrorCode;

    invoke-virtual {v0}, [Lcom/milink/api/v1/type/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/milink/api/v1/type/ErrorCode;

    return-object v0
.end method
