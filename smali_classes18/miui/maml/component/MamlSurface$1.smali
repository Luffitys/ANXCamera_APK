.class Lmiui/maml/component/MamlSurface$1;
.super Ljava/lang/Object;
.source "MamlSurface.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlSurface;


# direct methods
.method constructor <init>(Lmiui/maml/component/MamlSurface;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/component/MamlSurface$1;->this$0:Lmiui/maml/component/MamlSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/component/MamlSurface$1;->this$0:Lmiui/maml/component/MamlSurface;

    # getter for: Lmiui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiui/maml/component/MamlSurface;->access$000(Lmiui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmiui/maml/component/MamlSurface$1;->this$0:Lmiui/maml/component/MamlSurface;

    # getter for: Lmiui/maml/component/MamlSurface;->mExternCommandListener:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiui/maml/component/MamlSurface;->access$000(Lmiui/maml/component/MamlSurface;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/component/MamlSurface$OnExternCommandListener;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2, p3}, Lmiui/maml/component/MamlSurface$OnExternCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_19
    return-void
.end method
