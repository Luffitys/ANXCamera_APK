.class public final enum Lmiui/maml/ActionCommand$TargetCommand$TargetType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand$TargetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/ActionCommand$TargetCommand$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "SCREEN_ELEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "CONSTRUCTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "ANIMATION_ITEM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "VARIABLE_BINDER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v1, 0x5

    new-array v1, v1, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    sget-object v7, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v7, v1, v2

    sget-object v2, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v2, v1, v3

    sget-object v2, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v2, v1, v4

    sget-object v2, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

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

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .registers 2

    const-class v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    .registers 1

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v0}, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method
