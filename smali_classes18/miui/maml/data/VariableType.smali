.class public final enum Lmiui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lmiui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lmiui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INVALID:Lmiui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lmiui/maml/data/VariableType;

.field public static final enum NUM:Lmiui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lmiui/maml/data/VariableType;

.field public static final enum OBJ:Lmiui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lmiui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum STR:Lmiui/maml/data/VariableType;

.field public static final enum STR_ARR:Lmiui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "NUM"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-class v1, Ljava/lang/String;

    const-string v3, "STR"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-class v1, Ljava/lang/Object;

    const-string v3, "OBJ"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "NUM_ARR"

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v3, "DOUBLE_ARR"

    const/4 v8, 0x5

    invoke-direct {v0, v3, v8, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "FLOAT_ARR"

    const/4 v9, 0x6

    invoke-direct {v0, v3, v9, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "INT_ARR"

    const/4 v10, 0x7

    invoke-direct {v0, v3, v10, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v3, "SHORT_ARR"

    const/16 v11, 0x8

    invoke-direct {v0, v3, v11, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "BYTE_ARR"

    const/16 v12, 0x9

    invoke-direct {v0, v3, v12, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v3, "LONG_ARR"

    const/16 v13, 0xa

    invoke-direct {v0, v3, v13, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "BOOLEAN_ARR"

    const/16 v14, 0xb

    invoke-direct {v0, v3, v14, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v3, "CHAR_ARR"

    const/16 v15, 0xc

    invoke-direct {v0, v3, v15, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-class v1, Ljava/lang/String;

    const-string v3, "STR_ARR"

    const/16 v15, 0xd

    invoke-direct {v0, v3, v15, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-class v1, Ljava/lang/Object;

    const-string v3, "OBJ_ARR"

    const/16 v15, 0xe

    invoke-direct {v0, v3, v15, v1}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    const/16 v1, 0xf

    new-array v1, v1, [Lmiui/maml/data/VariableType;

    sget-object v3, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    aput-object v3, v1, v2

    sget-object v2, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v9

    sget-object v2, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v10

    sget-object v2, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v11

    sget-object v2, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v12

    sget-object v2, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v13

    sget-object v2, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    aput-object v2, v1, v14

    sget-object v2, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .registers 2

    const-string v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_b
    const-string v0, "string"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_16
    const-string v0, "object"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_21
    const-string v0, "number[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_2c
    const-string v0, "double[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_37
    const-string v0, "float[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_42
    const-string v0, "int[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_4d
    const-string v0, "short[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_58
    const-string v0, "byte[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_63
    const-string v0, "long[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_6e
    const-string v0, "boolean[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_79
    const-string v0, "char[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_84
    const-string v0, "string[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_8f
    const-string v0, "object[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_9a
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .registers 2

    const-class v0, Lmiui/maml/data/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/VariableType;
    .registers 1

    sget-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    invoke-virtual {v0}, [Lmiui/maml/data/VariableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/VariableType;

    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isNumber()Z
    .registers 2

    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumberArray()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isNumberOrStringArray()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v0

    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
