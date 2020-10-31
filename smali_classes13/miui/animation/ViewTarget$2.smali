.class Lmiui/animation/ViewTarget$2;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/animation/ViewTarget;->executeOnInitialized(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/ViewTarget;

.field final synthetic val$task:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lmiui/animation/ViewTarget$2;->this$0:Lmiui/animation/ViewTarget;

    iput-object p2, p0, Lmiui/animation/ViewTarget$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lmiui/animation/ViewTarget$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lmiui/animation/ViewTarget$2;->this$0:Lmiui/animation/ViewTarget;

    iget-object v1, p0, Lmiui/animation/ViewTarget$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lmiui/animation/ViewTarget$2;->val$task:Ljava/lang/Runnable;

    # invokes: Lmiui/animation/ViewTarget;->initLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lmiui/animation/ViewTarget;->access$100(Lmiui/animation/ViewTarget;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
