.class Landroid/inputmethodservice/InputMethodGuidePopupView$2;
.super Ljava/lang/Object;
.source "InputMethodGuidePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InputMethodGuidePopupView;->show(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodGuidePopupView;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodGuidePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodGuidePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodGuidePopupView$2;->this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    :cond_10
    return-void
.end method
