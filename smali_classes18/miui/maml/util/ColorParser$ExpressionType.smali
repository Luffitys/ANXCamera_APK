.class final enum Lmiui/maml/util/ColorParser$ExpressionType;
.super Ljava/lang/Enum;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/ColorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExpressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/util/ColorParser$ExpressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum CONST:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

.field public static final enum VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "CONST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "ARGB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    new-instance v0, Lmiui/maml/util/ColorParser$ExpressionType;

    const-string v1, "INVALID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/util/ColorParser$ExpressionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/maml/util/ColorParser$ExpressionType;

    sget-object v6, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/util/ColorParser$ExpressionType;
    .registers 2

    const-class v0, Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ColorParser$ExpressionType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/util/ColorParser$ExpressionType;
    .registers 1

    sget-object v0, Lmiui/maml/util/ColorParser$ExpressionType;->$VALUES:[Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v0}, [Lmiui/maml/util/ColorParser$ExpressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/util/ColorParser$ExpressionType;

    return-object v0
.end method
