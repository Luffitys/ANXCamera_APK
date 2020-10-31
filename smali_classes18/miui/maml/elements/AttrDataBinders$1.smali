.class Lmiui/maml/elements/AttrDataBinders$1;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AttrDataBinders;


# direct methods
.method constructor <init>(Lmiui/maml/elements/AttrDataBinders;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    # getter for: Lmiui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/maml/elements/AttrDataBinders;->access$000(Lmiui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$1;->this$0:Lmiui/maml/elements/AttrDataBinders;

    iget-object v2, v2, Lmiui/maml/elements/AttrDataBinders;->mVars:Lmiui/maml/data/ContextVariables;

    invoke-direct {v1, p1, v2}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AttrDataBinders"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method
