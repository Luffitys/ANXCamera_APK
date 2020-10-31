.class Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;
.super Landroid/widget/PopupWindow;
.source "InputMethodClipboardCheckMoreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;
    }
.end annotation


# instance fields
.field private mCheckMoreListener:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;

.field private mContext:Landroid/content/Context;

.field private mIsLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mIsLeft:Z

    return-void
.end method


# virtual methods
.method public initPopupWindow(Landroid/view/View;)V
    .registers 11

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setHeight(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x110b0019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x11090040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1109003f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mIsLeft:Z

    if-nez v5, :cond_54

    const v5, 0x800055

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    const v6, 0x1106004c

    invoke-static {v5, v6}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->getDimenPx(Landroid/content/Context;I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v5, 0x110f000b

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setAnimationStyle(I)V

    goto :goto_74

    :cond_54
    const v5, 0x800053

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    const v6, 0x1106004b

    invoke-static {v5, v6}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->getDimenPx(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    const v7, 0x11060048

    invoke-static {v6, v7}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->getDimenPx(Landroid/content/Context;I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const v5, 0x110f000a

    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setAnimationStyle(I)V

    :goto_74
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/inputmethodservice/InputMethodUtil;->getCheckMoreViewBottomMargin(Landroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v5, 0x1109003c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x1109003e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x1109003d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v1, v8}, Landroid/inputmethodservice/InputMethodPopupWindowHelper;->changeWindowBackground(Landroid/view/View;F)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v8, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$1;

    invoke-direct {v8, p0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$1;-><init>(Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    :pswitch_7
    goto :goto_23

    :pswitch_8
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->dismiss()V

    goto :goto_23

    :pswitch_c
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mCheckMoreListener:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;->onInsertToPhrase()V

    goto :goto_23

    :pswitch_14
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mCheckMoreListener:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;->onClickDelete()V

    goto :goto_23

    :pswitch_1c
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mCheckMoreListener:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;->onClickCopy()V

    :cond_23
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1109003c
        :pswitch_1c
        :pswitch_14
        :pswitch_c
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setCheckMoreListener(Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InputMethodClipboardCheckMoreView;->mCheckMoreListener:Landroid/inputmethodservice/InputMethodClipboardCheckMoreView$CheckMoreListener;

    return-void
.end method
