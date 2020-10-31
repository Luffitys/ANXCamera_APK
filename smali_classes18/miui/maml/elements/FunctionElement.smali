.class public Lmiui/maml/elements/FunctionElement;
.super Lmiui/maml/elements/ScreenElement;
.source "FunctionElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Function"


# instance fields
.field private enable:Z

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/FunctionElement;->enable:Z

    invoke-direct {p0, p1}, Lmiui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/FunctionElement;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-instance v1, Lmiui/maml/elements/FunctionElement$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/FunctionElement$1;-><init>(Lmiui/maml/elements/FunctionElement;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public perform()V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/FunctionElement;->enable:Z

    if-eqz v0, :cond_3c

    :try_start_4
    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->perform()V
    :try_end_19
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_19} :catch_1b

    goto :goto_a

    :cond_1a
    goto :goto_3c

    :catch_1b
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/FunctionElement;->enable:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/FunctionElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Function"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public resume()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/ActionCommand;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_9

    :cond_19
    return-void
.end method
