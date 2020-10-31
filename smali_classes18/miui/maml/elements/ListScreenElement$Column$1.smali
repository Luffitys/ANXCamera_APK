.class Lmiui/maml/elements/ListScreenElement$Column$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/VariableArrayElement$VarObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ListScreenElement$Column;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ListScreenElement$Column;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChange([Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    iget-object v0, v0, Lmiui/maml/elements/ListScreenElement$Column;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    iget-object v1, v1, Lmiui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    # invokes: Lmiui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lmiui/maml/elements/ListScreenElement;->access$700(Lmiui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
