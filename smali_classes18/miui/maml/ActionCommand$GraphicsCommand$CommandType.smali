.class final enum Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$GraphicsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum SET_RENDER_LISTENER:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "BEGIN_FILL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "BEGIN_GRADIENT_FILL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "CREATE_GRADIENT_BOX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "CURVE_TO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "CUBIC_CURVE_TO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "DRAW_CIRCLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "DRAW_ELLIPSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "DRAW_RECT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "DRAW_ROUND_RECT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "LINE_GRADIENT_STYLE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "LINE_STYLE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "LINE_TO"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "MOVE_TO"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const-string v1, "SET_RENDER_LISTENER"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v1, 0xf

    new-array v1, v1, [Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    sget-object v16, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v16, v1, v2

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v6

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v7

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v8

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v9

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v10

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v11

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v12

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v13

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v2, v1, v14

    sget-object v2, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object v0
.end method
