.class final enum Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$AnimationCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$AnimationCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

.field public static final enum RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PAUSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "RESUME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    new-instance v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const-string v1, "PLAY_WITH_PARAMS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY_WITH_PARAMS:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    const/4 v1, 0x5

    new-array v1, v1, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    sget-object v7, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v7, v1, v2

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PLAY:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->PAUSE:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->RESUME:Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->$VALUES:[Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$AnimationCommand$CommandType;

    return-object v0
.end method
