.class Lmiui/widget/GuidePopupWindow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ArrowPopupWindow;->dismiss(Z)V

    return-void
.end method
