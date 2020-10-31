.class Lmiui/maml/elements/FunctionElement$1;
.super Ljava/lang/Object;
.source "FunctionElement.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/FunctionElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/FunctionElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/FunctionElement$1;->this$0:Lmiui/maml/elements/FunctionElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/FunctionElement$1;->this$0:Lmiui/maml/elements/FunctionElement;

    invoke-static {p1, v0}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lmiui/maml/elements/FunctionElement$1;->this$0:Lmiui/maml/elements/FunctionElement;

    # getter for: Lmiui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/maml/elements/FunctionElement;->access$000(Lmiui/maml/elements/FunctionElement;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method
