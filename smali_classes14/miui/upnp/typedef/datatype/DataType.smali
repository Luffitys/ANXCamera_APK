.class public final enum Lmiui/upnp/typedef/datatype/DataType;
.super Ljava/lang/Enum;
.source "DataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/upnp/typedef/datatype/DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum CHAR:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATE:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATETIME:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum FLOAT:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I1:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I2:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum I4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum INT:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum NUMBER:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum R4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum R8:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum STRING:Lmiui/upnp/typedef/datatype/DataType;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TIME:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI1:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI2:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UI4:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum URI:Lmiui/upnp/typedef/datatype/DataType;

.field public static final enum UUID:Lmiui/upnp/typedef/datatype/DataType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "BIN_BASE64"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "BIN_HEX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "BOOLEAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "CHAR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "DATE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "DATETIME"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "DATETIME_TZ"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "FIXED_14_4"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "FLOAT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "I1"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "I2"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "I4"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "INT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "NUMBER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "R4"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "R8"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "STRING"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "TIME"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "TIME_TZ"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "UI1"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "UI2"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "UI4"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "URI"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    new-instance v0, Lmiui/upnp/typedef/datatype/DataType;

    const-string v1, "UUID"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lmiui/upnp/typedef/datatype/DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->UUID:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v1, 0x19

    new-array v1, v1, [Lmiui/upnp/typedef/datatype/DataType;

    sget-object v15, Lmiui/upnp/typedef/datatype/DataType;->UNKNOWN:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v15, v1, v2

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v9

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v10

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v11

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v12

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v13

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    aput-object v2, v1, v14

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sput-object v1, Lmiui/upnp/typedef/datatype/DataType;->$VALUES:[Lmiui/upnp/typedef/datatype/DataType;

    const-class v0, Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

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

.method public static BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_56

    :cond_25
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "FALSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_55

    :cond_3e
    sget-object v2, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_55
    :goto_55
    return-object v0

    :cond_56
    :goto_56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static BooleanValueToString(Z)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/upnp/typedef/exception/InvalidDataTypeException;
        }
    .end annotation

    const-string v0, "bin.base64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_BASE64:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_b
    const-string v0, "bin.hex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BIN_HEX:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_16
    const-string v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_21
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_2c
    const-string v0, "time.tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->TIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_37
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATE:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_42
    const-string v0, "dateTime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_4d
    const-string v0, "dateTime.tz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->DATETIME_TZ:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_58
    const-string v0, "fixed.14.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->FIXED_14_4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_63
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->URI:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_6e
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UUID:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_79
    const-string v0, "i1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I1:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_84
    const-string v0, "i2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I2:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_8f
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_9a
    const-string v0, "number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->NUMBER:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_a5
    const-string v0, "ui1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI1:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_b0
    const-string v0, "ui2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI2:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_bb
    const-string v0, "i4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->I4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_c6
    const-string v0, "ui4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->UI4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_d1
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->FLOAT:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_dc
    const-string v0, "r4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->R4:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_e7
    const-string v0, "r8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->R8:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_f2
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->CHAR:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_fd
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0

    :cond_108
    new-instance v0, Lmiui/upnp/typedef/exception/InvalidDataTypeException;

    invoke-direct {v0, p0}, Lmiui/upnp/typedef/exception/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;
    .registers 2

    const-class v0, Lmiui/upnp/typedef/datatype/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method

.method public static values()[Lmiui/upnp/typedef/datatype/DataType;
    .registers 1

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType;->$VALUES:[Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0}, [Lmiui/upnp/typedef/datatype/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method


# virtual methods
.method public createObjectValue()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_b

    const-string v1, ""

    return-object v1

    :cond_b
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_15

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_15
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_20

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_20
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_2a

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_2a
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_35

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_35
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3c

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_3b} :catch_3d

    return-object v1

    :cond_3c
    goto :goto_41

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public getJavaDataType()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType$1;->$SwitchMap$miui$upnp$typedef$datatype$DataType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    const/4 v0, 0x0

    return-object v0

    :pswitch_d
    const-class v0, Ljava/lang/Boolean;

    return-object v0

    :pswitch_10
    const-class v0, Ljava/lang/Double;

    return-object v0

    :pswitch_13
    const-class v0, Ljava/lang/Float;

    return-object v0

    :pswitch_16
    const-class v0, Ljava/lang/Long;

    return-object v0

    :pswitch_19
    const-class v0, Ljava/lang/Integer;

    return-object v0

    :pswitch_1c
    const-class v0, Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public getStringType()Ljava/lang/String;
    .registers 3

    sget-object v0, Lmiui/upnp/typedef/datatype/DataType$1;->$SwitchMap$miui$upnp$typedef$datatype$DataType:[I

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    const/4 v0, 0x0

    return-object v0

    :pswitch_d
    const-string v0, "boolean"

    return-object v0

    :pswitch_10
    const-string v0, "r8"

    return-object v0

    :pswitch_13
    const-string v0, "r4"

    return-object v0

    :pswitch_16
    const-string v0, "float"

    return-object v0

    :pswitch_19
    const-string v0, "ui4"

    return-object v0

    :pswitch_1c
    const-string v0, "i4"

    return-object v0

    :pswitch_1f
    const-string v0, "ui2"

    return-object v0

    :pswitch_22
    const-string v0, "ui1"

    return-object v0

    :pswitch_25
    const-string v0, "number"

    return-object v0

    :pswitch_28
    const-string v0, "int"

    return-object v0

    :pswitch_2b
    const-string v0, "i2"

    return-object v0

    :pswitch_2e
    const-string v0, "i1"

    return-object v0

    :pswitch_31
    const-string v0, "char"

    return-object v0

    :pswitch_34
    const-string v0, "uuid"

    return-object v0

    :pswitch_37
    const-string v0, "uri"

    return-object v0

    :pswitch_3a
    const-string v0, "fixed.14.4"

    return-object v0

    :pswitch_3d
    const-string v0, "dateTime.tz"

    return-object v0

    :pswitch_40
    const-string v0, "dateTime"

    return-object v0

    :pswitch_43
    const-string v0, "date"

    return-object v0

    :pswitch_46
    const-string v0, "time.tz"

    return-object v0

    :pswitch_49
    const-string v0, "time"

    return-object v0

    :pswitch_4c
    const-string v0, "string"

    return-object v0

    :pswitch_4f
    const-string v0, "bin.hex"

    return-object v0

    :pswitch_52
    const-string v0, "bin.base64"

    return-object v0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public toObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    return-object p1

    :cond_9
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_12
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1b

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_1b
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_24

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    :cond_24
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_2d

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    :cond_2d
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_36

    invoke-static {p1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_35} :catch_37

    return-object v1

    :cond_36
    goto :goto_3b

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_3b
    const/4 v1, 0x0

    return-object v1
.end method

.method public toStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_16
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1f
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_28
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_31
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_41

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueToString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_41
    const/4 v1, 0x0

    return-object v1
.end method

.method public validate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    :cond_a
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v0, :cond_21

    return v2

    :cond_21
    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_38

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_37

    move v2, v3

    :cond_37
    return v2

    :cond_38
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_50

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_4f

    move v2, v3

    :cond_4f
    return v2

    :cond_50
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_68

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_67

    move v2, v3

    :cond_67
    return v2

    :cond_68
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_80

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_7f

    move v2, v3

    :cond_7f
    return v2

    :cond_80
    return v2
.end method

.method public validate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    invoke-virtual {p0}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    :cond_a
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1d

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->TAG:Ljava/lang/String;

    const-string v3, "dataType invalid"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_46

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_44

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    nop

    :goto_45
    return v2

    :cond_46
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_72

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_70

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_70

    move v2, v3

    goto :goto_71

    :cond_70
    nop

    :goto_71
    return v2

    :cond_72
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_a2

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p1

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_a0

    move-object v1, p3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object v4, p2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_a0

    move v2, v3

    goto :goto_a1

    :cond_a0
    nop

    :goto_a1
    return v2

    :cond_a2
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_d2

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ltz v1, :cond_d0

    move-object v1, p3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v1, p2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ltz v1, :cond_d0

    move v2, v3

    goto :goto_d1

    :cond_d0
    nop

    :goto_d1
    return v2

    :cond_d2
    return v2
.end method
