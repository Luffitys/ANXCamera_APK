.class final enum Lmiui/maml/data/Expression$Ope;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Ope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/Expression$Ope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Expression$Ope;

.field public static final enum ADD:Lmiui/maml/data/Expression$Ope;

.field public static final enum AND:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_AND:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_NOT:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_OR:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

.field public static final enum BIT_XOR:Lmiui/maml/data/Expression$Ope;

.field public static final enum DIV:Lmiui/maml/data/Expression$Ope;

.field public static final enum EQ:Lmiui/maml/data/Expression$Ope;

.field public static final enum GE:Lmiui/maml/data/Expression$Ope;

.field public static final enum GT:Lmiui/maml/data/Expression$Ope;

.field public static final enum INVALID:Lmiui/maml/data/Expression$Ope;

.field public static final enum LE:Lmiui/maml/data/Expression$Ope;

.field public static final enum LT:Lmiui/maml/data/Expression$Ope;

.field public static final enum MIN:Lmiui/maml/data/Expression$Ope;

.field public static final enum MOD:Lmiui/maml/data/Expression$Ope;

.field public static final enum MUL:Lmiui/maml/data/Expression$Ope;

.field public static final enum NEQ:Lmiui/maml/data/Expression$Ope;

.field public static final enum NOT:Lmiui/maml/data/Expression$Ope;

.field public static final enum OR:Lmiui/maml/data/Expression$Ope;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MUL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "DIV"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "MOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_AND"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_OR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_XOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_NOT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_LSHIFT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "BIT_RSHIFT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "NOT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "EQ"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "NEQ"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "AND"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "OR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "GT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "GE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "LT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "LE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    new-instance v0, Lmiui/maml/data/Expression$Ope;

    const-string v1, "INVALID"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/Expression$Ope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    const/16 v1, 0x15

    new-array v1, v1, [Lmiui/maml/data/Expression$Ope;

    sget-object v16, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    aput-object v16, v1, v2

    sget-object v2, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v9

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v10

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v11

    sget-object v2, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v12

    sget-object v2, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v13

    sget-object v2, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    aput-object v2, v1, v14

    sget-object v2, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lmiui/maml/data/Expression$Ope;->$VALUES:[Lmiui/maml/data/Expression$Ope;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Expression$Ope;
    .registers 2

    const-class v0, Lmiui/maml/data/Expression$Ope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$Ope;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Expression$Ope;
    .registers 1

    sget-object v0, Lmiui/maml/data/Expression$Ope;->$VALUES:[Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v0}, [Lmiui/maml/data/Expression$Ope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/Expression$Ope;

    return-object v0
.end method
