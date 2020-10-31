.class Lmiui/maml/data/Expression$OpeInfo;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$OpeInfo$Parser;
    }
.end annotation


# static fields
.field private static final OPE_SIZE:I

.field private static final mOpePar:[I

.field private static final mOpePriority:[I

.field private static final mOpes:[Ljava/lang/String;


# instance fields
.field public participants:I

.field public priority:I

.field public str:Ljava/lang/String;

.field public unary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const/16 v0, 0x14

    new-array v1, v0, [I

    fill-array-data v1, :array_42

    sput-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    const-string v1, "+"

    const-string v2, "-"

    const-string v3, "*"

    const-string v4, "/"

    const-string v5, "%"

    const-string v6, "&"

    const-string v7, "|"

    const-string v8, "^"

    const-string v9, "~"

    const-string v10, "{{"

    const-string v11, "}}"

    const-string v12, "!"

    const-string v13, "=="

    const-string v14, "!="

    const-string v15, "**"

    const-string v16, "||"

    const-string v17, "}"

    const-string v18, "}="

    const-string v19, "{"

    const-string v20, "{="

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return-void

    :array_42
    .array-data 4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x8
        0x9
        0xa
        0x2
        0x5
        0x5
        0x2
        0x7
        0x7
        0xb
        0xc
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_6e
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lmiui/maml/data/Expression$OpeInfo;->OPE_SIZE:I

    return v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    return-object v0
.end method

.method public static getOpeInfo(I)Lmiui/maml/data/Expression$OpeInfo;
    .registers 3

    new-instance v0, Lmiui/maml/data/Expression$OpeInfo;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo;-><init>()V

    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePriority:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpePar:[I

    aget v1, v1, p0

    iput v1, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    sget-object v1, Lmiui/maml/data/Expression$OpeInfo;->mOpes:[Ljava/lang/String;

    aget-object v1, v1, p0

    iput-object v1, v0, Lmiui/maml/data/Expression$OpeInfo;->str:Ljava/lang/String;

    return-object v0
.end method
