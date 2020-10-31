.class Lmiui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 6

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v1, v0, p1}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v2, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-nez v2, :cond_23

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    :cond_23
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v2, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method
