.class final enum Lmiui/maml/data/StringFunctions$Fun;
.super Ljava/lang/Enum;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/StringFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/StringFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum INVALID:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

.field public static final enum STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOLOWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TOUPPER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_TRIM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_REPLACEFIRST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_CONTAINS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_STARTWITH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ENDSWITH"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_ISEMPTY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_MATCHES"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_INDEXOF"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    new-instance v0, Lmiui/maml/data/StringFunctions$Fun;

    const-string v1, "STR_LASTINDEXOF"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lmiui/maml/data/StringFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    const/16 v1, 0xe

    new-array v1, v1, [Lmiui/maml/data/StringFunctions$Fun;

    sget-object v16, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v16, v1, v2

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v9

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v10

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v11

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v12

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v13

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/StringFunctions$Fun;
    .registers 2

    const-class v0, Lmiui/maml/data/StringFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/StringFunctions$Fun;
    .registers 1

    sget-object v0, Lmiui/maml/data/StringFunctions$Fun;->$VALUES:[Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, [Lmiui/maml/data/StringFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/StringFunctions$Fun;

    return-object v0
.end method
