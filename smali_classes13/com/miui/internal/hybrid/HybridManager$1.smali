.class Lcom/miui/internal/hybrid/HybridManager$1;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/hybrid/HybridManager;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method constructor <init>(Lcom/miui/internal/hybrid/HybridManager;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z
    invoke-static {v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->access$002(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$1;->this$0:Lcom/miui/internal/hybrid/HybridManager;

    const/4 v1, 0x1

    # setter for: Lcom/miui/internal/hybrid/HybridManager;->mDetached:Z
    invoke-static {v0, v1}, Lcom/miui/internal/hybrid/HybridManager;->access$002(Lcom/miui/internal/hybrid/HybridManager;Z)Z

    return-void
.end method
