.class Lmiui/widget/MessageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/MessageView;


# direct methods
.method constructor <init>(Lmiui/widget/MessageView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/MessageView$1;->this$0:Lmiui/widget/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/MessageView$1;->this$0:Lmiui/widget/MessageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
