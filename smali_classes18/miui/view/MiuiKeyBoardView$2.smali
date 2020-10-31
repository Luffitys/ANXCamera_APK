.class Lmiui/view/MiuiKeyBoardView$2;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x0

    # invokes: Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V
    invoke-static {v0, v1}, Lmiui/view/MiuiKeyBoardView;->access$100(Lmiui/view/MiuiKeyBoardView;Z)V

    return-void
.end method
