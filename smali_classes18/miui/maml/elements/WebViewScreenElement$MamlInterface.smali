.class Lmiui/maml/elements/WebViewScreenElement$MamlInterface;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WebViewScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MamlInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/WebViewScreenElement;Lmiui/maml/elements/WebViewScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WebViewScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public getDouble(I)D
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getObj(I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    int-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
