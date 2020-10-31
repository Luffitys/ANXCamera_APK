.class Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InputMethodSwitchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodSwitchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field firstLineView:Landroid/widget/LinearLayout;

.field itemLayout:Landroid/widget/LinearLayout;

.field selectedImage:Landroid/widget/ImageView;

.field textItem:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodSwitchAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodSwitchAdapter$ViewHolder;->this$0:Landroid/inputmethodservice/InputMethodSwitchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
