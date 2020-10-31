.class Lmiui/maml/data/VariableBinder$1;
.super Ljava/lang/Object;
.source "VariableBinder.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/VariableBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/VariableBinder;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/data/VariableBinder$1;->this$0:Lmiui/maml/data/VariableBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$1;->this$0:Lmiui/maml/data/VariableBinder;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$1;->this$0:Lmiui/maml/data/VariableBinder;

    iget-object v1, v1, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method
