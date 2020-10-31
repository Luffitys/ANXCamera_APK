.class public Landroid/view/ViewStub$ViewReplaceRunnable;
.super Ljava/lang/Object;
.source "ViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewReplaceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewStub;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewStub;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    iget-object v1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    # invokes: Landroid/view/ViewStub;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Landroid/view/ViewStub;->access$000(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
