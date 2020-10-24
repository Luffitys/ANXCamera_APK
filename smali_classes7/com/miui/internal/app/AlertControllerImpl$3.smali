.class Lcom/miui/internal/app/AlertControllerImpl$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/AlertControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/app/AlertControllerImpl$3;->this$0:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-static {p0}, Lcom/miui/internal/app/AlertControllerImpl;->access$600(Lcom/miui/internal/app/AlertControllerImpl;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
