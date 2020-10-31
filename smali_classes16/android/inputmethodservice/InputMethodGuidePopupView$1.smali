.class Landroid/inputmethodservice/InputMethodGuidePopupView$1;
.super Ljava/lang/Object;
.source "InputMethodGuidePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodGuidePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodUtil;->sCanShowGuideView:Z

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodGuidePopupView$1;->this$0:Landroid/inputmethodservice/InputMethodGuidePopupView;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->dismiss()V

    return-void
.end method
