.class Lmiui/maml/ActionCommand$FolmeCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolmeCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$FolmeCommand$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeCommand"


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

.field private mConfig:Lmiui/maml/data/Expression;

.field private mIsParamsValid:Z

.field private mIsStatesValid:Z

.field private mParams:[Lmiui/maml/data/Expression;

.field private mStates:[Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FolmeCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "params"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mParams:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FolmeCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "states"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FolmeCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "config"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mConfig:Lmiui/maml/data/Expression;

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mParams:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$FolmeCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$FolmeCommand;->isExpressionsValid([Lmiui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5185d186

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_82

    const v2, -0x4b77203b

    if-eq v1, v2, :cond_78

    const/16 v2, 0xe7b

    if-eq v1, v2, :cond_6e

    const v2, 0x684367d

    if-eq v1, v2, :cond_64

    :cond_63
    goto :goto_8c

    :cond_64
    const-string v1, "setTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    move v1, v5

    goto :goto_8d

    :cond_6e
    const-string v1, "to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    const/4 v1, 0x0

    goto :goto_8d

    :cond_78
    const-string v1, "fromTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    move v1, v4

    goto :goto_8d

    :cond_82
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    move v1, v3

    goto :goto_8d

    :goto_8c
    const/4 v1, -0x1

    :goto_8d
    if-eqz v1, :cond_a9

    if-eq v1, v5, :cond_a4

    if-eq v1, v4, :cond_9f

    if-eq v1, v3, :cond_9a

    sget-object v1, Lmiui/maml/ActionCommand$FolmeCommand$Type;->INVALID:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_ae

    :cond_9a
    sget-object v1, Lmiui/maml/ActionCommand$FolmeCommand$Type;->CANCEL:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_ae

    :cond_9f
    sget-object v1, Lmiui/maml/ActionCommand$FolmeCommand$Type;->FROM_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_ae

    :cond_a4
    sget-object v1, Lmiui/maml/ActionCommand$FolmeCommand$Type;->SET_TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    goto :goto_ae

    :cond_a9
    sget-object v1, Lmiui/maml/ActionCommand$FolmeCommand$Type;->TO:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    iput-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    nop

    :goto_ae
    return-void
.end method

.method private folmeCancel(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsParamsValid:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mParams:[Lmiui/maml/data/Expression;

    invoke-virtual {p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->folmeCancel([Lmiui/maml/data/Expression;)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->folmeCancel([Lmiui/maml/data/Expression;)V

    :goto_e
    return-void
.end method

.method private folmeFromTo(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_26

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mConfig:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {p1, v0, v1, v2}, Lmiui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private folmeSetTo(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/elements/AnimatedScreenElement;->folmeSetTo(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private folmeTo(Lmiui/maml/elements/AnimatedScreenElement;)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mIsStatesValid:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mStates:[Lmiui/maml/data/Expression;

    array-length v1, v0

    if-lez v1, :cond_1d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mConfig:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->folmeTo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FolmeCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    instance-of v1, v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-nez v1, :cond_b

    goto :goto_36

    :cond_b
    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$FolmeCommand$Type:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$FolmeCommand;->mCommand:Lmiui/maml/ActionCommand$FolmeCommand$Type;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$FolmeCommand$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    const/4 v3, 0x4

    if-eq v2, v3, :cond_25

    goto :goto_35

    :cond_25
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$FolmeCommand;->folmeCancel(Lmiui/maml/elements/AnimatedScreenElement;)V

    goto :goto_35

    :cond_29
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$FolmeCommand;->folmeFromTo(Lmiui/maml/elements/AnimatedScreenElement;)V

    goto :goto_35

    :cond_2d
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$FolmeCommand;->folmeSetTo(Lmiui/maml/elements/AnimatedScreenElement;)V

    goto :goto_35

    :cond_31
    invoke-direct {p0, v1}, Lmiui/maml/ActionCommand$FolmeCommand;->folmeTo(Lmiui/maml/elements/AnimatedScreenElement;)V

    nop

    :goto_35
    return-void

    :cond_36
    :goto_36
    return-void
.end method
