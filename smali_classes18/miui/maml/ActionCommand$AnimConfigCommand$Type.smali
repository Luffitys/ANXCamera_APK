.class final enum Lmiui/maml/ActionCommand$AnimConfigCommand$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$AnimConfigCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$AnimConfigCommand$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

.field public static final enum CLEAR:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

.field public static final enum INVALID:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

.field public static final enum REMOVE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

.field public static final enum UPDATE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    new-instance v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    const-string v1, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    new-instance v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    const-string v1, "CLEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    new-instance v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    const-string v1, "INVALID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->INVALID:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    sget-object v6, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->UPDATE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    aput-object v6, v1, v2

    sget-object v2, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->REMOVE:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->CLEAR:Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->$VALUES:[Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$AnimConfigCommand$Type;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$AnimConfigCommand$Type;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->$VALUES:[Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$AnimConfigCommand$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$AnimConfigCommand$Type;

    return-object v0
.end method
