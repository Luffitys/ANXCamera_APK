.class Lmiui/maml/ActionCommand$VariableBinderCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lmiui/maml/data/VariableBinder;

.field private mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    sget-object v0, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string v0, "name"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    :cond_21
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    if-eqz v0, :cond_17

    sget-object v0, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lmiui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_17

    :cond_12
    iget-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->refresh()V

    :cond_17
    :goto_17
    return-void
.end method

.method public init()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lmiui/maml/data/VariableBinder;

    return-void
.end method
