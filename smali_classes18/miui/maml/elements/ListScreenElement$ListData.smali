.class public Lmiui/maml/elements/ListScreenElement$ListData;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListData"
.end annotation


# instance fields
.field public mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/ListScreenElement$Column;",
            ">;"
        }
    .end annotation
.end field

.field public mList:Lmiui/maml/elements/ListScreenElement;

.field public mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p3, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mList:Lmiui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_13

    invoke-direct {p0, p1}, Lmiui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V

    :cond_13
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/ListScreenElement$ListData$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/ListScreenElement$ListData$1;-><init>(Lmiui/maml/elements/ListScreenElement$ListData;)V

    const-string v1, "Column"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$Column;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$Column;->finish()V

    :cond_17
    goto :goto_6

    :cond_18
    return-void
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$Column;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lmiui/maml/elements/ListScreenElement$Column;->init()V

    :cond_17
    goto :goto_6

    :cond_18
    return-void
.end method
