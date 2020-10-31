.class final enum Lmiui/maml/ActionCommand$VideoCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$VideoCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$VideoCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum CONFIG:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum PAUSE:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum PLAY:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum SEEK_TO:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

.field public static final enum SET_VOLUME:Lmiui/maml/ActionCommand$VideoCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "SEEK_TO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "CONFIG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "SET_VOLUME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/maml/ActionCommand$VideoCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    const/4 v1, 0x6

    new-array v1, v1, [Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    sget-object v8, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v8, v1, v2

    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SEEK_TO:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->CONFIG:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v2, v1, v5

    sget-object v2, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->SET_VOLUME:Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$VideoCommand$CommandType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$VideoCommand$CommandType;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$VideoCommand$CommandType;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$VideoCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$VideoCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$VideoCommand$CommandType;

    return-object v0
.end method
