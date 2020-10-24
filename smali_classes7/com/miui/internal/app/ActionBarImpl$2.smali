.class Lcom/miui/internal/app/ActionBarImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/view/ActionModeImpl$ActionModeCallback;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/internal/app/ActionBarImpl;->animateToMode(Z)V

    iget-object p0, p0, Lcom/miui/internal/app/ActionBarImpl$2;->this$0:Lcom/miui/internal/app/ActionBarImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/internal/app/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method
