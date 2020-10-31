.class final enum Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$VariableBinderCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$VariableBinderCommand$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field public static final enum Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field public static final enum Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string v1, "Refresh"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    new-instance v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string v1, "Invalid"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    const/4 v1, 0x2

    new-array v1, v1, [Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    sget-object v4, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->$VALUES:[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->$VALUES:[Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    return-object v0
.end method
