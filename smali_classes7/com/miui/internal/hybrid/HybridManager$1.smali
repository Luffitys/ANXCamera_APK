.class Lcom/miui/internal/hybrid/HybridManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->access$002(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/internal/hybrid/HybridManager;->access$002(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    return-void
.end method
