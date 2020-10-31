.class public Lmiui/maml/StylesManager;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/StylesManager$Style;
    }
.end annotation


# instance fields
.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/maml/StylesManager$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    new-instance v0, Lmiui/maml/StylesManager$1;

    invoke-direct {v0, p0}, Lmiui/maml/StylesManager$1;-><init>(Lmiui/maml/StylesManager;)V

    const-string v1, "Style"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/StylesManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;
    .registers 3

    iget-object v0, p0, Lmiui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/StylesManager$Style;

    return-object v0
.end method
