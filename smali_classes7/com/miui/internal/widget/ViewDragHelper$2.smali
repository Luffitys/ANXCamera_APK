.class Lcom/miui/internal/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ViewDragHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->this$0:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->this$0:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method
