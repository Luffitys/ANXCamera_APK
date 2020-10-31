.class Lmiui/maml/elements/VariableArrayElement$2;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/VariableArrayElement;

.field final synthetic val$vars:Lmiui/maml/data/Variables;


# direct methods
.method constructor <init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/VariableArrayElement$2;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iput-object p2, p0, Lmiui/maml/elements/VariableArrayElement$2;->val$vars:Lmiui/maml/data/Variables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement$2;->this$0:Lmiui/maml/elements/VariableArrayElement;

    # getter for: Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/maml/elements/VariableArrayElement;->access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/VariableArrayElement$Item;

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement$2;->this$0:Lmiui/maml/elements/VariableArrayElement;

    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement$2;->val$vars:Lmiui/maml/data/Variables;

    invoke-direct {v1, v2, v3, p1}, Lmiui/maml/elements/VariableArrayElement$Item;-><init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
