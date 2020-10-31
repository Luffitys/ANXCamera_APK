.class Lmiui/hybrid/HybridView$1;
.super Ljava/lang/Object;
.source "HybridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridView;->showReloadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/hybrid/HybridView;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridView;)V
    .registers 2

    iput-object p1, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    invoke-virtual {v0}, Lmiui/hybrid/HybridView;->reload()V

    iget-object v0, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    const/16 v1, 0x8

    # invokes: Lmiui/hybrid/HybridView;->setReloadContentVisibility(I)V
    invoke-static {v0, v1}, Lmiui/hybrid/HybridView;->access$000(Lmiui/hybrid/HybridView;I)V

    return-void
.end method
