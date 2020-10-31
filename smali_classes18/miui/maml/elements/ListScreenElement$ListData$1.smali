.class Lmiui/maml/elements/ListScreenElement$ListData$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ListScreenElement$ListData;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ListScreenElement$ListData;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$ListData$1;->this$0:Lmiui/maml/elements/ListScreenElement$ListData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListData$1;->this$0:Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v0, v0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    new-instance v1, Lmiui/maml/elements/ListScreenElement$Column;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$ListData$1;->this$0:Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v2, v2, Lmiui/maml/elements/ListScreenElement$ListData;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement$ListData$1;->this$0:Lmiui/maml/elements/ListScreenElement$ListData;

    iget-object v3, v3, Lmiui/maml/elements/ListScreenElement$ListData;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-direct {v1, p1, v2, v3}, Lmiui/maml/elements/ListScreenElement$Column;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
