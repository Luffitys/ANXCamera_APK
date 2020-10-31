.class Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InputMethodPhraseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodPhraseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field firstLineView:Landroid/widget/LinearLayout;

.field itemLayout:Landroid/widget/LinearLayout;

.field textItem:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodPhraseAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodPhraseAdapter$ViewHolder;->this$0:Landroid/inputmethodservice/InputMethodPhraseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
