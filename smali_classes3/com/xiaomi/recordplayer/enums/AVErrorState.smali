.class public final enum Lcom/xiaomi/recordplayer/enums/AVErrorState;
.super Ljava/lang/Enum;
.source "AVErrorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/recordplayer/enums/AVErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorAccess:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorDecoderNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorHttpBadRequest:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorHttpForbidden:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorHttpNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorHttpUnauthorized:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorIO:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorNoEntrance:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorNoMemory:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorOther:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorStreamNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

.field public static final enum AVErrorTimedOut:Lcom/xiaomi/recordplayer/enums/AVErrorState;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v1, 0x0

    const-string v2, "AVErrorStreamNotFound"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorStreamNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v2, 0x1

    const-string v3, "AVErrorDecoderNotFound"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorDecoderNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v3, 0x2

    const-string v4, "AVErrorHttpBadRequest"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpBadRequest:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v4, 0x3

    const-string v5, "AVErrorHttpUnauthorized"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpUnauthorized:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v5, 0x4

    const-string v6, "AVErrorHttpForbidden"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpForbidden:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v6, 0x5

    const-string v7, "AVErrorHttpNotFound"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v7, 0x6

    const-string v8, "AVErrorTimedOut"

    invoke-direct {v0, v8, v7, v7}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorTimedOut:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/4 v8, 0x7

    const-string v9, "AVErrorNoEntrance"

    invoke-direct {v0, v9, v8, v8}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorNoEntrance:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/16 v9, 0x8

    const-string v10, "AVErrorNoMemory"

    invoke-direct {v0, v10, v9, v9}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorNoMemory:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/16 v10, 0x9

    const-string v11, "AVErrorIO"

    invoke-direct {v0, v11, v10, v10}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorIO:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/16 v11, 0xa

    const-string v12, "AVErrorAccess"

    invoke-direct {v0, v12, v11, v11}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorAccess:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    new-instance v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/16 v12, 0xb

    const-string v13, "AVErrorOther"

    invoke-direct {v0, v13, v12, v12}, Lcom/xiaomi/recordplayer/enums/AVErrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorOther:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/xiaomi/recordplayer/enums/AVErrorState;

    sget-object v13, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorStreamNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v13, v0, v1

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorDecoderNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpBadRequest:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpUnauthorized:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpForbidden:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorHttpNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorTimedOut:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorNoEntrance:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorNoMemory:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorIO:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorAccess:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorOther:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    aput-object v1, v0, v12

    sput-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->$VALUES:[Lcom/xiaomi/recordplayer/enums/AVErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->nCode:I

    return-void
.end method

.method public static int2enum(I)Lcom/xiaomi/recordplayer/enums/AVErrorState;
    .locals 6

    sget-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->AVErrorStreamNotFound:Lcom/xiaomi/recordplayer/enums/AVErrorState;

    invoke-static {}, Lcom/xiaomi/recordplayer/enums/AVErrorState;->values()[Lcom/xiaomi/recordplayer/enums/AVErrorState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/recordplayer/enums/AVErrorState;
    .locals 1

    const-class v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/recordplayer/enums/AVErrorState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/recordplayer/enums/AVErrorState;
    .locals 1

    sget-object v0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->$VALUES:[Lcom/xiaomi/recordplayer/enums/AVErrorState;

    invoke-virtual {v0}, [Lcom/xiaomi/recordplayer/enums/AVErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/recordplayer/enums/AVErrorState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->nCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/xiaomi/recordplayer/enums/AVErrorState;->nCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
