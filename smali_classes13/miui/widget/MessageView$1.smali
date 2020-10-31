.class Lmiui/widget/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MessageView;->addCloseIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MessageView;


# direct methods
.method constructor <init>(Lmiui/widget/MessageView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/MessageView$1;->this$0:Lmiui/widget/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/MessageView$1;->this$0:Lmiui/widget/MessageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/MessageView;->setVisibility(I)V

    return-void
.end method
