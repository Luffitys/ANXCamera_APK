.class abstract Lmiui/maml/ActionCommand$StatefulActionCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method
