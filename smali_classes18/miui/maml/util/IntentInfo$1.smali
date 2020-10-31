.class Lmiui/maml/util/IntentInfo$1;
.super Ljava/lang/Object;
.source "IntentInfo.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/util/IntentInfo;


# direct methods
.method constructor <init>(Lmiui/maml/util/IntentInfo;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/util/IntentInfo$1;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/util/IntentInfo$1;->this$0:Lmiui/maml/util/IntentInfo;

    # getter for: Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiui/maml/util/IntentInfo;->access$100(Lmiui/maml/util/IntentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lmiui/maml/util/IntentInfo$Extra;

    iget-object v2, p0, Lmiui/maml/util/IntentInfo$1;->this$0:Lmiui/maml/util/IntentInfo;

    invoke-direct {v1, v2, p1}, Lmiui/maml/util/IntentInfo$Extra;-><init>(Lmiui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
