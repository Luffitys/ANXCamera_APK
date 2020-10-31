.class public Lmiui/maml/elements/VariableArrayElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/VariableArrayElement$Item;,
        Lmiui/maml/elements/VariableArrayElement$Var;,
        Lmiui/maml/elements/VariableArrayElement$VarObserver;,
        Lmiui/maml/elements/VariableArrayElement$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field mData:[Ljava/lang/Object;

.field private mItemCount:I

.field private mItemCountVar:Lmiui/maml/data/IndexedVariable;

.field mType:Lmiui/maml/elements/VariableArrayElement$Type;

.field mVarObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiui/maml/elements/VariableArrayElement$VarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    sget-object v0, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    if-eqz p1, :cond_78

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->STRING:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    goto :goto_35

    :cond_31
    sget-object v1, Lmiui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lmiui/maml/elements/VariableArrayElement$Type;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mType:Lmiui/maml/elements/VariableArrayElement$Type;

    :goto_35
    invoke-virtual {p0}, Lmiui/maml/elements/VariableArrayElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v2, "Vars"

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v3, Lmiui/maml/elements/VariableArrayElement$1;

    invoke-direct {v3, p0, v1}, Lmiui/maml/elements/VariableArrayElement$1;-><init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;)V

    const-string v4, "Var"

    invoke-static {v2, v4, v3}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    const-string v2, "Items"

    invoke-static {p1, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    new-instance v3, Lmiui/maml/elements/VariableArrayElement$2;

    invoke-direct {v3, p0, v1}, Lmiui/maml/elements/VariableArrayElement$2;-><init>(Lmiui/maml/elements/VariableArrayElement;Lmiui/maml/data/Variables;)V

    const-string v4, "Item"

    invoke-static {v2, v4, v3}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    iget-boolean v2, p0, Lmiui/maml/elements/VariableArrayElement;->mHasName:Z

    if-eqz v2, :cond_78

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/elements/VariableArrayElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/data/IndexedVariable;

    :cond_78
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected doTick(J)V
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->tick()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public getItemSize()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    return v0
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lmiui/maml/elements/VariableArrayElement$Var;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCountVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_2a

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_2a
    iget-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    if-nez v1, :cond_4a

    iget v1, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_35
    iget v2, p0, Lmiui/maml/elements/VariableArrayElement;->mItemCount:I

    if-ge v1, v2, :cond_4a

    iget-object v2, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    iget-object v3, p0, Lmiui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/VariableArrayElement$Item;

    iget-object v3, v3, Lmiui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4a
    return-void
.end method

.method public registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_10

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    goto :goto_15

    :cond_10
    iget-object v0, p0, Lmiui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_15
    return-void
.end method
