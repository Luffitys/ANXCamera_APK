.class Lcom/miui/internal/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ViewDragHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->this$0:Lcom/miui/internal/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/widget/ViewDragHelper$2;->this$0:Lcom/miui/internal/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method
