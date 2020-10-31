.class public final enum Lmiui/maml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR_NUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "VAR_STR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "NUM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "STR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "OPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "FUN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET_ROUND"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string v1, "BRACKET_SQUARE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/16 v1, 0x9

    new-array v1, v1, [Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v11, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v11, v1, v2

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .registers 2

    const-class v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .registers 1

    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v0}, [Lmiui/maml/data/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method
