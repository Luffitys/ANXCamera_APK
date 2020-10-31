.class Lmiui/maml/elements/ScreenElementArray$1;
.super Ljava/lang/Object;
.source "ScreenElementArray.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ScreenElementArray;

.field final synthetic val$_root:Lmiui/maml/ScreenElementRoot;

.field final synthetic val$count:I

.field final synthetic val$indexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ScreenElementArray;ILmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    iput p2, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$count:I

    iput-object p3, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$_root:Lmiui/maml/ScreenElementRoot;

    iput-object p4, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$indexVar:Lmiui/maml/data/IndexedVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    const-string v2, "name"

    invoke-virtual {v1, p1, v2}, Lmiui/maml/elements/ScreenElementArray;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Var"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    :goto_14
    iget v5, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$count:I

    if-ge v4, v5, :cond_5d

    if-eqz v3, :cond_22

    const-string v5, "dontAddToMap"

    const-string v6, "true"

    invoke-interface {p1, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "namesSuffix"

    invoke-interface {p1, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    iget-object v5, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    # invokes: Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    invoke-static {v5, p1}, Lmiui/maml/elements/ScreenElementArray;->access$001(Lmiui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    if-eqz v5, :cond_5a

    if-nez v0, :cond_57

    iget-object v6, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$_root:Lmiui/maml/ScreenElementRoot;

    iget-object v7, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$indexVar:Lmiui/maml/data/IndexedVariable;

    invoke-static {v6, v7}, Lmiui/maml/elements/ElementGroup;->createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->setName(Ljava/lang/String;)V

    iget-object v6, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    invoke-virtual {v6, v0}, Lmiui/maml/elements/ScreenElementArray;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_57
    invoke-virtual {v0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_5d
    return-void
.end method
