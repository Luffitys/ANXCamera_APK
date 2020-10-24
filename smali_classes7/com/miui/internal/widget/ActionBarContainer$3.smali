.class Lcom/miui/internal/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$3;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/miui/internal/widget/ActionBarContainer$3;->this$0:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    return-void
.end method
