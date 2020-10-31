.class public Landroid/inputmethodservice/InputMethodGuidePopupView;
.super Landroid/widget/PopupWindow;
.source "InputMethodGuidePopupView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTitleId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodGuidePopupView;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/inputmethodservice/InputMethodGuidePopupView;->mTitleId:I

    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;Z)V
    .registers 13

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodGuidePopupView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b001b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1109005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/inputmethodservice/InputMethodGuidePopupView$1;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/InputMethodGuidePopupView$1;-><init>(Landroid/inputmethodservice/InputMethodGuidePopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1109005d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodGuidePopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/inputmethodservice/InputMethodGuidePopupView;->mTitleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x11090048

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_5a

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5a
    const v5, 0x110700dd

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v5, 0x110f0008

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setAnimationStyle(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_99

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodGuidePopupView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/16 v6, 0x53

    sget v7, Landroid/inputmethodservice/InputMethodUtil;->sScreenWidth:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    sget v8, Landroid/inputmethodservice/InputMethodUtil;->sBottomAreaHeight:I

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/inputmethodservice/InputMethodGuidePopupView;->showAtLocation(Landroid/os/IBinder;III)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Landroid/inputmethodservice/InputMethodGuidePopupView$2;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/InputMethodGuidePopupView$2;-><init>(Landroid/inputmethodservice/InputMethodGuidePopupView;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_99
    return-void
.end method
