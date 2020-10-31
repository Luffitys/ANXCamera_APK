.class Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->onBuild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/MamlConfigSettings$ValueChoiceItem;


# direct methods
.method constructor <init>(Lmiui/maml/MamlConfigSettings$ValueChoiceItem;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;->this$1:Lmiui/maml/MamlConfigSettings$ValueChoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;->this$1:Lmiui/maml/MamlConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    const-string v1, "text"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem$1;->this$1:Lmiui/maml/MamlConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lmiui/maml/MamlConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    const-string v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
