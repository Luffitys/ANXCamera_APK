.class Lmiui/maml/animation/BaseAnimation$1;
.super Ljava/lang/Object;
.source "BaseAnimation.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/animation/BaseAnimation;


# direct methods
.method constructor <init>(Lmiui/maml/animation/BaseAnimation;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/animation/BaseAnimation$1;->this$0:Lmiui/maml/animation/BaseAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/animation/BaseAnimation$1;->this$0:Lmiui/maml/animation/BaseAnimation;

    iget-object v0, v0, Lmiui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/maml/animation/BaseAnimation$1;->this$0:Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v1, v1, p1}, Lmiui/maml/animation/BaseAnimation;->onCreateItem(Lmiui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
