.class Lmiui/maml/ActionCommand$FunctionPerformCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FunctionCommand"


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$FunctionPerformCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FunctionPerformCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    instance-of v1, v0, Lmiui/maml/elements/FunctionElement;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/FunctionElement;

    invoke-virtual {v1}, Lmiui/maml/elements/FunctionElement;->perform()V

    :cond_10
    return-void
.end method
