.class Lmiui/widget/GuidePopupWindow$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/GuidePopupWindow;->dismiss(Z)V

    return-void
.end method
