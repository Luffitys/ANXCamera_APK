.class Lmiui/maml/component/MamlView$1;
.super Ljava/lang/Object;
.source "MamlView.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlView;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiui/maml/component/MamlView;->access$000(Lmiui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/maml/component/MamlView$1;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiui/maml/component/MamlView;->access$000(Lmiui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/component/MamlView$OnExternCommandListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/component/MamlView$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
