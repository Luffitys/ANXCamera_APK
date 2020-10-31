.class Lmiui/maml/StylesManager$1;
.super Ljava/lang/Object;
.source "StylesManager.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/StylesManager;


# direct methods
.method constructor <init>(Lmiui/maml/StylesManager;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/StylesManager$1;->this$0:Lmiui/maml/StylesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 5

    new-instance v0, Lmiui/maml/StylesManager$Style;

    iget-object v1, p0, Lmiui/maml/StylesManager$1;->this$0:Lmiui/maml/StylesManager;

    invoke-direct {v0, v1, p1}, Lmiui/maml/StylesManager$Style;-><init>(Lmiui/maml/StylesManager;Lorg/w3c/dom/Element;)V

    iget-object v1, p0, Lmiui/maml/StylesManager$1;->this$0:Lmiui/maml/StylesManager;

    # getter for: Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;
    invoke-static {v1}, Lmiui/maml/StylesManager;->access$000(Lmiui/maml/StylesManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, v0, Lmiui/maml/StylesManager$Style;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
