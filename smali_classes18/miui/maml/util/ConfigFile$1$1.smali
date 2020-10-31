.class Lmiui/maml/util/ConfigFile$1$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile$1;->onChild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/util/ConfigFile$1;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile$1;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "default"

    if-eqz v2, :cond_21

    iget-object v2, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v2, v2, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_21
    const-string v2, "CheckBox"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v2, v2, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3c

    :cond_3a
    const-string v4, "0"

    :goto_3c
    invoke-virtual {v2, v1, v4}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_40
    const-string v2, "NumberInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5a

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_5a
    const-string v2, "StringChoice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v2, v2, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lmiui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_6e
    const-string v2, "NumberChoice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v4, v4, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    :cond_87
    const-string v2, "AppPicker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lmiui/maml/util/ConfigFile$1$1;->this$1:Lmiui/maml/util/ConfigFile$1;

    iget-object v2, v2, Lmiui/maml/util/ConfigFile$1;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/util/ConfigFile;->putTask(Lmiui/maml/util/Task;)V

    goto :goto_9c

    :cond_9b
    :goto_9b
    nop

    :goto_9c
    return-void
.end method
