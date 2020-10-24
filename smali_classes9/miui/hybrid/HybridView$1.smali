.class Lmiui/hybrid/HybridView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/hybrid/HybridView;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridView;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->reload()V

    iget-object p0, p0, Lmiui/hybrid/HybridView$1;->this$0:Lmiui/hybrid/HybridView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lmiui/hybrid/HybridView;->access$000(Lmiui/hybrid/HybridView;I)V

    return-void
.end method
