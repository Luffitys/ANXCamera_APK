.class Lmiui/maml/util/ConfigFile$4;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lmiui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/util/ConfigFile;


# direct methods
.method constructor <init>(Lmiui/maml/util/ConfigFile;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .registers 8

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lmiui/maml/util/ConfigFile$4;->this$0:Lmiui/maml/util/ConfigFile;

    new-instance v1, Lmiui/maml/util/ConfigFile$Gadget;

    const-string v2, "path"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "y"

    invoke-static {p1, v5, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V

    :cond_1f
    return-void
.end method
