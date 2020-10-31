.class public Lmiui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public mList:Lmiui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lmiui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p3, p0, Lmiui/maml/elements/ListScreenElement$Column;->mList:Lmiui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lmiui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    :cond_c
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 3

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$Column$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/ListScreenElement$Column$1;-><init>(Lmiui/maml/elements/ListScreenElement$Column;)V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    :cond_a
    return-void
.end method

.method public init()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lmiui/maml/elements/VariableArrayElement;

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    goto :goto_2f

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find VarArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListScreenElement"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    return-void
.end method
